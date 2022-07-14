ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "5.45x39mm 30-Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgmag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgmag_akilo47.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doSmgStats()
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.98
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.98
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.8
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.7
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.8
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.8
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.8
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.8
    weapon.Primary.ClipSize = 30
    weapon.Primary.RPM = 690
    weapon.PrintName = "AK-74"

    if (weapon:HasAttachment("attachment_vm_ar_akilo47_smgbarrel") || weapon:HasAttachment("attachment_vm_ar_akilo47_smgbarcust")) then 
        weapon.PrintName = "AKS-74U"
    end

    if (weapon:HasAttachment("attachment_vm_ar_akilo47_custombarrel")) then 
        weapon.PrintName = "AK-12"
    end

end