ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = ".357 Snub Nose"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_shortbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_shortbarrel.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.13
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.13
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
end