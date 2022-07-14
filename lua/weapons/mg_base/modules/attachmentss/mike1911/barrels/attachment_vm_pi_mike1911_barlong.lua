ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = ".45 Match Grade"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_barlong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.05
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.05
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.94
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.94 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
end