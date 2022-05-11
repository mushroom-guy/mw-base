ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FR Ultralight Hollow"
ATTACHMENT.Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_stock_light.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_stock_light_v1.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock_attach"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.02
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.02
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.97
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.97
end