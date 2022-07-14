ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "1911 Stalker"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_v2_slide.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_v2_slide.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
end