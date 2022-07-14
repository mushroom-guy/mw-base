ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "JAK Rabbit Ultralight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stockl.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.25
end