ATTACHMENT.Base = "att_grip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_grip.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end