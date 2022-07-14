ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Gatekeeper"
ATTACHMENT.Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stocksn.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stocksn.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.84
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.84
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.84
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.84
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
end