ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Choke"
ATTACHMENT.Model = Model("models/viper/mw/attachments/shotgun/attachment_vm_sh_romeo870_choke.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_sh_romeo870_choke.vmt")
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

    weapon.Cone.Hip =  weapon.Cone.Hip * 0.88
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.88
end