ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "AN-94 Factory Heavy"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stockh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.88
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.88
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.85
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.85
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.85
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.85
end