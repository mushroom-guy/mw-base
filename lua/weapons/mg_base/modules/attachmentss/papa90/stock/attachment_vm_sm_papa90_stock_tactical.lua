ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FORGE TAC CQB Comb"
ATTACHMENT.Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_stock_tactical.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_stock_tactical.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
end