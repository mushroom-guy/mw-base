ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FR 24.4 Sniper"
ATTACHMENT.Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barrellong_alt.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_barrellong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
end