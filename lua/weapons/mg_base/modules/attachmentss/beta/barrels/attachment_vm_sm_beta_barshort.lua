ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "8.7 Aluminum"
ATTACHMENT.Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barshort.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.1
end