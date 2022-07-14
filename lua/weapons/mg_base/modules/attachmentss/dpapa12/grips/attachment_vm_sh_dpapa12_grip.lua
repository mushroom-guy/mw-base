ATTACHMENT.Base = "att_grip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_grip.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 