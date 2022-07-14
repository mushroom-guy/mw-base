ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Stovl SOF"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_barshort.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.17
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.17
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.125
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.PrintName = "SR-3 Vikhr"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barshort_offset")
end