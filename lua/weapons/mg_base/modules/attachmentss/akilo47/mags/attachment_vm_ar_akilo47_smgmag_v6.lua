ATTACHMENT.Base = "attachment_vm_ar_akilo47_smgmag"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_smgmag_akilo47_v6.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgmag_akilo47_v6.vmt")
ATTACHMENT.Name = "Freedom Fighter"
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_EPIC
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end