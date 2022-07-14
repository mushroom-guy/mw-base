ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "M67 10-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_smag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_smag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 10
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Reload = weapon.Animations.reload_smag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_smag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_smag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_smag_fast
end