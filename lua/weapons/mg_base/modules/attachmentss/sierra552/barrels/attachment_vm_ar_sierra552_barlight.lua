ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Barlight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.04
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.04
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.07
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barlong_offset")
end 