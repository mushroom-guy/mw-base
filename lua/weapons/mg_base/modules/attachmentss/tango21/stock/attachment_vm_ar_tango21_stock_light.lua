ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Ultralight Hollow"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_light.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_light.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.95
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.95
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.07
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.07
end