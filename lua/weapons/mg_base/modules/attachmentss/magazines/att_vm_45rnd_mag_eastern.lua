ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "45 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_anov94_xmags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_ar_anov94_xmags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 45
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    weapon:doSmgStats()
end