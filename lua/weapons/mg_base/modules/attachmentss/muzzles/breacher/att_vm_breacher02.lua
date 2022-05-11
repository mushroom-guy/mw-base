ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Breacher Device"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_muzzlemelee02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlemelee02.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97 
    weapon.Animations.Melee_Hit.Damage = weapon.Animations.Melee_Hit.Damage * 1.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
end 