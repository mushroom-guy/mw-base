ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Corvus Skeleton Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_stock_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_stock_v2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.075
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.075
end