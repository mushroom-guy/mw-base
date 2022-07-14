ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "80 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike/icon_attachment_pi_mike_drummag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 80
    weapon.Animations.Reload = weapon.Animations.Reload_XmagLrg
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_XmagLrg
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_XmagLrg_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_XmagLrg_Fast
    weapon.Animations.Inspect = weapon.Animations.Inspect_Drum
    weapon.Animations.Equip = weapon.Animations.Equip_Drum
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.65
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.65
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.7
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.7
    weapon.Animations.Reload_XmagLrg.Fps = weapon.Animations.Reload_XmagLrg.Fps * 0.9
    weapon.Animations.Reload_Empty_XmagLrg.Fps = weapon.Animations.Reload_Empty_XmagLrg.Fps * 0.8
    weapon.Animations.Reload_XmagLrg_Fast.Fps = weapon.Animations.Reload_XmagLrg.Fps * 0.9
    weapon.Animations.Reload_Empty_XmagLrg_Fast.Fps = weapon.Animations.Reload_Empty_XmagLrg.Fps * 0.8
end