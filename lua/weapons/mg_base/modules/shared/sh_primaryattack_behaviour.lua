AddCSLuaFile()

function SWEP:CanAttack()
    if (self.Animations["Rechamber"] != nil && self:GetIsReloading() && !self:IsCustomizing()) then
        return true
    end

    if (self.Animations["Rechamber"] != nil && !self:GetHasPumped()) then
        return false
    end

    if (self:Clip1() <= 0) then
        return false
    end

    if (self:IsCustomizing()) then
        return
    end

    if (CurTime() < self:GetNextPrimaryFire()) then
        return false
    end

    if (CurTime() < self:GetNextFiremodeTime()) then
        return false
    end

    if (self:GetOwner():KeyDown(IN_USE)) then
        return false
    end

    if (self:GetIsReloading() || self:GetIsHolstering() || self:IsDrawing() || self:GetIsSprinting()) then
        return false
    end

    if (CurTime() < self:GetNextMeleeTime()) then
        return false
    end

    if (CurTime() < self:GetNextSprintTime()) then
        return false
    end

    if (CurTime() < self:GetNextReloadTime() && self:GetHasFilledMag()) then --avoid people from shooting after they canceled their reloads
        return false
    end

    if (self.Trigger && self:GetTriggerDelta() < 1) then
        return false
    end

    return true
end

function SWEP:CalculateRecoil()
    math.randomseed(self.Recoil.Seed + self:GetSprayRounds())

    local verticalRecoil = math.min(self:GetSprayRounds(), math.min(self:GetMaxClip1() * 0.33, 20)) * 0.1 + math.Rand(self.Recoil.Vertical[1], self.Recoil.Vertical[2]) * GetConVar("mgbase_sv_recoil"):GetFloat()
    local horizontalRecoil = math.Rand(self.Recoil.Horizontal[1], self.Recoil.Horizontal[2]) * GetConVar("mgbase_sv_recoil"):GetFloat()
    local angles = Angle(-verticalRecoil, horizontalRecoil, horizontalRecoil * -0.3)

    return angles * Lerp(self:GetAimDelta(), 1, self.Recoil.AdsMultiplier)
end

function SWEP:CalculateCone()
    math.randomseed(self.Cone.Seed + self:Clip1() + self:Ammo1())
    return math.Clamp(math.Rand(-self:GetCone(), self:GetCone()) * 1000, -self:GetCone(), self:GetCone())

    --local verticalCone = math.random(self.Cone.Vertical[1], self.Recoil.Vertical[2])
    --local horizontalRecoil = math.random(self.Recoil.Horizontal[1], self.Recoil.Horizontal[2])
    --local angles = Angle(verticalRecoil, horizontalRecoil, horizontalRecoil * -0.3)

    --return angles * Lerp(1, self.Recoil.AdsMultiplier, self:GetAimDelta())
end

function SWEP:MetersToHU(meters)
    return (meters * 100) / 2.54
end

SWEP.FireSurfaces = {
    MAT_ANTLION, MAT_BLOODYFLESH, MAT_EGGSHELL, MAT_FLESH, MAT_ALIENFLESH, MAT_PLASTIC, MAT_FOLIAGE, MAT_SLOSH, MAT_GRASS, MAT_WOOD, MAT_DIRT
}

function SWEP:MakeLight(pos, color, brightness, dieTime)
    if (SERVER && game.SinglePlayer()) then
        local args = "Vector("..pos.x..", "..pos.y..", "..pos.z.."), Color("..color.r..", "..color.g..", "..color.b.."), "..brightness..", "..dieTime
        self:GetOwner():SendLua("Entity("..self:EntIndex().."):MakeLight("..args..")")
    end

    if (CLIENT) then
        local dlight = DynamicLight(-1)
        if (dlight) then
            dlight.pos = pos
            dlight.r = color.r
            dlight.g = color.g
            dlight.b = color.b
            dlight.brightness = brightness
            dlight.Decay = 1000
            dlight.Size = 256
            dlight.DieTime = dieTime
        end
    end
end

