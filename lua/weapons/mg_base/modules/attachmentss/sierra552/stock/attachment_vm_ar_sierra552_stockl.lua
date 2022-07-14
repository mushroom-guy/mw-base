ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK StrikeLite III"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_stockl.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock_hide"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.18
end