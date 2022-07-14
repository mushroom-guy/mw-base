ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Strike"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barlong2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_barlong2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end