ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "FTAC Ultralight Pump"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_light.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_light.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.15
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.15
end