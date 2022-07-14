ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "32 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_smg_xmag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_smg_xmag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 32
    weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
end