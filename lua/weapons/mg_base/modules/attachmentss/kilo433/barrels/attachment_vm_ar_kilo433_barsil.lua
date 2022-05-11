ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Singuard Arms Whisper"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_barsil.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_barsil.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.96
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.96
    weapon.Bullet.EffectiveRange =  weapon.Bullet.EffectiveRange * 1.05
    weapon.Bullet.DropOffStartRange =  weapon.Bullet.DropOffStartRange * 1.05
    weapon:doSuppressorStats()
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end