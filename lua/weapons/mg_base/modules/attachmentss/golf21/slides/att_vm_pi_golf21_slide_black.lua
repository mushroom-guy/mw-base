ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Vanguard Elite"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide_v3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Firemodes[1].Name = "3rnd Burst"
    weapon.Primary.RPM = 1200
    weapon.Primary.BurstRounds = 3
    weapon.Primary.BurstDelay = 0.2
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 5
end