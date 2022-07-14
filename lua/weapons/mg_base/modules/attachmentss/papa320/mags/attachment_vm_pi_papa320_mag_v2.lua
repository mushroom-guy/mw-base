ATTACHMENT.Base = "attachment_vm_pi_papa320_mag"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_mag_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_mag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end