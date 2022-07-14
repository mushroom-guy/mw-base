ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Gen III Survivalist Series"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockcqb.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockcqb.vmt")
-- ATTACHMENT.Bodygroups = {
--     ["tag_stock"] = 1
-- }
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.05
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.05
        weapon.Animations.Sprint_Out.Fps = weapon.Animations.Sprint_Out.Fps * 1.1
end