ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Hunter"
ATTACHMENT.Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_stockhvy.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_stockhvy.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end