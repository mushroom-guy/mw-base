ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "War Saw"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_receiver_akilo47_v12.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_receiver_akilo47_v12.vmt")
ATTACHMENT.Bodygroups={
    ["receiver"] = 1
}
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_EPIC
ATTACHMENT.CosmeticChange = true
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.PrintName = "AKM"
    -- if (weapon:HasAttachment("attachment_vm_ar_akilo47_smgbarrel") || weapon:HasAttachment("attachment_vm_ar_akilo47_smgbarcust")) then 
    --     weapon.PrintName = "AKS-74U"
    -- end
end