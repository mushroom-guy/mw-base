ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "6-R Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_mag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_mag.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
    weapon.DisableCantedReload = false
    weapon.EmptyReloadRechambers = true
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Animations.Reload_Start = nil
    weapon.Animations.Reload_Loop = nil
    weapon.Animations.Reload_End = nil
    weapon.Animations.Reload_EndEmpty = nil
end 