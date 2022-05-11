AddCSLuaFile()

function SWEP:PostDrawViewModel(vm, weapon, ply)
    if (GetConVar("mgbase_debug_vmrender"):GetInt() <= 0) then
        return
    end
    
    if (ply == NULL) then
        return
    end
    
    if (!IsValid(self.m_ViewModel)) then
        self:RecreateClientsideModels(true)
    end

    if (ply:InVehicle() && !ply:GetAllowWeaponsInVehicle()) then
        return
    end

    if (self.m_seqIndex == "INIT") then
    --    return
    end
    
    if (self.m_drawWorkaround) then
        self.m_ViewModel:FrameAdvance()
        self.m_ViewModel:SetCycle(0)
        self.m_drawWorkaround = false

        return
    end

    --customization
    if (self.Customization) then
        self:RenderCustomization(self.m_ViewModel)
    end
    
    --rigs
    self:RenderRigs()

    --particles
    self:RenderParticles(self.Particles)

    self:RenderModels(self.m_ViewModel)

    --shells
    self:RenderShells(self.ShellModel, self.m_ViewModel)

    --weapon sounds
    self:AnimationEvents()
    
    --reticles
    self:RenderReticles()
    self:RenderScreens()

    --inspection
    self:RenderInspection()
    
    --blur
    --self:ViewModelBlurModule() new optimizations broke it

    if (IsValid(MW_CUSTOMIZEMENU)) then
        self:DrawBackgroundForCustomization()
    else
        --removing the highlight effect
        for slot, att in pairs(self:GetAllAttachmentsInUse()) do
            if (IsValid(att.m_Model)) then
                att.m_Model.CustomizationAnimationDelta = 0
            end
        end
    end

    if (GetConVar("mgbase_debug_freezeanim"):GetInt() <= 0) then
        self.m_ViewModel:FrameAdvance()
    else
        self.m_ViewModel:SetCycle(GetConVar("mgbase_debug_animdelta"):GetFloat())
    end
end

local lerpedInspectionDelta = 0
function SWEP:RenderInspection()
    if (self.ViewModelOffsets == nil || self.ViewModelOffsets.Inspection == nil) then
        return
    end

    local insp = self.ViewModelOffsets.Inspection

    if (self:IsCustomizing() && self:GetOwner():KeyDown(IN_USE)) then
        self.ViewModelMouseX = self:SafeLerp(FrameTime() * 5, self.ViewModelMouseX, gui.MouseX())
        self.ViewModelMouseY = self:SafeLerp(FrameTime() * 5, self.ViewModelMouseY, gui.MouseY())
        lerpedInspectionDelta = Lerp(FrameTime() * 10, lerpedInspectionDelta, 1)
    else
        self.ViewModelMouseX = self:SafeLerp(FrameTime() * 5, self.ViewModelMouseX, ScrW() * 0.5)
        self.ViewModelMouseY = self:SafeLerp(FrameTime() * 5, self.ViewModelMouseY, ScrH() * 0.5)
        lerpedInspectionDelta = Lerp(FrameTime() * 10, lerpedInspectionDelta, 0)
    end

    local deltaX = math.Clamp(self.ViewModelMouseX / ScrW(), 0, 1)
    local deltaY = math.Clamp(self.ViewModelMouseY / ScrH(), 0, 1)

    local bId = self:LookupBoneCached(self.m_ViewModel, insp.Bone)
    if bId then
        --local halfYDelta = math.abs(math.cos(math.pi * deltaY))
        --local halfXDelta = math.abs(math.cos(math.pi * deltaX))

        local inspAngleVertical = LerpAngle(deltaY, insp.Y[0].Angles --[[* halfYDelta]], insp.Y[1].Angles --[[* halfYDelta]])
        local inspAngleHorizontal = LerpAngle(deltaX, insp.X[0].Angles --[[* halfXDelta]], insp.X[1].Angles--[[* halfXDelta]])

        local inspPosVertical = LerpVector(deltaY, insp.Y[0].Pos --[[* halfYDelta]], insp.Y[1].Pos --[[* halfYDelta]])
        local inspPosHorizontal = LerpVector(deltaX, insp.X[0].Pos--[[* halfXDelta]], insp.X[1].Pos--[[* halfXDelta]])

        self.m_ViewModel:ManipulateBoneAngles(bId, (inspAngleVertical + inspAngleHorizontal) * lerpedInspectionDelta)
        self.m_ViewModel:ManipulateBonePosition(bId, (inspPosVertical + inspPosHorizontal) * lerpedInspectionDelta)
    end
