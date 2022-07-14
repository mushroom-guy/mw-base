ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FORGE TAC Dart"
ATTACHMENT.Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_stocklgt.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_stocklgt.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.13
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.13
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.13
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.13
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
end