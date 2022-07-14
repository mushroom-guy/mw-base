ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "45 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_xmagslrg.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_xmagslrg.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 45
        weapon.Animations.Reload = weapon.Animations.Reload_Xmaglrg
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmaglrg
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
end