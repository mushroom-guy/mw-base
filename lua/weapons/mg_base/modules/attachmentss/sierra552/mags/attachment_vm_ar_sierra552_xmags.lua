ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "50 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_xmags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_xmags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 50
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
    weapon.Animations.Reload = weapon.Animations.reload_mmag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_mmag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_mmag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_mmag_fast
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end