function SWEP:BulletCallbackInternal(attacker, tr, dmgInfo)
    local dist = tr.HitPos:Distance(self:GetOwner():GetShootPos())
    local effectiveRange = self:MetersToHU(self.Bullet.EffectiveRange)
    local dropoffStart = self.Bullet.DropOffStartRange && self:MetersToHU(self.Bullet.DropOffStartRange) || 0
    
    local damage = Lerp(math.Clamp((dist - dropoffStart) / effectiveRange, 0, 1), self.Bullet.Damage[1], self.Bullet.Damage[2])
    damage = math.max(damage / self.Bullet.NumBullets, 1)

    local pen = self.Bullet.Penetration

    if (SERVER && GetConVar("mgbase_debug_range"):GetInt() > 0) then
        local original = weapons.Get(self:GetClass())
        if (self.Bullet.EffectiveRange != original.Bullet.EffectiveRange
            || self.Bullet.Damage[1] != original.Bullet.Damage[1]
            || self.Bullet.Damage[2] != original.Bullet.Damage[2]) then
            debugoverlay.EntityTextAtPosition(tr.HitPos, 0, "You have attachments that modify range values!", 5, Color(255, 100, 50, 255))
        end
        debugoverlay.EntityTextAtPosition(tr.HitPos, 1, math.Round(dist - dropoffStart).." / "..math.Round(effectiveRange).." units ("..self.Bullet.EffectiveRange.."m)", 5, Color(0, 200, 50, 255))
        debugoverlay.EntityTextAtPosition(tr.HitPos, 2, math.floor(damage).." damage (raw)", 5, Color(255, 200, 0, 255))
    end

    if (self.Bullet.NumBullets > 1 || self.Projectile != nil || self:Clip1() % 2 != 0) then --every second bullet will penetrate, this is to save on cpu time
        pen = nil
    end

    if (pen != nil) then
        if (self:GetPenetrationCount() < pen.MaxCount) then
            local mul = pen.DamageMultiplier
            local c = pen.MaxCount - self:GetPenetrationCount()

            while (c > 0) do
                mul = mul * pen.DamageMultiplier
                c = c - 1
            end

            damage = damage * mul
        end
    end

    if (tr.Entity:IsPlayer()) then
        damage = damage * GetConVar("mgbase_sv_pvpdamage"):GetFloat()
    elseif (tr.Entity:IsNPC() || tr.Entity:IsNextBot()) then
        damage = damage * GetConVar("mgbase_sv_pvedamage"):GetFloat()
    end

    dmgInfo:SetDamage(damage + 1)
    
    if (tr.Entity == self.lastHitEntity && (tr.Entity:IsPlayer() || tr.Entity:IsNPC())) then --if we are penetrating something again (bad coz we apply double damage this way)
        dmgInfo:SetDamage(0)
    end

    if (pen != nil) then
        self.lastHitEntity = tr.Entity
    end

    if (self.Projectile == nil) then
        dmgInfo:SetDamageType(DMG_BULLET)
    end

    dmgInfo:SetDamageForce(tr.Normal * (self.Bullet.Damage[2] * self.Bullet.PhysicsMultiplier * 200))

    local bInWater = bit.band(util.PointContents(tr.HitPos), CONTENTS_WATER) == CONTENTS_WATER

    if (!bInWater) then
        --TODO
        --[[if (self:HasAttachment("sh_db")) then
            if (SERVER && table.HasValue(self.FireSurfaces, tr.MatType)) then
                tr.Entity:Ignite(2)
            end
            ParticleEffect("AC_muzzle_shotgun_db", tr.HitPos, tr.HitNormal:Angle())
            util.Decal("Dark", tr.HitPos + tr.HitNormal, tr.HitPos - (tr.HitNormal * 3), {self, self:GetOwner()})
            dmgInfo:SetDamageType(dmgInfo:GetDamageType() + DMG_BURN + DMG_SLOWBURN)
            self:MakeLight(tr.HitPos, Color(255, 50, 0), 2, CurTime() + 1)
        elseif (self:HasAttachment("sh_he")) then
            if (SERVER) then
                util.BlastDamage(self, self:GetOwner(), tr.HitPos, 32, self.Bullet.Damage[1] / self.Bullet.NumBullets)
            end
            ParticleEffect("AC_muzzle_shotgun", tr.HitPos, tr.HitNormal:Angle())
            util.Decal("FadingScorch", tr.HitPos + tr.HitNormal, tr.HitPos - (tr.HitNormal * 3), {self, self:GetOwner()})
            sound.Play("MW.ExplosiveRounds", tr.HitPos, SNDLVL_100dB, 100, 1)
            dmgInfo:SetDamageType(dmgInfo:GetDamageType() + DMG_BLAST + DMG_AIRBOAT + DMG_ALWAYSGIB)
            self:MakeLight(tr.HitPos, Color(255, 150, 0), 1, CurTime() + 0.5)
        end]]
    end

    if (damage <= 1.9 || tr.HitTexture == "**displacement**" || bInWater) then
        return
    end
    
    if (pen != nil && self:GetPenetrationCount() > 0) then

        if (tr.HitNoDraw || tr.HitSky) then
            return
        end

        local output = {}
        local dir = tr.Normal
        local start = tr.HitPos

        if (IsFirstTimePredicted()) then
            util.TraceLine({
                start = tr.HitPos + tr.Normal,
                endpos = tr.HitPos + tr.Normal * pen.Thickness,
                mask = MASK_SHOT,
                filter = {tr.Entity},
                ignoreworld = !IsValid(tr.Entity),
                output = output
            })

            util.TraceLine({
                start = output.HitPos,
                endpos = tr.HitPos,
                mask = MASK_SHOT,
                output = output
            })
        end
        
        if (output != nil && !output.StartSolid && !output.HitNoDraw && !output.HitSky) then
            self:SetPenetrationCount(self:GetPenetrationCount() - 1)

            --fire back to the wall to make hole
            self:FireBullets({
                Attacker = self:GetOwner(),
                Src = output.StartPos,
                Dir = -tr.Normal,
                Num = 1,
                Tracer = 0,
                Damage = 0
            })

            --fire forward
            self:FireBullets({
                Attacker = self:GetOwner(),
                Src = output.HitPos,
                Dir = tr.Normal,
                Num = 1,
                Tracer = 0,
                Callback = function(attacker, tr, dmgInfo)
                    self:BulletCallback(attacker, tr, dmgInfo)
                end
            })
        end
    end
