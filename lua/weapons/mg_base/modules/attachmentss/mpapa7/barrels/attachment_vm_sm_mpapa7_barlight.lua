ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS SWAT"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_barlight.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.05
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.05
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.98
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.98
end