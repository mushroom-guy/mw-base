ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "SPP 10-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_smags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_smags.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 10
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.33
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.33
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.25
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.25
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Animations.Reload = weapon.Animations.reload_smag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_smag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_smag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_smag_fast
    weapon.Animations.Inspect = weapon.Animations.inspect_smag
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_magwell_offset")
end