ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Singuard Arms Featherweight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide_auto.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_auto.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Firemodes[1].Name = "Full Auto"
    weapon.Primary.Automatic = true
    weapon.Primary.RPM = 1200
    weapon.Cone.Max = 2
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 5
end