ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Factory Aluminum Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_stockmrkt.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_stockmrkt.vmt")
-- ATTACHMENT.Bodygroups = {
--     ["tag_stock"] = 1
-- }
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
end