ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Skeleton Stock Folded"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgstock.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgstock_akilo47.vmt")
ATTACHMENT.VElement = {
    Bone = "tag_stock_attach",
    Position = Vector(2.5, 0, 0),
    Angles = Angle(),
    Offsets = {}
}
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 0,
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 0.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
end