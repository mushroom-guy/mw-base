ATTACHMENT.Base = "attachment_vm_sh_dpapa12_barrel"
ATTACHMENT.Name = "6 Revolt"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_barshort.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.CosmeticChange = true
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 