ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Equilibrium"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_tactical.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_tactical.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.06
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.06
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
end