ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Close Quarters Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_heavy.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_heavy.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
end