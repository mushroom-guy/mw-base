ATTACHMENT.Base = "attachment_vm_pi_mike1911_barshort"
ATTACHMENT.Name = "Marching Orders"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_barshort_v23.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_barshort.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_EPIC
ATTACHMENT.CosmeticChange = true