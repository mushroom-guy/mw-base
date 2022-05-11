ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FORGE TAC Ballast Pack"
ATTACHMENT.Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_stock_tactical_v1.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_stock_tactical_v1.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.13
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.13
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
end