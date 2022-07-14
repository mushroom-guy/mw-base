ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Retractable Stock"
ATTACHMENT.Model = Model("models/jacob_lhh3_ports/modernwarfare2019/weapons/mp7/attachments/xrk_retractable_stock.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_stock_v2.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(-13, 0, -1),
    Angles = Angle(-90, 0, 0),
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.06
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.06
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.09
end