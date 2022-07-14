ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = ".45 Compact"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_barshort.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.96
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.96
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.07
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.07
end