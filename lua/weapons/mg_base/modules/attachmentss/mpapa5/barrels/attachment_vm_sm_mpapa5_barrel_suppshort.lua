ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Monolithic Integral Suppressor"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel_suppshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_barrel_suppressor_v4.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.06
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.06
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.03
        weapon:doSuppressorStats()
end