end

function SWEP:BulletCallback(attacker, tr, dmgInfo)
    self:BulletCallbackInternal(attacker, tr, dmgInfo)
end

function SWEP:Bullets(hitpos)
    self.lastHitEntity = NULL
    self:SetPenetrationCount(self.Bullet.Penetration != nil && self.Bullet.Penetration.MaxCount || 0)

    local spread = Vector(self:CalculateCone(), -self:CalculateCone()) * 0.1

    if (self.Bullet.NumBullets == 1) then
        spread = LerpVector(self:GetAimDelta(), Vector(self:CalculateCone(), -self:CalculateCone()) * 0.1, Vector(0, 0))
    end

    local dir = (self:GetOwner():EyeAngles() + self:GetOwner():GetViewPunchAngles() + self:GetBreathingAngle()):Forward()

    if (hitpos != nil && isvector(hitpos)) then
        dir = (hitpos - self:GetOwner():EyePos()):GetNormalized()
        spread = Vector()
    end
    
    self:FireBullets({
        Attacker = self:GetOwner(),
        Src = self:GetOwner():EyePos(),
        Dir = dir,
        Spread = spread,
        Num = self.Bullet.NumBullets,
        Damage = self.Bullet.Damage[1], --for some fucking bullet mod or something idk
        HullSize = self:GetAimDelta() > 0.5 && 1 || 0,
        --Force = (self.Bullet.Damage[1] * self.Bullet.PhysicsMultiplier) * 0.01,
        Distance = self:MetersToHU(self.Bullet.Range),
        Tracer = self.Bullet.Tracer && 1 || 0,
        Callback = function(attacker, tr, dmgInfo)
            self:BulletCallback(attacker, tr, dmgInfo, bFromServer)
        end
    })
end

