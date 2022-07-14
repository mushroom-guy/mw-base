ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "CX-MM"
ATTACHMENT.Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_stockh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.74
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.74
end