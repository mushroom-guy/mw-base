ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FTAC 13.5 Compact"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_short.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_short.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.92
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.92
end