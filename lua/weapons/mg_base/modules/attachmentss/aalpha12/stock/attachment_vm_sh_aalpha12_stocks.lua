ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Power Wrap"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stocks.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stocks.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.12
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.12
end