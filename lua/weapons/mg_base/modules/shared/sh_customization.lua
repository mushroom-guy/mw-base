AddCSLuaFile()

if (CLIENT) then
    concommand.Add("mgbase_customize", function(ply, cmd, args, argStr)
        net.Start("mgbase_customize", true)
        net.SendToServer()
    end)
end

function SWEP:StopCustomizing()
    if (self:IsCustomizing()) then
        
        self.bCustomize = false
        self:SetIsCustomizing(false)
        self:Customize()
    end
end

function SWEP:GetCustomizationCount()
    if (!self.Customization) then
        return 0
    end

    return #self.Customization
end

function SWEP:GetAttachmentCount(slot)
    if (!self.Customization) then
        return 0
    end

   return #self.Customization[slot]
end

function SWEP:CanCustomize()
    if (self:CanPump() && !self:GetHasPumped()) then
        return false
    end

    return !self:GetIsReloading()
        && !self:IsDrawing()
        && !self:GetIsHolstering()
        && CurTime() > self:GetNextPrimaryFire()
        --&& self:Clip1() > 0
        && self.Customization != nil
        && self:GetAimDelta() <= 0
        && !self:GetIsSprinting()
end

function SWEP:CanPlayInspectAfterCustomization() --people lagging could still be playing draws
    return !string.find(string.lower(self.m_seqIndex), "init") && !string.find(string.lower(self.m_seqIndex), "draw") && !string.find(string.lower(self.m_seqIndex), "equip")
end

function SWEP:Customize(fromFallback)
    fromFallback = fromFallback || false

    local state = self:IsCustomizing()
    local cycle = 0

    if (CLIENT && IsFirstTimePredicted()) then
        self:CustomizationMenu()
    end

    if (game.SinglePlayer() && IsValid(self:GetOwner())) then
        self:CallOnClient("CustomizationMenu")
    end

    if (CLIENT && game.SinglePlayer()) then
        return
    end

    if (state) then
        self:PlayViewModelAnimation("Inspect", fromFallback)
    end
end

function SWEP:Attach(slot, attIndex)
    if (self.Customization[slot] == nil) then
        return
    end

    local attachmentClass = self.Customization[slot][attIndex]

    self:CreateAttachmentForUse(attachmentClass)

    --BUILD:
    self:BuildCustomizedGun()

    --reset inspect animation
    if (CLIENT) then
        if (self:CanPlayInspectAfterCustomization()) then
            local cycle = self.m_ViewModel:GetCycle()
            self:PlayViewModelAnimation("Inspect", false, cycle)
        else
            local cycle = self.m_ViewModel:GetCycle()
            self:PlayViewModelAnimation(self.m_seqIndex, false, cycle)
        end
    end
end

local function doAttBodygroups(wep, model)
    for i = 0, model:GetNumBodyGroups(), 1 do
        model:SetBodygroup(i, 0)
    end

    for slot, att in pairs(wep:GetAllAttachmentsInUse()) do
        if (att.AttachmentBodygroups != nil) then
            for bodyGroupName, value in pairs(att.AttachmentBodygroups) do
                local id = model:FindBodygroupByName(bodyGroupName)
                if (id != -1) then
                    model:SetBodygroup(id, value)
                end
            end
        end
    end
end

