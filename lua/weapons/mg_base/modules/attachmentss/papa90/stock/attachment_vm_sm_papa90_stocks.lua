ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Heavy Stock Pro"
ATTACHMENT.Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_stocks.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_stocks.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
end