ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "9x19mm 32-Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_mag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_mag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.89
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.99
        weapon.Primary.ClipSize = 32
        weapon.Primary.RPM = 960
        weapon:doCalConversionStats()
end