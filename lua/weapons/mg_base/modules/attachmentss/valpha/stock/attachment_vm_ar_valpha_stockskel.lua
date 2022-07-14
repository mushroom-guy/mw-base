ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Stovl 6P30 Skelet"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stockskel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stockskel.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.13
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.13
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.11
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.11
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.11
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.11
end