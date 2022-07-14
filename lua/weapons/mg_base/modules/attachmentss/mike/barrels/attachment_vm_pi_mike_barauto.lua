ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Sorokin 140mm Auto"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike_barauto.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike/icon_attachment_pi_mike_barauto.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.3
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2
    weapon.Cone.Max =  weapon.Cone.Max * 1.5
    weapon.Primary.Automatic = true
    weapon.Primary.RPM = 800
    weapon.Firemodes[1].Name = "Full Auto"
    weapon.PrintName = "Sorokin"
end