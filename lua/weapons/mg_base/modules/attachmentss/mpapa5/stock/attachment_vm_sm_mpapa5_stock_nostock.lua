ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Collapsible"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_stock_nostock.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_stock_nostock.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Recoil.AdsMultiplier = 0.5
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
end