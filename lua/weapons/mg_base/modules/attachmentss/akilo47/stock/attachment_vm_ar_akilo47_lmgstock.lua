ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Field LMG Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgstock.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_stocklmg_akilo47.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
end