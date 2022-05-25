ATTACHMENT.Base = "att_optic"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Render(weapon)
    BaseClass.Render(self, weapon)

    if (weapon:GetAimMode() > 0) then
        self:DoReticleStencil(self.ReticleHybrid)
    end
end