function SWEP:CreateAttachmentModel(attachment)
    if (SERVER) then
        return
    end

    if (attachment.Model == nil) then
        return
    end

    if (!IsValid(attachment.m_Model)) then
        attachment.m_Model = ClientsideModel(attachment.Model, self.RenderGroup)
        attachment.m_Model:SetRenderMode(self.RenderMode)
        attachment.m_Model:SetMoveType(MOVETYPE_NONE)

        if (attachment.VElement == nil) then
            attachment.m_Model:AddEffects(EF_BONEMERGE)
            attachment.m_Model:AddEffects(EF_BONEMERGE_FASTCULL)
            attachment.m_Model:AddEffects(EF_PARENT_ANIMATES)
            attachment.m_Model:AddEffects(EF_NOINTERP)
        end

        if (attachment.BonemergeToAttachment == nil && attachment.BonemergeToCategory == nil) then
            attachment.m_Model:SetParent(self.m_ViewModel)
        end

        attachment.m_Model.CustomizationAnimationDelta = 0
        attachment.m_Model.CustomizationAnimationColor = Color(255, 255, 255, 255)
        
        --this is for the highlight effect on the attachments
        if (attachment.Index > 1) then
            attachment.m_Model.CustomizationAnimationDelta = 1
            attachment.m_Model.CustomizationAnimationColor = attachment.UIColor || attachment.m_Model.CustomizationAnimationColor
        end
    end

    --GENERATED AIM OFFSET (do this every time because it can have changed viewmodel model)
    if (attachment == self.reticle) then
        local alignAttachmentId = self.m_ViewModel:LookupAttachment(self.ViewModelOffsets.Aim.AlignAttachment || "align")

        if (alignAttachmentId > 0) then
            attachment.m_Model:SetupBones() --shaky otherwise

            local data = self.m_ViewModel:GetAttachment(alignAttachmentId)
            local reticleData = attachment.m_Model:GetAttachment(attachment.m_Model:LookupAttachment(attachment.Reticle.Attachment))

            local localPos, localAng = WorldToLocal(data.Pos, data.Ang, reticleData.Pos, reticleData.Ang)
            attachment.AimPos = Vector(-localPos.y, localPos.x + 4, localPos.z) --converted from stupid cod forward
            attachment.AimAng = Angle()--Angle(localAng.p, localAng.y, -localAng.r) --shouldnt need to change aim angles

            if (attachment.ReticleHybrid) then
                reticleData = attachment.m_Model:GetAttachment(attachment.m_Model:LookupAttachment(attachment.ReticleHybrid.Attachment))

                localPos, localAng = WorldToLocal(reticleData.Pos, reticleData.Ang, data.Pos, data.Ang)
                attachment.HybridAimPos = Vector(localPos.y, localPos.x, -localPos.z) 
                attachment.HybridAimAng = Angle(localAng.p, localAng.y, -localAng.r)
                --this was just trial and error tbh
            end
        end
    end

    if (!IsValid(attachment.m_TpModel)) then
        attachment.m_TpModel = ClientsideModel(attachment.Model, self.RenderGroup)
        attachment.m_TpModel:SetRenderMode(self.RenderMode)
        attachment.m_TpModel:SetMoveType(MOVETYPE_NONE)

        if (attachment.VElement == nil) then
            attachment.m_TpModel:AddEffects(EF_BONEMERGE)
            attachment.m_TpModel:AddEffects(EF_BONEMERGE_FASTCULL)
            attachment.m_TpModel:AddEffects(EF_PARENT_ANIMATES)
            attachment.m_TpModel:AddEffects(EF_NOINTERP)
        end

        if (attachment.BonemergeToAttachment == nil && attachment.BonemergeToCategory == nil) then
            attachment.m_TpModel:SetParent(self.m_WorldModel)
        end
    end

    doAttBodygroups(self, attachment.m_Model)
    doAttBodygroups(self, attachment.m_TpModel)
end

function SWEP:GetAttachmentInUseForSlot(slot)
    return self.m_CustomizationInUse[slot]
end

function SWEP:GetAllAttachmentsInUse()
    return self.m_CustomizationInUse
end

