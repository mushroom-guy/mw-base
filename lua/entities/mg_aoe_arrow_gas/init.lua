AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.smokeSound = nil

function ENT:Initialize()
    self:SetModel("models/dav0r/hoverball.mdl")
    --[[self:PhysicsInit(SOLID_VPHYSICS)
    self:GetPhysicsObject():EnableMotion(false)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)]]
    self:AddFlags(FL_GRENADE)
    self:AddFlags(FL_ONFIRE)

    local repFil = RecipientFilter()
    repFil:AddAllPlayers()

    self.smokeSound = CreateSound(self, "MW19_Crossbow.GasOn", repFil)
    self.smokeSound:Play()

    self:EmitSound("MW19_Crossbow.GasExplode")
    
    ParticleEffectAttach("arrow_gas_dust", PATTACH_ABSORIGIN_FOLLOW, self, 0)
    ParticleEffect("arrow_gas_explode", self:GetPos(), self:GetAngles(), self, 0)

    self:SetParent(NULL) --detaching from whatever we nailed on
    sound.EmitHint(SOUND_DANGER, self:GetPos(), self.GasRadius * 2, self.LifeTime, nil) --make shit run away (nil owner so even rebels run)
end 

local function doesEntityBreathe(ent)
    return ent:GetBloodColor() != BLOOD_COLOR_MECH && ent:GetBloodColor() != DONT_BLEED
end

function ENT:Think()
    if (CurTime() > self:GetCreationTime() + (self.LifeTime - 2)) then
        self:StopGas()
    end
    
    if (CurTime() - self:GetCreationTime() > self.LifeTime) then
        self:Remove()
        return
    end

    for _, e in pairs(ents.FindInSphere(self:GetPos(), self.GasRadius)) do
        if (e:IsPlayer() || e:IsNPC() || e:IsNextBot()) then
            if (!doesEntityBreathe(e) || !e:IsLineOfSightClear(self:GetPos())) then
                continue
            end

            local dmgInfo = DamageInfo()
            dmgInfo:SetAttacker(self:GetOwner())
            dmgInfo:SetDamage(8)
            dmgInfo:SetDamageType(DMG_NERVEGAS)
            dmgInfo:SetInflictor(self)
            e:TakeDamageInfo(dmgInfo)
        end
    end

    self:NextThink(CurTime() + 0.25)
    return true
end

function ENT:OnRemove()
    self:StopGas()
end

ENT.bStoppedGas = false

function ENT:StopGas()
    if (self.bStoppedGas) then
        return
    end

    self.bStoppedGas = true

    if (self.smokeSound != nil) then
        self.smokeSound:Stop()
    end

    self:StopParticles()
    sound.Play("MW19_Crossbow.GasOff", self:GetPos())
end