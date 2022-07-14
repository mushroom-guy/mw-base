ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Silverfield Ordnance .357"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_barrel_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel_v2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95 
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.85
end