function SWEP:BuildCustomizedGun()
    --this resets gun to defaults, but keeps the internal variables
    self:DeepObjectCopy(weapons.Get(self:GetClass()), self)

    self:ResetBodygroups()

    --apply firemode first while resetting defaults:
    self:ApplyFiremodeStats()
    self:SetBurstRounds(0)
    self:SetCamo("")

    self.reticle = nil
    self.flashlight = nil
    self.laser = nil
    
    if (self.Customization == nil) then
        return
    end
    
    clearBaseClass(self.Customization)
    clearBaseClass(self.Animations)

    if (CLIENT) then
        self:SetViewModel(self.VModel)
        self:SetWorldModel(self.WorldModel)

        self.GripPoseParameter.PoseParameter = nil
        self.GripPoseParameter2.PoseParameter = nil
    end 

    --check if atts are allowed
    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        if (att == nil || !self:IsAttachmentAllowed(att)) then
            self:CreateAttachmentForUse(self.Customization[slot][1])
        end
    end

    --this is needed for level transitions
    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        table.Inherit(att, self:GetStoredAttachment(att.ClassName))
    end

    self.ValuesToRemove = {}

    bDoingStats = true

    --making sure people dont access them while doing stats
    local vmodel = self.m_ViewModel
    local wmodel = self.m_WorldModel

    self.m_ViewModel = nil
    self.m_WorldModel = nil
    
    local stats = {}
    self:DeepObjectCopy(self:GetTable(), stats)

    local c = 0

    for slot, attachment in pairs(self:GetAllAttachmentsInUse()) do
        if (attachment.Flashlight != nil) then
            self.flashlight = attachment
        end

        if (attachment.Laser != nil) then
            self.laser = attachment
        end

        if (attachment.Reticle != nil) then
            self.reticle = attachment
        end

        if (attachment.Index > 1) then
            attachment:Stats(stats)
            self:MakeBreadcrumbsForAttachment(attachment)
        end
    end
    
    clearBaseClass(stats)
    self:DeepObjectCopy(stats, self)

    bDoingStats = false

    self.m_ViewModel = vmodel
    self.m_WorldModel = wmodel

    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        att:PostProcess(self)
    end
    
    --check magazine:
    if (IsValid(self:GetOwner())) then
        local maxClip = self:GetMaxClip1WithChamber()

        if (self:Clip1() > maxClip) then
            local diff = self:Clip1() - maxClip
            self:SetClip1(self:Clip1() - diff)
            self:GetOwner():SetAmmo(self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) + diff, self:GetPrimaryAmmoType())
        end
    end

    --check if we can keep aim mode
    if (!self:CanChangeAimMode()) then
        self:SetAimMode(0)
    end

    --create models:
    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        self:CreateAttachmentModel(att)
    end

    --bodygroups:
    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        if (att.Bodygroups != nil) then
            for bg, v in pairs(att.Bodygroups) do
                self:DoBodygroup(bg, v)
            end
        end
    end

    if (CLIENT) then
        for slot, att in pairs(self:GetAllAttachmentsInUse()) do
            att:Appearance(self.m_ViewModel, "Weapon")
            att:Appearance(self.m_WorldModel, "Weapon")

            for _, att2 in pairs(self:GetAllAttachmentsInUse()) do
                if (att2.Model != nil) then
                    att:Appearance(att2.m_Model, att2.Category)
                    att:Appearance(att2.m_TpModel, att2.Category)
                end
            end
        end
    end

    --meme marine
    self:SetHoldType("camera")
    timer.Simple(0, function()
        if !IsValid(self) then return end
        self:SetShouldHoldType(true)
    end)
end

--old way was just overcomplicated for no reason
function SWEP:MakeBreadcrumbsForAttachment(attachment)
    if (attachment.Breadcrumbs == nil) then
        --make breadcrumbs
        --make another copy of swep
        local breadcrumbs = {}
        self:DeepObjectCopy(weapons.Get(self:GetClass()), breadcrumbs)
        attachment:Stats(breadcrumbs) --run stats (lol he doesnt know its actually not a gun!!)

        --make bcs
        attachment.Breadcrumbs = {}
        self:MakeBreadcrumbs(attachment.Breadcrumbs, weapons.Get(self:GetClass()), breadcrumbs) --looks at differences in numbers only
    end
end

function SWEP:MakeBreadcrumbs(holder, original, changed, currentPath)
    currentPath = currentPath || "SWEP"

    for k, v in pairs(original) do
        if (tostring(k) == "BaseClass" || tostring(k) == "m_Index") then
            continue
        end

        if (isnumber(v)) then
            if (changed[k] != v) then
                local path = currentPath.."."..tostring(k)
                if (self.StatDefinitions[path] == nil) then
                    continue
                end

                holder[self.StatDefinitions[path]] = holder[self.StatDefinitions[path]] || {}
                table.Merge(holder[self.StatDefinitions[path]], {Original = v, Current = changed[k]}) 
            end
        elseif (istable(v) && changed[k] != nil) then
            self:MakeBreadcrumbs(holder, v, changed[k], currentPath.."."..tostring(k))
        end
    end
