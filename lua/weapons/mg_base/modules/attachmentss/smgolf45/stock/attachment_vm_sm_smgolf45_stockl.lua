ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Guardian"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockl.vmt")
-- ATTACHMENT.Bodygroups = {
--     ["tag_stock"] = 1
-- }
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.84
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.84
end