function SWEP:PrimaryAttack()
    self:SetSafety(false)

    if (!self:CanAttack()) then
        return
    end

    if (self:GetIsReloading()) then
        self:EndReload()
        return
    end

    if (self.Animations.Rechamber || self:Clip1() <= 1) then
        self:SetHasPumped(false)

        if (self:Clip1() <= 1 && self.ReloadRechambers) then
            self:SetHasPumped(true)
        end
    end

    self:SetClip1(self:Clip1() - 1)
    self:SetSprayRounds(self:GetSprayRounds() + 1)

    --self:GetOwner():DoCustomAnimEvent(PLAYERANIMEVENT_ATTACK_PRIMARY, 0)
    self:PlayerGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, self.HoldTypes[self.HoldType].Attack)

    local seqIndex = "Fire"

    if (self:Clip1() <= 0 && self.Animations["Fire_Last"] != nil) then
        seqIndex = "Fire_Last"
    end
    
    if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(seqIndex) end

    self:SetNextPrimaryFire(CurTime() + (60 / self.Primary.RPM))
    self:SetBurstRounds(self:GetBurstRounds() + 1)

    if (self:GetBurstRounds() >= self.Primary.BurstRounds && self.Primary.BurstRounds > 1) then
        self:SetNextPrimaryFire(CurTime() + self.Primary.BurstDelay)
        self:SetBurstRounds(0)
    end

    self:GetOwner():ViewPunch(self:CalculateRecoil())

    self:HandleReverb()

    if (!game.SinglePlayer()) then
        self:EmitSound(self.Primary.Sound)
    else
        self:GetOwner():SendLua("LocalPlayer():EmitSound('"..self.Primary.Sound.."')")
    end
    
    if (self.Primary.TrailingSound != nil) then
        if (!game.SinglePlayer()) then
            self:EmitSound(self.Primary.TrailingSound)
        else
            self:GetOwner():SendLua("LocalPlayer():EmitSound('"..self.Primary.TrailingSound.."')")
        end
    end
    
    --bullets
    self.lastHitEntity = NULL
    if (!self.Projectile) then
        self:Bullets()
    else
        self:Projectiles()
    end

    self:SetLastShootTime(CurTime())

    --cone
    self:SetCone(math.min(self:GetCone() + self.Cone.Increase * 10 * Lerp(self:GetAimDelta(), 1, self.Cone.AdsMultiplier / GetConVar("mgbase_sv_accuracy"):GetFloat()), self.Cone.Max / GetConVar("mgbase_sv_accuracy"):GetFloat()))

    if (CLIENT && IsFirstTimePredicted()) then
        self.Camera.Shake = self.Recoil.Shake --* Lerp(self:GetAimDelta(), 1, self.Recoil.AdsMultiplier)
    end
    
    if (SERVER && game.SinglePlayer()) then self:GetOwner():SendLua("Entity("..self:EntIndex()..").Camera.Shake = "..self.Recoil.Shake) end --cant be assed
    
    --smoke
    if (self.BarrelSmoke != nil) then
        if (CLIENT) then
            if (IsFirstTimePredicted()) then
                self.m_SmokeData.Current = math.min(self.m_SmokeData.Current + self.BarrelSmoke.ShotTemperatureIncrease, self.BarrelSmoke.TemperatureThreshold)
            end
        end

        if (SERVER && game.SinglePlayer()) then
            local w = "Entity("..self:EntIndex()..")"
            local sm = ".m_SmokeData"
            local current = w..sm..".Current"
            local lua = current.."= math.min("..current.." + "..self.BarrelSmoke.ShotTemperatureIncrease..", "..self.BarrelSmoke.TemperatureThreshold..")" 
            self:GetOwner():SendLua(lua)
        end
    end
end

function SWEP:Projectiles()
    if (CLIENT) then
        return
    end

    local proj = ents.Create(self.Projectile.Class)

    local angles = self:GetOwner():EyeAngles() + self:GetOwner():GetViewPunchAngles()

    local src = LerpVector(self:GetAimDelta(), self:GetOwner():EyePos() + angles:Up() * -3 + angles:Right() * 3, self:GetOwner():EyePos())
    local dir = self:GetOwner():GetEyeTraceNoCursor().HitPos - src 
    
    math.randomseed(self:Clip1() + self:Ammo1() + CurTime() + self.Cone.Seed)
    local spreadRight = math.random(-self:GetCone(), self:GetCone())

    math.randomseed(-self:Clip1() * 0.5 + self:Ammo1() * 2 - CurTime() + self.Cone.Seed)
    local spreadUp = math.random(-self:GetCone(), self:GetCone())

    local spread = LerpVector(self:GetAimDelta(), Vector(spreadRight, spreadUp), Vector(0, 0))
    angles:RotateAroundAxis(angles:Right(), spread.x)
    angles:RotateAroundAxis(angles:Up(), spread.y)

    proj.Weapon = self

    proj:SetPos(src)
    proj:SetAngles(angles)
    proj:SetOwner(self:GetOwner())
    proj:Spawn()
end