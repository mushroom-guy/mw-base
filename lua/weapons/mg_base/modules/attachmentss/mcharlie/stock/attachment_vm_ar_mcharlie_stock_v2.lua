ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mcharlie/attachment_vm_ar_mcharlie_stock_v3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mcharlie/icon_attachment_ar_mcharlie_stock_v2.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.2
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.2
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.2
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.2
end