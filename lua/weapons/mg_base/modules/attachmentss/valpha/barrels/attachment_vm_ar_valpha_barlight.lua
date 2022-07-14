ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "VLK 105mm Sova"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_barlight.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.12
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.12
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.13
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.13
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.125
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.95
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.95
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barlight_offset")
end