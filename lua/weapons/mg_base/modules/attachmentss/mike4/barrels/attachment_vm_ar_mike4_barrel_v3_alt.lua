ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS 14.5 Tac Lite"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barrel_v3_alt.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_bar_mike4_v03.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.95
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.95
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.85
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.05
end