ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60 Round Casket Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_xmagslrg.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_xmagslrg.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 60
    weapon.Animations.Reload = weapon.Animations.reload_xmaglrg
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_xmaglrg
    weapon.Animations.Reload_Fast = weapon.Animations.reload_xmaglrg_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_xmaglrg_fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.85
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.85
end