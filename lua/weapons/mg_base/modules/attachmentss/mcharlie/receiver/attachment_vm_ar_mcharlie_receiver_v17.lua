ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Slaying Moon"
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.CosmeticChange = true
ATTACHMENT.Model = Model("models/viper/mw/attachments/mcharlie/attachment_vm_ar_mcharlie_receiver_v17.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mcharlie/icon_attachment_ar_mcharlie_receiver.vmt")

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