end

function SWEP:VectorAddAndMul(current, add, mul)
    current.x = current.x + (add.x * mul)
    current.y = current.y + (add.y * mul)
    current.z = current.z + (add.z * mul)
end

function SWEP:RenderCustomization(model)
    for slot, attachment in pairs(self:GetAllAttachmentsInUse()) do
        local attModel = model == self.m_ViewModel && attachment.m_Model || attachment.m_TpModel

        if (attModel == nil) then
            continue
        end

        if (attachment.VElement == nil) then
            if (attachment.BonemergeToAttachment != nil || attachment.BonemergeToCategory != nil) then
                if (IsValid(attModel:GetParent())) then
                    continue
                end

                for slot, attParent in pairs(self:GetAllAttachmentsInUse()) do
                    if (attParent == attachment) then
                        continue
                    end

                    if (attachment.BonemergeToCategory != nil && table.HasValue(attachment.BonemergeToCategory, attParent.Category)) then
                        attModel:SetParent(model == self.m_ViewModel && attParent.m_Model || attParent.m_TpModel)
                        break
                    end

                    if (attachment.BonemergeToAttachment != nil && table.HasValue(attachment.BonemergeToAttachment, attParent.ClassName)) then
                        attModel:SetParent(model == self.m_ViewModel && attParent.m_Model || attParent.m_TpModel)
                        break
                    end
                end
            end
        else
            --i've largely left this for community because at this point we don't even use this anymore
            --in a perfect world everyone rigs their models to have bones matching the viewmodel for bonemerge
            --but realizing i'd cripple half the things on the ws i left this here (and made it a bit easier to develop with)
            local ve = attachment.VElement
            local bone = self:LookupBoneCached(model, ve.Bone)
            local matrix = model:GetBoneMatrix(bone)

            if (matrix == nil) then
                continue
            end
            
            local oPos, oAng = self:GetTotalAttachmentOffset(attachment)

            local ang = matrix:GetAngles()
            ang:RotateAroundAxis(ang:Forward(), ve.Angles.r + oAng.r)
            ang:RotateAroundAxis(ang:Right(), ve.Angles.y + oAng.y)
            ang:RotateAroundAxis(ang:Up(), ve.Angles.p + oAng.p)

            local pos = matrix:GetTranslation()
            self:VectorAddAndMul(pos, ang:Forward(), ve.Position.y + oPos.y)
            self:VectorAddAndMul(pos, ang:Right(), ve.Position.x + oPos.x)
            self:VectorAddAndMul(pos, ang:Up(), ve.Position.z + oPos.z)

            attModel:SetRenderOrigin(pos)
            attModel:SetRenderAngles(ang) 
        end
    end

    self:DrawLaser(model)

    if (GetViewEntity() == self:GetOwner()) then
        self:DrawFlashlight(model)
    end
end

function SWEP:GetTotalAttachmentOffset(currentAttachment)
    local pos = Vector()
    local ang = Angle()

    local offsets = currentAttachment.VElement.Offsets

    if offsets != nil then
        for slot, attachment in pairs(self:GetAllAttachmentsInUse()) do
            if (offsets[attachment.ClassName] != nil) then
                pos:Add(offsets[attachment.ClassName][1])
                ang:Add(offsets[attachment.ClassName][2])
            end
        end
    end

    return pos, ang
end

function SWEP:DoBodygroup(name, value)
    if (SERVER) then
        return
    end

    local ind = self.m_ViewModel:FindBodygroupByName(name)

    if (ind != -1) then
        self.m_ViewModel:SetBodygroup(ind, value)
    end

    ind = self.m_WorldModel:FindBodygroupByName(name)

    if (ind != -1) then
        self.m_WorldModel:SetBodygroup(ind, value)
    end
