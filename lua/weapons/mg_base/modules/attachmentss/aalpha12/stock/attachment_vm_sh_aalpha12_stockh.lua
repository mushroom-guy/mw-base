ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "ZLR Tsunami"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stockh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
end

