ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "XRK Truegrip Tactical"
ATTACHMENT.Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_pump_custom.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_pump_custom.vmt")
ATTACHMENT.ExcludedCategories = {"Grips"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 1.1
end