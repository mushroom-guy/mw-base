ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Collapsible Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_stock_light.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_stock_light.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 0
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.19
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.19 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.75
    if (weapon:HasAttachment("attachment_vm_ar_scharlie_barrel_pdw")) then 
        weapon.PrintName = "FN SCAR-SC"
    end
end