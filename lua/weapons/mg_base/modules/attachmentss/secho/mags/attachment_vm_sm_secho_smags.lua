ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "9mm Hollow Point 12-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_smags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_smags.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Firemodes[1].Name = "3rnd Burst"
        weapon.Primary.Automatic = false
        weapon.Primary.BurstRounds = 3
        weapon.Primary.BurstDelay = 0.1
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Inspect = weapon.Animations.Inspect_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.25
end