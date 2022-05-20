ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default Sight"
ATTACHMENT.Category = "Sights"

function ATTACHMENT:RenderReticle(weapon)
    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)

    self.m_Model:DrawModel()

    render.SetStencilCompareFunction(STENCIL_EQUAL)

    local att = self.m_Model:GetAttachment(self.m_Model:LookupAttachment(self.Reticle.Attachment))
    local pos, ang = att.Pos, att.Ang
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
end