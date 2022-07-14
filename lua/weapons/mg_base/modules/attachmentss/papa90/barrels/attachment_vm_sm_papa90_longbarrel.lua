ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS 10.6 Pro"
ATTACHMENT.Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_longbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_longbarrel.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.05
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.05
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
end