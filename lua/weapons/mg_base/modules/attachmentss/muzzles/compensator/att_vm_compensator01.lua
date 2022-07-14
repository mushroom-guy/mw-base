ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Compensator"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_compensator01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_compensator01.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Cone.Ads = weapon.Cone.Ads * 0.9
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9
end 