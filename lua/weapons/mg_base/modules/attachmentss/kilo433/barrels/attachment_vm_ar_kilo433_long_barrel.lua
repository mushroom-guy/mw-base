ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Singuard Arms 19.8 Prowler"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_long_barrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_long_barrel.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
end