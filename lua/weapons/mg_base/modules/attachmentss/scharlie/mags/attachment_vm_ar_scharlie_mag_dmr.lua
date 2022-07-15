ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "6.5mm Creedmoor Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_mag_dmr.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_mag_dmr.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 10
    weapon.Primary.Automatic = false

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1

    weapon.Animations.Reload = weapon.Animations.Reload_DMR
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_DMR

    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.1
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.1

    if (weapon:HasAttachment("attachment_vm_ar_scharlie_barrel_long")) then 
        weapon.PrintName = "FN SCAR-H PR"
    end

    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.5
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.5
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Firemodes[2] = nil
    weapon.Primary.RPM = 450
end