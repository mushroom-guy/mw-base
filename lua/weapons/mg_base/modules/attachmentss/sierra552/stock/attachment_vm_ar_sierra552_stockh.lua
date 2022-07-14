ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Blackjack"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_stockh.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock_hide"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.9
    weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.9
end