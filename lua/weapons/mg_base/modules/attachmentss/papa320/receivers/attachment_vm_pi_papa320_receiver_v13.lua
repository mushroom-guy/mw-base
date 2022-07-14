ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Heavy Silence"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_receiver_v13.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_receiver_v2.vmt")
ATTACHMENT.Bodygroups = {
    ["receiver"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.CosmeticChange = true