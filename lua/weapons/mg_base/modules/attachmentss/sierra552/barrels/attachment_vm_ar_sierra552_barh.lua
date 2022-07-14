ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XRK CZEN mk2"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.1
    weapon.PrintName = "IMBEL IA2"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barhvy_offset")
end 