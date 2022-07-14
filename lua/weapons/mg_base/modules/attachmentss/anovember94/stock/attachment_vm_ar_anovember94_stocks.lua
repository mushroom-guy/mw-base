ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Close Quarters Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stocks.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stocks.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.09
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.09
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.05
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.05
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.05
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.05
end