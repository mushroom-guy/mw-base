ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FORGE TAC 20.0 LB"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_barrel_long.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_barrel_long.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95 
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95 
    weapon.PrintName = "FN MK 17 LB"
end