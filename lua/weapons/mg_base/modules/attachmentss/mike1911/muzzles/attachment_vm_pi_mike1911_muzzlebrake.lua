ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Muzzle Brake"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_muzzlebrake.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_muzzlebrake.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.98
    weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.98
    weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.98
    weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.98
end