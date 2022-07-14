ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60 Round 9mm Drum"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_drummag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 60
    weapon.Primary.RPM = 1000
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.85
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.85
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.5
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.5
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.5
    weapon.Animations.Reload = weapon.Animations.reload_drum
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_drum
    weapon.Animations.Reload_Fast = weapon.Animations.reload_drum_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_drum_fast
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.6
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.6
    weapon:doCalConversionStats()
end