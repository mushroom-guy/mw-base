ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "VLK Prime Pump Grip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_pumph.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_pumph.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.8
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
end