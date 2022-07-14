ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Folded Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_stock_folded.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_stock.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.25
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.25
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2
end