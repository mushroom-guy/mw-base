ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "No Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stockno.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stockno.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.5
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
end