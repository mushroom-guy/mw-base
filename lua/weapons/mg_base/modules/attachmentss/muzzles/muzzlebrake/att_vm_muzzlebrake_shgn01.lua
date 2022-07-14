ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Muzzle Brake"
ATTACHMENT.Model = Model("models/viper/mw/attachments/shotgun//attachment_vm_muzzlebrake_shgn01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlebrake_shgn01.vmt")
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

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.9
    weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.9
end