ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Mk3 Burst Mod"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barauto.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barauto.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.RPM = 1000
    weapon.Primary.BurstRounds = 3
    weapon.Primary.BurstDelay = 0.2
    weapon.Firemodes[1].Name = "3rnd Burst"
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.3
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2.5
end