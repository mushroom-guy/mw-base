ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Precision Fixed Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockh.vmt")
-- ATTACHMENT.Bodygroups = {
--     ["tag_stock"] = 1
-- }
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.93
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.74
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.74
end