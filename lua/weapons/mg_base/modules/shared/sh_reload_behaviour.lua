AddCSLuaFile()

function SWEP:CanReload()
    if (self:IsCustomizing()) then
        return false
    end

    if (CurTime() < self:GetNextPrimaryFire()) then
        return false
    end

    if (self:GetIsReloading() || self:GetIsHolstering() || self:IsDrawing() || self:GetIsSprinting()) then
        return false
    end

    if (CurTime() < self:GetNextSprintTime()) then
        return false
    end

    if (CurTime() < self:GetNextMeleeTime()) then
        return false
    end

    if (CurTime() < self:GetNextFiremodeTime()) then
        return false
    end

    if (CurTime() < self:GetNextReloadTime() && self:GetHasFilledMag()) then --avoid people from reloading after they canceled their reloads
        return false
    end
 
    if (self:Ammo1() <= 0) then
        return false
    end

    if (self:GetOwner():KeyDown(IN_USE)) then
        return false
    end

    if (self:IsDrawing()) then
        return false
    end

    return true
end

function SWEP:CanInspect()
    if (self:IsCustomizing()) then
        return false
    end

    if (CurTime() < self:GetNextPrimaryFire()) then
        return false
    end

    if (self:GetIsReloading() || self:GetIsHolstering() || self:IsDrawing() || self:GetIsSprinting()) then
        return false
    end

    if (CurTime() < self:GetNextSprintTime()) then
        return false
    end

    if (CurTime() < self:GetNextMeleeTime()) then
        return false
    end

    if (CurTime() < self:GetNextFiremodeTime()) then
        return false
    end

    if (self:GetOwner():KeyDown(IN_USE)) then
        return false
    end

    if (self:GetAimDelta() > 0) then
        return false
    end

    if (self:GetIsSprinting()) then
        return
    end

    if (self:IsDrawing()) then
        return false
    end
    
    return true
end

function SWEP:GetMaxClip1WithChamber()
    if (self.CanChamberRound && self:GetHasPumped()) then
        return self:GetMaxClip1() + 1
    end

    return self:GetMaxClip1()
end

function SWEP:Reload(fromFallback)
    fromFallback = fromFallback || false

    local bCanChamberReload = self:Clip1() < self:GetMaxClip1WithChamber()

    if (!bCanChamberReload || self:Ammo1() <= 0) then
        if (CurTime() > self:GetNextInspectTime() && self:CanInspect()) then
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Inspect") end
            self:SetNextInspectTime(CurTime() + self:GetAnimLength("Inspect"))
        end

        return
    end

    if (!fromFallback && !self:CanReload()) then
        return
    end

    local seqIndex = self:ChooseReloadAnim()
    local length = self:GetAnimLength(seqIndex)
    local magLength = self:GetAnimLength(seqIndex, self.Animations[seqIndex].MagLength)

    self:SetNextReloadTime(CurTime() + length)
    self:SetNextMagTime(CurTime() + magLength)
    self:SetHasFilledMag(false)
    self:SetIsReloading(true)
    self:SetBurstRounds(0)

    if (self.ReloadRechambers) then
        self:SetHasPumped(true)
    end

    if (self.EmptyReloadRechambers && seqIndex == "Reload_Empty") then
        self:SetHasPumped(true)
    end

    if (self.Animations.Rechamber == nil) then
        self:SetHasPumped(true)
    end
    
    self:PlayerGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, self.HoldTypes[self.HoldType].Reload)

    if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(seqIndex, fromFallback) end

    self.m_bReloaded = true
end

function SWEP:ChooseReloadAnim()
    if (self.Animations["Reload_Start"] != nil) then
        return "Reload_Start"
    end

    if (self:Clip1() <= 0 && self.Animations["Reload_Empty"]) then
        return "Reload_Empty"
    end

    return "Reload"
end

function SWEP:ReloadBehaviourModule()
    if (self:GetIsReloading()) then
        if (self.Animations["Reload_Loop"] != nil) then
            if (CurTime() > self:GetNextMagTime() && !self:GetHasFilledMag()) then
                self:SetClip1(self:Clip1() + 1)
                self:GetOwner():SetAmmo(self:Ammo1() - 1, self:GetPrimaryAmmoType())
    
                self:SetHasFilledMag(true)
            end
    
            if (CurTime() > self:GetNextReloadTime()) then
                local maxClip = self.Primary.ClipSize
    
                if (self:GetHasPumped()) then
                    maxClip = self:GetMaxClip1WithChamber()
                end
    
                if (self:Clip1() >= maxClip || self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) <= 0) then
                    self:EndReload()
                    return
                end
    
                if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Reload_Loop") end
    
                self:SetNextReloadTime(CurTime() + self:GetAnimLength("Reload_Loop"))
                self:SetNextMagTime(CurTime() + self:GetAnimLength("Reload_Loop", self.Animations["Reload_Loop"].MagLength))
                self:SetHasFilledMag(false)
    
                self:PlayerGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, self.HoldTypes[self.HoldType].Reload)
            end
        else
            if (CurTime() > self:GetNextMagTime() && !self:GetHasFilledMag()) then
                local maxClip = self:GetMaxClip1()

                if (self:Clip1() > 0) then
                    maxClip = self:GetMaxClip1WithChamber()
                end

                local ammoNeeded = math.min(maxClip - self:Clip1(), self:Ammo1())

                self:SetClip1(self:Clip1() + ammoNeeded)
                self:GetOwner():SetAmmo(self:Ammo1() - ammoNeeded, self:GetPrimaryAmmoType())
                --self:SetHasPumped(true)
                self:SetHasFilledMag(true)
            end

            if (CurTime() > self:GetNextReloadTime()) then
                self:SetIsReloading(false)
                self.m_bReloaded = false
            end
        end
    end
end

function SWEP:EndReload()
    if (self:Clip1() <= 0) then --dont want to cancel reload if im out of ammo
        return
    end

    if (self.Animations["Reload_End"] != nil) then
        if (!self:GetHasPumped() && self:Clip1() > 0 && self.Animations["Reload_End_Empty"] != nil) then
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Reload_End_Empty") end
            self:SetNextPrimaryFire(CurTime() + self:GetAnimLength("Reload_End_Empty"))
            self:SetHasPumped(true)
        else
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Reload_End") end
            self:SetNextPrimaryFire(CurTime() + self:GetAnimLength("Reload_End"))
        end
        self:SetIsReloading(false)
    end
end

function SWEP:CanPump()
    return !self:GetIsHolstering()
        && !self:IsDrawing()
        && self:Clip1() > 0
        && !self:GetIsReloading()
        && CurTime() > self:GetNextMeleeTime()
        && self.Animations["Rechamber"] != nil
        && (self:GetOwner():GetInfoNum("mgbase_manualrechamber", 0) <= 0 || !self:GetOwner():KeyDown(IN_ATTACK))
end