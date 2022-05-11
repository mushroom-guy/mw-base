ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Breacher Device"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_muzzlemelee01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlemelee01.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Melee_Hit.Damage = weapon.Animations.Melee_Hit.Damage * 1.25
end 