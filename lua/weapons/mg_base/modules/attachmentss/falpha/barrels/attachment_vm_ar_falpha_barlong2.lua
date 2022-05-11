ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "TAC FORGE Ultralight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barlong2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_barlong2.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.03
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.03
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
end