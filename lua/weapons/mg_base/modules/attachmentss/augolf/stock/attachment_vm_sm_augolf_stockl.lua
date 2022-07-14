ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Forge TAC CQB"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_stockl.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
end