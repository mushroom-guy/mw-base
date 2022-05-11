AddCSLuaFile()

function SWEP:Think()
    --self:BuildSavedAtts() --this only runs once but i'm putting it here now because sp fucked up and mp not reliable

    --fallback initialize
    if (!self.m_bInitialized && IsFirstTimePredicted()) then
        self:Initialize()
    end

    --fallback draw
    if (!self.m_bDrawn && self:IsDrawing() && (IsFirstTimePredicted() || game.SinglePlayer())) then
        self:Deploy(true)
    end

    --fallback holster
    if (!self.m_bHolstered && self:GetIsHolstering() && IsFirstTimePredicted()) then
        self:Holster(self:GetNextWeapon(), true)
    end

    --fallback reload
    if (!self.m_bReloaded && self:GetIsReloading() && IsFirstTimePredicted()) then
        self:Reload(true)
    end

    --fallback customize
    if (!game.SinglePlayer()) then
        if (self.bCustomize != self:GetIsCustomizing() && IsFirstTimePredicted()) then
            self.bCustomize = self:GetIsCustomizing()
            self:Customize()--(true) no reason to compensate this since there's no timing, fallback logic still left in the method though.
        end 
    end

    --pumping
    if (CurTime() >= self:GetNextPrimaryFire() && self:CanPump()) then
        if (!self:GetHasPumped()) then
            local anim = "Rechamber"
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(anim) end

            self:SetNextPrimaryFire(CurTime() + self:GetAnimLength(anim))
            self:SetHasPumped(true)
        end
    end

    --holster
    if (self:GetIsHolstering() && CurTime() >= self:GetNextHolsterTime() && IsValid(self:GetNextWeapon()) && self:GetNextWeapon() != self && self:GetNextWeapon() != self:GetOwner()) then
        self.m_bDrawn = false

        if (CLIENT && (IsFirstTimePredicted() || game.SinglePlayer())) then 
            input.SelectWeapon(self:GetNextWeapon()) 
        end  

        return
    end

    --spray
    if (CurTime() > self:GetNextPrimaryFire() + 0.15) then
        self:SetSprayRounds(0)
    end

    --cone
    local target = Lerp(self:GetAimDelta(), self.Cone.Hip, self.Cone.Ads) / GetConVar("mgbase_sv_accuracy"):GetFloat()
    self:SetCone(math.Approach(self:GetCone(), target, 4 * FrameTime()))

    if (CurTime() <= self:GetNextMeleeTime()) then
        self:SetCone(self.Cone.Max)
    end

    --reload
    self:ReloadBehaviourModule()

    --equip
    if (!self:IsDrawing() && self:GetNeedsToEquip()) then
        self:SetNeedsToEquip(false)
    end

    --aim
    self:AimBehaviourModule()

    --sprint
    self:SprintBehaviourModule()

    --ladder
    if (self:GetOwner():GetMoveType() == MOVETYPE_LADDER && !self:IsDrawing()) then
        self:Holster(self:GetOwner())
    else
        if (self:GetIsHolstering() && self:GetNextWeapon() == self:GetOwner()) then
            self:Deploy()
        end
    end

    --holdtypes
    --new meme marine way
    self:SetShouldHoldType()

    --firemodes
    self:FiremodeBehaviourModule()

    --melee
    self:MeleeBehaviourModule()

    --auto reload
    if (self:GetOwner():GetInfoNum("mgbase_autoreload", 1)) >= 1 then
        if (self:Clip1() <= 0 && self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) > 0) then
            self:Reload()
        end
    end

    --trigger
    if (CLIENT && game.SinglePlayer()) then
        return --fuck it
    end

    if (self:Clip1() > 0 && !self:GetIsReloading() && !self:GetIsSprinting()) then
        self:CreateAndResumeReverbJob()
    end

    if (self.Trigger != nil) then
        local bDown = self:GetOwner():KeyDown(IN_ATTACK)
        --[[if (!self.Primary.Automatic) then
            bDown = self:GetOwner():KeyPressed(IN_ATTACK)
        end]]

        if (bDown && self:CanTrigger()) then
            if (!self:GetIsTrigger()) then
                if (self.Trigger.PressedSound != nil) then
                    self:EmitSound(self.Trigger.PressedSound)
                end

                if (self.Trigger.PressedAnimation != nil) then
                    if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(self.Trigger.PressedAnimation) end
                end
            end

            self:SetIsTrigger(true) 
        else
            if (CurTime() > self:GetNextPrimaryFire() || self.Primary.Automatic) then
                if (self:GetIsTrigger()) then
                    if (self.Trigger.ReleasedSound != nil && (CurTime() > self:LastShootTime() + 0.1 || self.Trigger.PlayReleasedSoundRegardless)) then
                        self:EmitSound(self.Trigger.ReleasedSound)
                    end

                    if (self.Trigger.ReleasedAnimation != nil && self:CanPlayTriggerOut()) then
                        if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(self.Trigger.ReleasedAnimation) end
                    end

                    if (!self:GetHasShotAfterTrigger() && self:CanPlayTriggerOut()) then
                        if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Idle") end
                    end
                end
                
                self:SetIsTrigger(false)
                self:SetHasShotAfterTrigger(false)
            end
        end

        if (self:GetIsTrigger()) then
            self:SetTriggerDelta(self:GetTriggerDelta() + (FrameTime() / self.Trigger.Time))

            if (self:GetTriggerDelta() >= 1) then
                if ((!self.Primary.Automatic && !self:GetHasShotAfterTrigger()) || self.Primary.Automatic) then
                    self:PrimaryAttack()
                    self:SetHasShotAfterTrigger(true)
                end

                if (self.Primary.Automatic && !self:GetOwner():KeyDown(IN_ATTACK)) then
                    self:SetIsTrigger(false)
                end
            end 
        else
            self:SetTriggerDelta(0)
        end
    end

    if (self:GetOwner():KeyDown(IN_USE) && self:GetOwner():KeyPressed(IN_ATTACK2)) then
        self:SetSafety(!self:GetSafety())
    end
end

function SWEP:CanTrigger()
    --[[if (self:Clip1() <= 0) then
        return false
    end]]

    if (self:IsCustomizing()) then
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

    --[[if (CurTime() < self:GetNextReloadTime() && self:GetHasFilledMag()) then --without this gun will make a click
        return false
    end]]

    return true
end

function SWEP:CanPlayTriggerOut()
    if (self:IsCustomizing()) then
        return
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

    return true
end