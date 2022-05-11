ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "18.0 Ultralight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.05
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.05
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91 
end