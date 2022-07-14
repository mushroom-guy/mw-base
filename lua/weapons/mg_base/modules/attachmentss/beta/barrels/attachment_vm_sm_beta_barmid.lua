ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "8.7 Steel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barmid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barmid.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
end