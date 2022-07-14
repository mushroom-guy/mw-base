ATTACHMENT.Base = "att_sight_reticle"

if (SERVER) then
    return
end

ATTACHMENT._RTTexture = GetRenderTarget("mw19_rt", 512, 512)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
local ParallaxMaterial = Material("mw19_parallax.vmt")
local RefractMaterial = Material("mw19_scoperefract.vmt")
local RefractTintMaterial = Material("mw19_refracttint.vmt")
local function util_NormalizeAngles(a)
    a.p =  math.NormalizeAngle(a.p)
    a.y =  math.NormalizeAngle(a.y)
    a.r =  math.NormalizeAngle(a.r)
    return a
end

function ATTACHMENT:Init(weapon)
    BaseClass.Init(self, weapon)
    
    self.hideModel = ClientsideModel(self.Optic.HideModel, weapon.RenderGroup)
    self.hideModel:SetMoveType(MOVETYPE_NONE)
    self.hideModel:SetNoDraw(true)
end

function ATTACHMENT:OnRemove(weapon)
    BaseClass.OnRemove(self, weapon)

    self.hideModel:Remove()
end

--https://github.com/Lexicality/stencil-tutorial/blob/master/lua/stencil_tutorial/06_cutting_holes_in_props.lua
function ATTACHMENT:Render(weapon)

    local bCanRemoveBodygroup = weapon:GetAimModeDelta() < 0.5 && weapon:GetAimDelta() > 0.9
    
    self.m_Model:SetBodygroup(
        self.m_Model:FindBodygroupByName(self.Optic.LensBodygroup), 
        bCanRemoveBodygroup && 0 || 1
    )

    if (!bCanRemoveBodygroup) then
        self.m_Model:DrawModel()
        return
    end
 
	render.SetStencilWriteMask(0xFF)
	render.SetStencilTestMask(0xFF)
	render.SetStencilReferenceValue(0)
	render.SetStencilPassOperation(STENCIL_KEEP)
	render.SetStencilZFailOperation(STENCIL_KEEP)
	render.ClearStencil()
	render.SetStencilEnable(true)
	render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 2)
	render.SetStencilCompareFunction(STENCIL_NEVER)
	render.SetStencilFailOperation(STENCIL_REPLACE)

    --dirty and quick way to make it work with velements and bonemerged
    self.m_Model:SetupBones()
    self.m_Model:InvalidateBoneCache()
    local matrix = self.m_Model:GetBoneMatrix(0)

    self.hideModel:SetPos(matrix:GetTranslation())
    self.hideModel:SetAngles(matrix:GetAngles())

	self.hideModel:DrawModel()

	render.SetStencilCompareFunction(STENCIL_NOTEQUAL)
	render.SetStencilFailOperation(STENCIL_KEEP)

	self.m_Model:DrawModel()

	render.SetStencilEnable(false)

    ------------------------------

    self:DoReticleStencil(self.hideModel, self.Reticle, weapon)

    ------------------------------

    local att = self.m_Model:GetAttachment(self.m_Model:LookupAttachment(self.Reticle.Attachment))
    render.PushRenderTarget(self._RTTexture, 0, 0, 1024, 1024)
    cam.Start2D()
        render.Clear(0, 0, 0, 0)

        --REFTINT:
        local tintSize = 400
        surface.SetMaterial(RefractTintMaterial)
        surface.SetDrawColor(0, 0, 0, 255)

        --for i = 1, 2, 1 do
        surface.DrawTexturedRect(tintSize * -0.5, tintSize * -0.5, ScrW() + tintSize, ScrH() + tintSize)
        --end
        ----

        self:DrawParallax(weapon, att.Ang)
	cam.End2D()
	render.PopRenderTarget()
    
    self.Optic.LensHideMaterial:SetTexture("$basetexture", self._RTTexture)
end

function ATTACHMENT:DrawParallax(weapon, ang)
    ang:Sub(EyeAngles())
    
    local angDif = util_NormalizeAngles(ang) * 100
    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 2)

    surface.SetMaterial(ParallaxMaterial)
    surface.SetDrawColor(0, 0, 0, 255)

    local pSize = self.Optic.ParallaxSize

    surface.DrawTexturedRect(ScrW() * -0.5 - pSize * 0.5 - angDif.y, ScrH() * -0.5 - pSize * 0.5 + angDif.p, ScrW() * 2 + pSize, ScrH() * 2 + pSize)

    render.SetStencilCompareFunction(STENCIL_NOTEQUAL)

    surface.SetDrawColor(0, 0, 0, 255)
    surface.DrawRect(0, 0, ScrW(), ScrH())
    
    render.SetStencilEnable(false)
    render.ClearStencil()
end
