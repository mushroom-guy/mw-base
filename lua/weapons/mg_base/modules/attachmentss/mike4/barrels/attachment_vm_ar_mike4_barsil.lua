ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS 12.4 Predator"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barsil.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_barsil.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.95
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.95
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.85
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.05
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
    weapon:doSuppressorStats()
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end