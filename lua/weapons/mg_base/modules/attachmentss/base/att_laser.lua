ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default"
ATTACHMENT.Category = "Lasers"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

local function removeFlashlightStuffFromModel(flashModel)
    if (IsValid(flashModel)) then 
        if (flashModel.mw_flashlightProjTexture != nil) then
            flashModel.mw_flashlightProjTexture:Remove()
        end

        if (flashModel.mw_flashlightParticle != nil) then
            flashModel.mw_flashlightParticle:StopEmissionAndDestroyImmediately()
        end
    end
end

function ATTACHMENT:DoLaserRender(weapon, laserModel)
    if (weapon.DrawHUD == nil) then
        return
    end

    local att = laserModel:GetAttachment(laserModel:LookupAttachment(self.Laser.Attachment))
    local tr = util.TraceLine({
        start = att.Pos + att.Ang:Forward() * -10,
        endpos = att.Pos + att.Ang:Forward() * 1000,
        filter = {weapon, weapon:GetOwner()},
        mask = MASK_SHOT
    })

    if (laserModel.mw_laserTrailPos == nil) then
        laserModel.mw_laserTrailPos = tr.HitPos
    end

    local distSq = tr.HitPos:DistToSqr(att.Pos)
    local beamDelta = math.Clamp(distSq / (self.Laser.BeamSize * self.Laser.BeamSize), 0, 1)

    local color = self.Laser.Color

    if (GetConVar("mgbase_fx_laser_weaponcolor", 0):GetBool()) then
        if (IsValid(weapon:GetOwner()) && weapon:GetOwner():IsPlayer()) then
            local c = weapon:GetOwner():GetWeaponColor()
            color = Color(c.x * 255, c.y * 255, c.z * 255, 255)
        end
    end

    render.SetMaterial(self.Laser.BeamMaterial)
    render.DrawBeam(att.Pos, att.Pos + att.Ang:Forward() * (beamDelta * self.Laser.BeamSize), self.Laser.BeamWidth * math.random(0.5, 1), 0, 0.95, color)

    local bCanDrawLaser = true

    if (weapon:GetSight() == nil || weapon:GetSight().ReticleHybrid == nil) then
        bCanDrawLaser = weapon:GetAimMode() >= 1
    else
        bCanDrawLaser = weapon:GetAimMode() >= 2
    end

    local pos = tr.HitPos * 1

    if (bCanDrawLaser) then
        weapon:SafeLerpVector(weapon:GetAimDelta() * 0.8, pos, EyePos() + EyeAngles():Forward() * 300)
    end

    local normal = tr.HitNormal * 1
    weapon:SafeLerpVector(weapon:GetAimDelta(), normal, (EyePos() - pos):GetNormalized())

    local sens = Lerp(weapon:GetAimDelta(), 50, 150)
    weapon:SafeLerpVector(math.min(sens * FrameTime(), 1), laserModel.mw_laserTrailPos, pos)

    local bCanDrawDistance = tr.HitPos:DistToSqr(att.Pos) > (10 * 10)

    if (!bCanDrawDistance) then
        return
    end

    if (weapon:GetAimDelta() < 0.5 || (bCanDrawLaser && weapon.LaserAimPos != nil && weapon.LaserAimAngles != nil)) then
        render.SetMaterial(self.Laser.DotMaterial)
        render.DrawQuadEasy(pos, normal, self.Laser.DotSize, self.Laser.DotSize, color, math.random(179, 180))
        render.DrawBeam(laserModel.mw_laserTrailPos, pos, self.Laser.DotSize * 0.8, 0, 0.5, color)
    end
end

function ATTACHMENT:DrawFlashlight(weapon, model)
    if (weapon.DrawHUD == nil) then
        removeFlashlightStuffFromModel(model)
        return
    end

    if (self.Flashlight == nil) then
        return
    end

    --checking if we are rendering twice
    --delete one of them if so
    if (model == self.m_Model) then
        removeFlashlightStuffFromModel(self.m_TpModel)
    else
        removeFlashlightStuffFromModel(self.m_Model)
    end
    
    if (!weapon:GetFlashlight() || weapon:GetOwner():FlashlightIsOn() || weapon:GetIsHolstering()) then
        removeFlashlightStuffFromModel(model)
        return
    end

    local attId = model:LookupAttachment(self.Flashlight.Attachment)
    local att = model:GetAttachment(attId)

    if (!IsValid(model.mw_flashlightProjTexture)) then
        model.mw_flashlightProjTexture = ProjectedTexture()
    end

    if (!IsValid(model.mw_flashlightParticle)) then
        model.mw_flashlightParticle = CreateParticleSystem(model, "flashlight_mw19", PATTACH_POINT_FOLLOW, attId)
        model.mw_flashlightParticle:StartEmission()
    end

    local proj = model.mw_flashlightProjTexture
    proj:SetPos(att.Pos + att.Ang:Forward() * -3)
    proj:SetAngles(att.Ang)
    proj:SetFOV(50)
    proj:SetTexture(self.Flashlight.FlashlightMaterial:GetTexture("$basetexture"))
    proj:Update()

    local particle = model.mw_flashlightParticle
    particle:SetShouldDraw(false)
    particle:SetControlPoint(1, att.Pos)
    particle:SetControlPointOrientation(1, att.Ang:Forward(), att.Ang:Right(), att.Ang:Up())
    particle:Render()
end

function ATTACHMENT:Render(weapon)
    --BaseClass.Render(self, weapon)

    if (GetViewEntity() == weapon:GetOwner()) then
        self:DoLaserRender(weapon, self.m_Model)
        self:DrawFlashlight(weapon, self.m_Model)
    else
        self:DoLaserRender(weapon, self.m_TpModel)
        self:DrawFlashlight(weapon, self.m_TpModel)
    end
end

function ATTACHMENT:OnRemove(weapon)
    if (CLIENT) then
        removeFlashlightStuffFromModel(self.m_Model)
        removeFlashlightStuffFromModel(self.m_TpModel)
    end

    BaseClass.OnRemove(self, weapon)
end