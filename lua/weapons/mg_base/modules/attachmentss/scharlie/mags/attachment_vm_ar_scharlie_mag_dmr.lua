ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "10 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_mag_dmr.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_mag_dmr.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 10
    weapon.Primary.Automatic = false
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
    weapon.Animations.Reload = weapon.Animations.Reload_DMR
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_DMR
    weapon.Animations.Reload.Length = weapon.Animations.Reload.Length + 0.067
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
    if (weapon:HasAttachment("attachment_vm_ar_scharlie_barrel_long")) then 
        weapon.PrintName = "FN SCAR-H PR"
    end
end