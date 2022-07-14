ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "23.0 RPK Barrel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_lmgbarrel_akilo47.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
    weapon.PrintName = "RPK"
end