ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mcharlie/attachment_vm_ar_mcharlie_receiver.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_mcharlie_receiver.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end