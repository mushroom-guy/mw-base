ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FORGE TAC Eclipse"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_med.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_med.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_barrel_hide"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.03
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end