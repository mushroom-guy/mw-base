ATTACHMENT.Base = "att_sight"

function ATTACHMENT:Render(weapon)
    self:DoReticleStencil(self.m_Model, self.Reticle, weapon)
end

function ATTACHMENT:DoReticleStencil(model, ret, weapon)
    if (weapon != nil && weapon.DrawHUD == nil) then
        model:DrawModel()
        return
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
    model:DrawModel()
    render.SetStencilCompareFunction(STENCIL_EQUAL)

    local att = self.m_Model:GetAttachment(self.m_Model:LookupAttachment(ret.Attachment))
    local size = ret.Size 
    local color = ret.Color
    render.SetMaterial(ret.Material)
    --i don't know which one is faster, but the second one has a roll option
    --render.DrawSprite(att.Pos + att.Ang:Forward() * 100, size * 0.01, size * 0.01, color)
    
    local offset = att.Ang:Forward() * 100
    
    if (ret.Offset != nil) then
        offset = offset + att.Ang:Right() * ret.Offset.x
        offset = offset + att.Ang:Up() * ret.Offset.y
    end

    render.DrawQuadEasy(att.Pos + offset, att.Ang:Forward():GetNegated(), size * 0.01, size * 0.01, color, -att.Ang.r + 180)

    render.SetStencilEnable(false)
    render.ClearStencil()
end