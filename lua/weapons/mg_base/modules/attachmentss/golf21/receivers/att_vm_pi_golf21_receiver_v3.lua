ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Impossible Task"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_receiver_v3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_receiver_v3.vmt")
ATTACHMENT.Bodygroups = {
    ["receiver"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_COMMON
ATTACHMENT.CosmeticChange = true