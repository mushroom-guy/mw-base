ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Bayonet"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_bayonet_akilo47.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_bayonet_akilo47.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Melee = weapon.Animations.Melee_Bayonet
    weapon.Animations.Melee_Hit = weapon.Animations.Melee_Hit_Bayonet

    weapon.Animations.Melee_Hit_Bayonet.Damage = 50
end 