end

function SWEP:ResetBodygroups()
    if (SERVER) then
        return
    end

    if (IsValid(self.m_ViewModel)) then
        for b = 0, self.m_ViewModel:GetNumBodyGroups() do
            self.m_ViewModel:SetBodygroup(b, 0)
        end
    end

    if (IsValid(self.m_WorldModel)) then
        for b = 0, self.m_WorldModel:GetNumBodyGroups() do
            self.m_WorldModel:SetBodygroup(b, 0)
        end
    end
end

function SWEP:GetAttachmentModels(slot)
    return self.m_CustomizationInUse[slot].m_Model, self.m_CustomizationInUse[slot].m_TpModel
end

function SWEP:GetSight()
    if (self.reticle == nil) then
        return nil
    end

    return self.reticle
end

function SWEP:GetLaser()
    if (self.laser == nil) then
        return nil
    end

    return self.laser
end

function SWEP:GetFlashlightAttachment()
    if (!self.flashlight) then
        return nil
    end

    return self.flashlight
end

hook.Add("PlayerSwitchFlashlight", "MW19_PlayerSwitchFlashlight", function(ply, enabled)
    local w = ply:GetActiveWeapon()
    if (ply:CanUseFlashlight() && !ply:FlashlightIsOn() && IsValid(w) && weapons.IsBasedOn(w:GetClass(), "mg_base")) then
        if (w:GetFlashlightAttachment() != nil) then
            ply:EmitSound("MW.Flashlight")
            w:SetFlashlight(!w:GetFlashlight())
            return false
        end
    end
end)

function SWEP:HasAttachment(class)
    if (self.Customization == nil) then
        return false
    end

    if (self.m_CustomizationInUse == nil) then
        return false
    end
    
    for slot, att in pairs(self:GetAllAttachmentsInUse()) do
        if (att.ClassName == class) then
            return true
        end
    end

    return false
end

function SWEP:IsAttachmentAllowed(attachment)
    if (attachment.Index == nil || attachment.Index > 1) then
        if (!attachment.CosmeticChange) then
            local attLimit = GetConVar("mgbase_sv_customization_limit"):GetInt()
            local currentCount = 0

            for slot, attachmentInUseInSlot in pairs(self:GetAllAttachmentsInUse()) do
                if (attachment != attachmentInUseInSlot && attachmentInUseInSlot.Index > 1 && !attachmentInUseInSlot.CosmeticChange) then
                    currentCount = currentCount + 1
                end
            end

            if (attLimit > 0 && currentCount >= attLimit) then
                return false
            end
        end

        if (hook.Run("MW19_AllowAttachment", self, attachment) == false) then
            return false
        end

        for slot, attachmentInUseInSlot in pairs(self:GetAllAttachmentsInUse()) do
            --by class name (very specific)
            if (attachmentInUseInSlot.ExcludedAttachments != nil) then
                if (table.HasValue(attachmentInUseInSlot.ExcludedAttachments, attachment.ClassName)) then
                    return false
                end
            end

            --by category name (broad for more attachments)
            if (attachmentInUseInSlot.ExcludedCategories != nil) then
                if (table.HasValue(attachmentInUseInSlot.ExcludedCategories, attachment.Category)) then
                    return false
                end
            end
        end
    end

    return true
end

function SWEP:SetGripPoseParameter(value)
    if (CLIENT) then
        if (self.GripPoseParameters == nil) then
            return error("you haven't defined any grip pose parameters")
        end

        if (!table.HasValue(self.GripPoseParameters, value)) then
            return error("pose parameter "..value.." was not defined in GripPoseParameters!")
        end

        self.GripPoseParameter.PoseParameter = value
    end
end

function SWEP:SetGripPoseParameter2(value)
    if (CLIENT) then
        if (self.GripPoseParameters2 == nil) then
            return error("you haven't defined any grip pose parameters 2")
        end

        if (!table.HasValue(self.GripPoseParameters2, value)) then
            return error("pose parameter "..value.." was not defined in GripPoseParameters2!")
        end

        self.GripPoseParameter2.PoseParameter = value
    end
