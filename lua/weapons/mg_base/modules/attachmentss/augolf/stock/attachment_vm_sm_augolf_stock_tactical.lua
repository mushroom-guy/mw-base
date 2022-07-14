ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FFS Heavy Stock Pro"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_stock_tactical.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_stock_tactical.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.94
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.94
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.75
end