ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "ZLR Drifter A-08"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barshort.vmt")
ATTACHMENT.ExcludedCategories = {"Grips"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.12
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.12
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.87
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.87
    weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.95
    weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.95
    weapon.HoldType = "RifleWithVerticalGrip"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barshort_offset")
end    
