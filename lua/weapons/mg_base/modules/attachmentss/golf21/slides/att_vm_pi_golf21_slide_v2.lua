ATTACHMENT.Base = "att_vm_pi_golf21_slide"
ATTACHMENT.Name = "Urban Defiler"
ATTACHMENT.Model = Model("models/viper/mw/attachments/golf21_slide_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_v2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_EPIC
ATTACHMENT.CosmeticChange = true