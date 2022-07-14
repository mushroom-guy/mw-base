ATTACHMENT.Base = "attachment_vm_pi_mike9_barauto"
ATTACHMENT.Name = "Guard One"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barauto_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barauto.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.CosmeticChange = true