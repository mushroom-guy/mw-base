ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = ".458 SOCOM 10-Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_mag_v5.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_mag_v5.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 10
    weapon.Animations.Reload = weapon.Animations.Reload
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Fast
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.25
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.4
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.4
    weapon.Primary.RPM = weapon.Primary.RPM * 0.75
    weapon.Bullet.HeadshotMultiplier = 2
    weapon:doSocomConversionStats()
end