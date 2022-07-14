ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "VLK Strelok"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stocksn.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stocksn.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.84
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.84
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.82
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.82
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.83
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.83
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.83
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.83
    weapon.PrintName = "VSSM"
end