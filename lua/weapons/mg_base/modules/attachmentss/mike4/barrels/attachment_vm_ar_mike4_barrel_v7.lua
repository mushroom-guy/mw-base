ATTACHMENT.Base = "attachment_vm_ar_mike4_barsil"
ATTACHMENT.Name = "XRK"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barrel_v7.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_barsil.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end