ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC C6 Carbine PRO"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stockh.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stockh.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_stock"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.95
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.95
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.95
end