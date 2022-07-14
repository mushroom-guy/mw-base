ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_xmags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_xmags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 60
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag2
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag2
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.85
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.85
end