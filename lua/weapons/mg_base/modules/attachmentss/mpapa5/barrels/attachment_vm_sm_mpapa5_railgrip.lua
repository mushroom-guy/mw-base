ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Light"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_railgrip.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_railgrip.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.1
end