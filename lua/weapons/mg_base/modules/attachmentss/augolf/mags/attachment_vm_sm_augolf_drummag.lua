ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "5.56 NATO 60-Round Drum"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_drummag.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_rof"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doCalConversionStats()
    weapon.Primary.ClipSize = 60
    weapon.Animations.Reload = weapon.Animations.Reload_DrumMag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_DrumMag
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.85
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.85
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Primary.RPM = weapon.Primary.RPM + (769 - 680)
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.195
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.195
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
end