end

function SWEP:DisableGrip(instant)
    if (instant) then
        self.GripPoseParameter.Lerp = 0
    end

    self.GripPoseParameter.Target = 0
end

function SWEP:EnableGrip(instant)
    if (instant) then
        self.GripPoseParameter.Lerp = 1
    end

    self.GripPoseParameter.Target = 1
end

function SWEP:DisableGrip2(instant)
    if (instant) then
        self.GripPoseParameter2.Lerp = 0
    end

    self.GripPoseParameter2.Target = 0
end

function SWEP:EnableGrip2(instant)
    if (instant) then
        self.GripPoseParameter2.Lerp = 1
    end

    self.GripPoseParameter2.Target = 1
end

local bDoingStats = false

function SWEP:SetViewModel(path)
    if (bDoingStats) then
        error("Do not use this while building stats!")
    end

    if (SERVER) then
        return
    end

    self.m_ViewModel:SetModel(path)
    self.m_ViewModel.cachedBones = nil
end

function SWEP:SetWorldModel(path)
    if (bDoingStats) then
        error("Do not use this while building stats!")
    end

    if (SERVER) then
        return
    end

    self.m_WorldModel:SetModel(path)
    self.m_WorldModel.cachedBones = nil
end

if (SERVER) then
    return
end

local ParallaxMaterial = Material("mw19_parallax.vmt")
local RefractMaterial = Material("mw19_scoperefract.vmt")
local RefractTintMaterial = Material("mw19_refracttint.vmt")
local _rt = {
    fov = 6.5,
    drawviewmodel = false,
    drawhud = false,
    dopostprocess = false
}

local thermalCC = {
    [ "$pp_colour_addr" ] = 0,
	[ "$pp_colour_addg" ] = 0,
	[ "$pp_colour_addb" ] = 0,
	[ "$pp_colour_brightness" ] = 2,
	[ "$pp_colour_contrast" ] = 0.1,
	[ "$pp_colour_colour" ] = 0,
	[ "$pp_colour_mulr" ] = 0,
	[ "$pp_colour_mulg" ] = 0,
	[ "$pp_colour_mulb" ] = 0
}
local ThermalNoiseMaterial = Material("mw19_thermalnoise.vmt")

function SWEP:DrawThermalEntities()
    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)

    cam.Start3D()

    for i, e in pairs(ents.GetAll()) do
        if (e:IsNPC() || e:IsPlayer() || e:IsNextBot()) then
            if (e:GetNoDraw()) then
                continue
            end

            e:SetupBones()
            e:DrawModel()
        end
    end

    cam.End3D()

    render.SetStencilCompareFunction(STENCIL_EQUAL)

    surface.SetDrawColor(255, 255, 255, math.random(200, 255))
    surface.DrawRect(0, 0, ScrW(), ScrH())

    render.SetStencilEnable(false)
    render.ClearStencil()
end

