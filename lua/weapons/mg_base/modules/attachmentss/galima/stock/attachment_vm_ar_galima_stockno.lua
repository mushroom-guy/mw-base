ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "No Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stockno.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stockno.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 0
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 0.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
    weapon.Recoil.ViewModelMultiplier = 2.25
end