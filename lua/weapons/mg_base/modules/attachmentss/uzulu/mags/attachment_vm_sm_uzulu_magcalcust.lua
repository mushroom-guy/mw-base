ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = ".41 AE 32-Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_magcalcust.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_mag_clip.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.15
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.15
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Primary.ClipSize = 32
        weapon.Primary.RPM = 500
end