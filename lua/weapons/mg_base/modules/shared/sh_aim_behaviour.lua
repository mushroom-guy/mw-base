AddCSLuaFile()

function SWEP:CanPlayAimDownAnim()
    return !self:GetIsReloading() 
        && !self:IsDrawing() 
        && !self:GetIsHolstering() 
        && !self:GetIsSprinting() 
        && CurTime() > self:GetNextSprintTime()
        && CurTime() > self:GetNextFiremodeTime()
        && CurTime() > self:GetNextMeleeTime()
        && CurTime() > self:GetNextPrimaryFire()
        && !self:IsCustomizing()    
end

function SWEP:CanPlayAimUpAnim()
    return !self:GetIsReloading() 
        && !self:IsDrawing() 
        && !self:GetIsHolstering() 
        && !self:GetIsSprinting() 
        && CurTime() > self:GetNextSprintTime()
        && CurTime() > self:GetNextFiremodeTime()
        && CurTime() > self:GetNextMeleeTime()
        && CurTime() > self:GetNextPrimaryFire()
end

function SWEP:CanAim()
    return --[[!self:GetIsReloading() 
        &&!self:IsDrawing() 
        &&]] !self:GetIsHolstering() 
        && !self:GetIsSprinting() 
        && !self:GetNeedsToEquip()
        && (!self:GetOwner():KeyDown(IN_USE) || (self:GetOwner():KeyDown(IN_USE) && self:GetAimDelta() > 0))
        && CurTime() > self:GetNextSprintTime() 
        && CurTime() > self:GetNextMeleeTime()
        --&& !self:IsCustomizing()
        && !(self.CanDisableAimReload && self:GetIsReloading())
        --&& !self:GetOwner():KeyDown(IN_USE)
        --&& CurTime() > self:GetNextFiremodeTime()
end

function SWEP:AimBehaviourModule()
    if (CLIENT && game.SinglePlayer()) then
        return
    end

    if (self:GetOwner():GetInfoNum("mgbase_toggleaim", 0) >= 1) then
        if (self:GetOwner():KeyPressed(IN_ATTACK2)) then
            self:SetToggleAim(!self:GetToggleAim())
        end
    else
        self:SetToggleAim(self:GetOwner():KeyDown(IN_ATTACK2))
    end

    if (self:CanAim() && self:GetToggleAim()) then
        self:StopCustomizing()
        
        if (!self:GetIsAiming() && self:CanPlayAimUpAnim()) then
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Ads_In") end
        end
    
        self:SetIsAiming(true)
    
        local speed = 1 / self:GetAnimLength("Ads_In");
        self:SetAimDelta(math.min(self:GetAimDelta() + speed * FrameTime(), 1))
    else
        if (self:GetIsAiming() && self:CanPlayAimDownAnim()) then
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Ads_Out") end
        end

        self:SetIsAiming(false)

        local speed = 1 / self:GetAnimLength("Ads_Out");
        self:SetAimDelta(math.max(self:GetAimDelta() - speed * FrameTime(), 0))
    end

    --aim mode
    self:AimModeModule()

    --breathe
    self:BreathingModule()
end

function SWEP:CanChangeAimMode()
    return (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil) 
        || (self:GetLaser() != nil && self.LaserAimAngles != nil && self.LaserAimPos != nil)
end

function SWEP:AimModeModule()
    if (!self:GetIsAiming()) then
        return
    end

    local bCanChange = (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil) || self:GetLaser() != nil
    bCanChange = bCanChange && !self:GetIsReloading() && CurTime() > self:GetNextPrimaryFire()

    if (self:GetOwner():KeyPressed(IN_USE) && bCanChange) then
        if (!self:GetAimModeUsePressed()) then
            self:SetAimModeUsePressed(true)
            self:SetNextAimModeTime(CurTime() + 0.5)
        elseif (self:GetAimModeUsePressed() && CurTime() < self:GetNextAimModeTime()) then
            self:SetAimModeUsePressed(false)
            self:SetAimMode(self:GetAimMode() + 1)

            local count = 0

            if (self:CanChangeAimMode()) then
                count = count + 1
            end

            if (self:GetAimMode() > count) then
                self:SetAimMode(0)

                if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OnAnimation != nil) then
                    if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(self:GetSight().ReticleHybrid.OnAnimation) end
                    self:SetNextPrimaryFire(CurTime() + self:GetAnimLength(self:GetSight().ReticleHybrid.OnAnimation))
                end
                
                self:EmitSound("Canted.Off")
            else
                if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OffAnimation != nil) then
                    if (IsFirstTimePredicted()) then self:PlayViewModelAnimation(self:GetSight().ReticleHybrid.OffAnimation) end
                    self:SetNextPrimaryFire(CurTime() + self:GetAnimLength(self:GetSight().ReticleHybrid.OffAnimation))
                end

                self:EmitSound("Canted.On")
            end
        end
    end

    if (CurTime() >= self:GetNextAimModeTime()) then
        self:SetAimModeUsePressed(false)
    end

    if (self:GetAimMode() > 0) then
        local len = self:GetAnimLength("Ads_In") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OnAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OnAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.min(self:GetAimModeDelta() + speed * FrameTime(), 1))
    else
        local len = self:GetAnimLength("Ads_Out") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OffAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OffAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.max(self:GetAimModeDelta() - speed * FrameTime(), 0))
    end
end

function SWEP:BreathingModule()
    if (self:GetSight() != nil && self:GetSight().Optic != nil && self:GetAimModeDelta() <= self.m_hybridSwitchThreshold) then
        local mul = 0.5

        if (self:GetIsAiming()) then
            if (self:GetOwner():KeyDown(IN_SPEED) && !self:GetHasRunOutOfBreath()) then
                mul = 0.1

                self:SetBreathingDelta(math.max(self:GetBreathingDelta() - FrameTime() * 0.3, 0))

                if (self:GetBreathingDelta() <= 0) then
                    self:SetHasRunOutOfBreath(true)
                end
            end
        else
            self:SetBreathingDelta(math.min(self:GetBreathingDelta() + FrameTime() * 0.2, 1))
        end

        if (self:GetHasRunOutOfBreath()) then
            mul = 0.5 + (3 * (1 - self:GetBreathingDelta()))

            self:SetBreathingDelta(math.min(self:GetBreathingDelta() + FrameTime() * 0.2, 1))

            if (self:GetBreathingDelta() >= 1) then
                self:SetHasRunOutOfBreath(false)
            end
        end

        local pitch = math.sin(CurTime() * 3) * math.cos(CurTime() * 1.5)
        local yaw = math.cos(CurTime() * 1.5) * math.sin(CurTime() * 0.75)

        local ang = Angle(pitch * 0.2, yaw * 0.2, 0)
        ang:Mul(self:GetAimDelta() * mul)

        self:SetBreathingAngle(ang)
    else
        self:SetBreathingAngle(self.ZeroAngle)
    end
end

function SWEP:AdjustMouseSensitivity()
    local mul = self.Zoom.FovMultiplier

    if (self:GetSight() != nil && self:GetSight().Optic != nil && self:GetAimMode() <= 0) then
        mul = mul / (self:GetSight().Optic.FOV * 0.95) * GetConVar("mgbase_scopesens"):GetFloat()
    end

	return Lerp(self:GetAimDelta(), 1, mul)
end