function SWEP:DrawLaser(model)
    if (self:GetLaser() == nil) then
        return
    end

    local laserModel = model == self.m_ViewModel && self:GetLaser().m_Model || self:GetLaser().m_TpModel

    local att = laserModel:GetAttachment(laserModel:LookupAttachment(self:GetLaser().Laser.Attachment))
    local tr = util.TraceLine({
        start = att.Pos + att.Ang:Forward() * -10,
        endpos = att.Pos + att.Ang:Forward() * 1000,
        filter = {self, self:GetOwner()},
        mask = MASK_SHOT
    })

    if (laserModel.mw_laserTrailPos == nil) then
        laserModel.mw_laserTrailPos = tr.HitPos
    end

    local distSq = tr.HitPos:DistToSqr(att.Pos)
    local beamDelta = math.Clamp(distSq / (self:GetLaser().Laser.BeamSize * self:GetLaser().Laser.BeamSize), 0, 1)

    local color = self:GetLaser().Laser.Color

    if (GetConVar("mgbase_fx_laser_weaponcolor", 0):GetBool()) then
        if (IsValid(self:GetOwner()) && self:GetOwner():IsPlayer()) then
            local c = self:GetOwner():GetWeaponColor()
            color = Color(c.x * 255, c.y * 255, c.z * 255, 255)
        end
    end

    render.SetMaterial(self:GetLaser().Laser.BeamMaterial)
    render.DrawBeam(att.Pos, att.Pos + att.Ang:Forward() * (beamDelta * self:GetLaser().Laser.BeamSize), self:GetLaser().Laser.BeamWidth * math.random(0.5, 1), 0, 0.95, color)

    local bCanDrawLaser = true

    if (self:GetSight() == nil || self:GetSight().ReticleHybrid == nil) then
        bCanDrawLaser = self:GetAimMode() >= 1
    else
        bCanDrawLaser = self:GetAimMode() >= 2
    end

    local pos = tr.HitPos * 1

    if (bCanDrawLaser) then
        self:SafeLerpVector(self:GetAimDelta() * 0.8, pos, EyePos() + EyeAngles():Forward() * 300)
    end

    local normal = tr.HitNormal * 1
    self:SafeLerpVector(self:GetAimDelta(), normal, (EyePos() - pos):GetNormalized())

    local sens = Lerp(self:GetAimDelta(), 50, 150)
    self:SafeLerpVector(math.min(sens * FrameTime(), 1), laserModel.mw_laserTrailPos, pos)

    local bCanDrawDistance = tr.HitPos:DistToSqr(att.Pos) > (10 * 10)
    if (!bCanDrawDistance) then
        return
    end

    if (self:GetAimDelta() < 0.5 || (bCanDrawLaser && self.LaserAimPos != nil && self.LaserAimAngles != nil)) then
        render.SetMaterial(self:GetLaser().Laser.DotMaterial)
        render.DrawQuadEasy(pos, normal, self:GetLaser().Laser.DotSize, self:GetLaser().Laser.DotSize, color, math.random(179, 180))
        render.DrawBeam(laserModel.mw_laserTrailPos, pos, self:GetLaser().Laser.DotSize * 0.8, 0, 0.5, color)
    end
end

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

function SWEP:DrawFlashlight(model)
    if (self:GetFlashlightAttachment() == nil) then
        return
    end

    --checking if we are rendering twice
    --delete one of them if so
    if (model != self.m_ViewModel) then
        removeFlashlightStuffFromModel(self:GetFlashlightAttachment().m_Model)
    else
        removeFlashlightStuffFromModel(self:GetFlashlightAttachment().m_TpModel)
    end

    local flashModel = model == self.m_ViewModel && self:GetFlashlightAttachment().m_Model || self:GetFlashlightAttachment().m_TpModel
    
    if (!self:GetFlashlight() || self:GetOwner():FlashlightIsOn() || self:GetIsHolstering()) then
        removeFlashlightStuffFromModel(flashModel)
        return
    end

    local attId = flashModel:LookupAttachment(self:GetFlashlightAttachment().Flashlight.Attachment)
    local att = flashModel:GetAttachment(attId)

    if (!IsValid(flashModel.mw_flashlightProjTexture)) then
        flashModel.mw_flashlightProjTexture = ProjectedTexture()
    end

    if (!IsValid(flashModel.mw_flashlightParticle)) then
        flashModel.mw_flashlightParticle = CreateParticleSystem(flashModel, "flashlight_mw19", PATTACH_POINT_FOLLOW, attId)
        flashModel.mw_flashlightParticle:StartEmission()
    end

    local proj = flashModel.mw_flashlightProjTexture
    proj:SetPos(att.Pos + att.Ang:Forward() * -3)
    proj:SetAngles(att.Ang)
    proj:SetFOV(50)
    proj:SetTexture(self:GetFlashlightAttachment().Flashlight.FlashlightMaterial:GetTexture("$basetexture"))
    proj:Update()

    local particle = flashModel.mw_flashlightParticle
    particle:SetShouldDraw(false)
    particle:SetControlPoint(1, att.Pos)
    particle:SetControlPointOrientation(1, att.Ang:Forward(), att.Ang:Right(), att.Ang:Up())
    particle:Render()
end