end

function SWEP:RenderRigs()
    if (!IsValid(self:GetOwner())) then
        return
    end

    local rigName = GetConVar("mgbase_rig"):GetString()
    local gloveName = GetConVar("mgbase_gloves"):GetString()

    if (rigName == "chands" || MW_RIGS[rigName] == nil || MW_GLOVES[gloveName] == nil) then
        self:GetOwner():GetHands():SetParent(self.m_ViewModel)
        self:GetOwner():GetHands():AddEffects(EF_BONEMERGE)
        self.m_ViewModel.Hands:SetParent(NULL)
        self.m_ViewModel.Hands.Gloves:SetParent(NULL)
        self.UseHands = true
    else
        --sleeves
        if (self.m_ViewModel.Hands:GetModel() != MW_RIGS[rigName].Model) then
            self.m_ViewModel.Hands:SetModel(MW_RIGS[rigName].Model)
        end

        self.m_ViewModel.Hands:SetParent(self.m_ViewModel)
        self.m_ViewModel.Hands:AddEffects(EF_BONEMERGE)
        self.m_ViewModel.Hands:SetSkin(GetConVar("mgbase_rig_skin"):GetInt())

        --gloves
        if (self.m_ViewModel.Hands.Gloves:GetModel() != MW_GLOVES[gloveName].Model) then
            self.m_ViewModel.Hands.Gloves:SetModel(MW_GLOVES[gloveName].Model)
        end

        self.m_ViewModel.Hands.Gloves:SetParent(self.m_ViewModel.Hands)
        self.m_ViewModel.Hands.Gloves:AddEffects(EF_BONEMERGE)
        self.m_ViewModel.Hands.Gloves:SetSkin(GetConVar("mgbase_gloves_skin"):GetInt())

        self:GetOwner():GetHands():SetParent(self:GetOwner():GetViewModel())
        self:GetOwner():GetHands():AddEffects(EF_BONEMERGE)
        self.UseHands = false
    end
end

function SWEP:RenderModels(ent) 
    if (ent == self.m_ViewModel || ent == self.m_WorldModel || #ent:GetChildren() <= 0) then
        ent:DrawModel((ent == self.m_ViewModel || ent == self.m_WorldModel) && STUDIO_RENDER || 0) --0 is meant to be only setupbones in engine, but for some reason parents are drawn anyways
    end

    for i, child in pairs(ent:GetChildren()) do
        self:RenderModels(child)
    end
end

function SWEP:RefreshCandidates(ent)
    ent._bMWDraw = nil

    for i, child in pairs(ent:GetChildren()) do
        self:RefreshCandidates(child)
    end
end

function SWEP:RenderReticles()
    if (self:GetAimDelta() <= 0 && GetConVar("mgbase_fx_cheap_reticles"):GetBool()) then
        return
    end

    if (self:GetSight() == nil) then
        return
    end

    if (self:GetSight().Optic != nil && self:GetSight().ReticleHybrid == nil) then
        return
    end

    if (self:GetSight().ReticleHybrid != nil && self:GetAimMode() <= 0) then
        return
    end

    local ret = self:GetSight().Reticle

    if (self:GetSight().ReticleHybrid != nil) then
        ret = self:GetSight().ReticleHybrid
    end

    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)

    render.SetBlend(0)
    self:GetSight().m_Model:DrawModel()
    render.SetBlend(1)

    render.SetStencilCompareFunction(STENCIL_EQUAL)

    local att = self:GetSight().m_Model:GetAttachment(self:GetSight().m_Model:LookupAttachment(ret.Attachment))
    local pos, ang = att.Pos, att.Ang
    ang:RotateAroundAxis(ang:Up(), 270)
    ang:RotateAroundAxis(ang:Right(), 0)
    ang:RotateAroundAxis(ang:Forward(), 90)
    
    --what the fuck they dont need offsets anymore?!?
    cam.Start3D2D(pos + ang:Up() * -100 --[[+ ang:Right() * -6.4 + ang:Forward() * -1.31]], ang, 0.01) --wtf happened here? it didnt need the offsets before...
        surface.SetMaterial(ret.Material)

        local size = ret.Size 
        local color = ret.Color

        --surface.SetDrawColor(0, 0, 0, 255)
        --surface.DrawRect(size * -0.5, size * -0.5, size, size)

        surface.SetDrawColor(color.r, color.g, color.b, color.a)
        for i = 1, GetConVar("mgbase_fx_reticle_brightness"):GetInt(), 1 do
            surface.DrawTexturedRect(size * -0.5, size * -0.5, size, size)
        end
    cam.End3D2D()

    render.SetStencilEnable(false)
    render.ClearStencil()
