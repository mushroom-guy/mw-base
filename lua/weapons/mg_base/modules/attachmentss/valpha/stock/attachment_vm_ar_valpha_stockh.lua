ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "VLK Vintazh"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stockh.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.88
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.88
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
    if (weapon:HasAttachment("attachment_vm_ar_valpha_smags")) then 
        weapon.PrintName = "VSS Vintorez"
    end
end