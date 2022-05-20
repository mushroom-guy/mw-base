ATTACHMENT.Base = "att_sight"

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
    self.hideModel:AddEffects(EF_BONEMERGE)
    self.hideModel:AddEffects(EF_BONEMERGE_FASTCULL)
    self.hideModel:AddEffects(EF_NOINTERP)
    self.hideModel:SetMoveType(MOVETYPE_NONE)
    self.hideModel:SetParent(weapon.m_ViewModel)
    self.hideModel:SetNoDraw(true)
end

function ATTACHMENT:OnRemove(weapon)
    BaseClass.OnRemove(self, weapon)

    self.hideModel:Remove()
end

--https://github.com/Lexicality/stencil-tutorial/blob/master/lua/stencil_tutorial/06_cutting_holes_in_props.lua
function ATTACHMENT:RenderReticle(weapon)
    

	render.SetStencilWriteMask(0xFF)
	render.SetStencilTestMask(0xFF)
	render.SetStencilReferenceValue(0)
	render.SetStencilPassOperation(STENCIL_KEEP)
	render.SetStencilZFailOperation(STENCIL_KEEP)
	render.ClearStencil()
	render.SetStencilEnable(true)
	render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)
	render.SetStencilCompareFunction(STENCIL_NEVER)
	render.SetStencilFailOperation(STENCIL_REPLACE)

	self.hideModel:DrawModel()

	render.SetStencilCompareFunction(STENCIL_NOTEQUAL)
	render.SetStencilFailOperation(STENCIL_KEEP)

	self.m_Model:DrawModel()

	render.SetStencilEnable(false)

    ------------------------------

    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 2)

    self.hideModel:DrawModel()

    render.SetStencilCompareFunction(STENCIL_EQUAL)

    local att = self.m_Model:GetAttachment(self.m_Model:LookupAttachment(self.Reticle.Attachment))
    local pos, ang = att.Pos*1, att.Ang*1
    ang:RotateAroundAxis(ang:Up(), 270)
    ang:RotateAroundAxis(ang:Right(), 0)
    ang:RotateAroundAxis(ang:Forward(), 90)

    cam.Start3D2D(pos + ang:Up() * -100, ang, 0.01)
        surface.SetMaterial(self.Reticle.Material)

        local size = self.Reticle.Size 
        local color = self.Reticle.Color

        surface.SetDrawColor(color.r, color.g, color.b, color.a)
        for i = 1, GetConVar("mgbase_fx_reticle_brightness"):GetInt(), 1 do
            surface.DrawTexturedRect(size * -0.5, size * -0.5, size, size)
        end
    cam.End3D2D()

    render.SetStencilEnable(false)
    render.ClearStencil()

    ------------------------------

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