end

local small = Vector(0, 0, 0)
local normal = Vector(1, 1, 1)

function SWEP:RemoveBulletsBasedOnClip(model, bones)
    if (IsValid(model) && self:GetIsReloading()) then
        return
    end

    for i, bone in pairs(bones) do
        local bId = self:LookupBoneCached(model, bone)
        if (bId != nil) then
            local target = self:Clip1() <= i && small || normal

            if (model:GetManipulateBoneScale(bId) != target) then
                model:ManipulateBoneScale(bId, target)
            end
        end
    end
end

function SWEP:ResetBullets(model, bones)
    for i, bone in pairs(bones) do
        if (self:Clip1() + self:Ammo1() >= i) then
            local bId = self:LookupBoneCached(model, bone)
            if (bId != nil) then
                model:ManipulateBoneScale(bId, Vector(1, 1, 1))
            end
        end
    end
end

function SWEP:PrintBones(model)
    for i = 0, model:GetBoneCount(), 1 do
        print(i, model:GetBoneName(i))
    end
end

function SWEP:DrawBackgroundForCustomization() 
    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)

    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_REPLACE)
        
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE)
    
        render.SetBlend(0)
        self:RenderModels(self.m_ViewModel)
        render.SetBlend(1)

    render.SetStencilCompareFunction(STENCIL_NOTEQUAL)
    cam.Start2D()
        surface.SetDrawColor(0, 0, 0, MW_CUSTOMIZEMENU.AlphaDelta * 200)
        surface.DrawRect(0, 0, ScrW(), ScrH())
    cam.End2D()
    render.SetStencilEnable(false)

    self:RenderCustomizationHighlightForModel(self.m_ViewModel)
end

function SWEP:RenderCustomizationHighlightForModel(model)
    if (model.CustomizationAnimationDelta != nil && model.CustomizationAnimationDelta > 0) then
        model.CustomizationAnimationDelta = model.CustomizationAnimationDelta - (math.min(FrameTime(), 0.1) * 3)

        render.SetStencilWriteMask(0xFF)
        render.SetStencilTestMask(0xFF)
        render.SetStencilReferenceValue(0)

        render.SetStencilCompareFunction(STENCIL_ALWAYS)
        render.SetStencilPassOperation(STENCIL_REPLACE)
        render.SetStencilFailOperation(STENCIL_KEEP)
        render.SetStencilZFailOperation(STENCIL_KEEP)
            
        render.SetStencilEnable(true)
        render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)
        
            render.SetBlend(0)
            model:DrawModel()
            render.SetBlend(1)

        render.SetStencilCompareFunction(STENCIL_EQUAL)
        cam.Start2D()
            surface.SetDrawColor(model.CustomizationAnimationColor.r, model.CustomizationAnimationColor.g, model.CustomizationAnimationColor.b, model.CustomizationAnimationDelta * 200)
            surface.DrawRect(0, 0, ScrW(), ScrH())
        cam.End2D()
        render.SetStencilEnable(false)
    end

    for i, c in pairs(model:GetChildren()) do
        self:RenderCustomizationHighlightForModel(c)
    end
end