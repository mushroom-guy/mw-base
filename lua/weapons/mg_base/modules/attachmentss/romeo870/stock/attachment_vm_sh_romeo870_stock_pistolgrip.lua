ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "No Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_stock_pistolgrip.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_stock_pistolgrip.vmt")
ATTACHMENT.BonemergeToCategory = {"Receivers"}
ATTACHMENT.AttachmentBodygroups = {
    ["stock"] = 1
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = 0.75
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
    weapon.Animations.Melee = weapon.Animations.melee_nostock
    weapon.Animations.Melee_Hit = weapon.Animations.melee_hit_nostock
end