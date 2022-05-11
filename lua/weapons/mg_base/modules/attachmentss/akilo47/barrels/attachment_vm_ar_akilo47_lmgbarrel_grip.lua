ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "23.0 Romanian"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgbarrel_grip.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_gripvert_akilo47.vmt")
ATTACHMENT.ExcludedCategories = {
    "Grips"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.87
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.87
    weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.93
    weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.93
    weapon.HoldType = "RifleWithVerticalGrip"
    weapon:SetGripPoseParameter("grip_vert_offset")
end