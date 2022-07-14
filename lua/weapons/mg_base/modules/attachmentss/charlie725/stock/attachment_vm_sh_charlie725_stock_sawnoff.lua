ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Sawed-off Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stock_sawnoff.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_stock_sawnoff.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Recoil.AdsMultiplier = 1
end