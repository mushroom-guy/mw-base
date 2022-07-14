ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "9mm Hollow Point 12-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_smags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_smags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.RPM = weapon.Primary.RPM - 511
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.7
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.7
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.7
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.7
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.2
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.1
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.1
end