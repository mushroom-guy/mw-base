ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = ".45 Hollow Point 12-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_smags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_smags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.RPM = weapon.Primary.RPM - 19
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.14
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.14
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.25
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.25
        --weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        --weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.35
end