ATTACHMENT.Base = "att_sight"

function ATTACHMENT:Render(weapon)
    self:DoReticleStencil(self.m_Model, self.Reticle)
end

function ATTACHMENT:DoReticleStencil(model, ret)
    render.SetStencilWriteMask(0xFF)
    render.SetStencilTestMask(0xFF)
    render.SetStencilReferenceValue(0)
    render.SetStencilCompareFunction(STENCIL_ALWAYS)
    render.SetStencilPassOperation(STENCIL_REPLACE)
    render.SetStencilFailOperation(STENCIL_KEEP)
    render.SetStencilZFailOperation(STENCIL_KEEP)
    render.SetStencilEnable(true)
    render.SetStencilReferenceValue(MWBASE_STENCIL_REFVALUE + 1)

    model:DrawModel()

    render.SetStencilCompareFunction(STENCIL_EQUAL)

    local att = self.m_Model:GetAttachment(self.m_Model:LookupAttachment(ret.Attachment))
    local size = ret.Size 
    local color = ret.Color
    render.SetMaterial(ret.Material)
    --i don't know which one is faster, but the second one has a roll option
    --render.DrawSprite(att.Pos + att.Ang:Forward() * 100, size * 0.01, size * 0.01, color)
    render.DrawQuadEasy(att.Pos + att.Ang:Forward() * 100, att.Ang:Forward():GetNegated(), size * 0.01, size * 0.01, color, -att.Ang.r + 180)

    render.SetStencilEnable(false)
    render.ClearStencil()
end