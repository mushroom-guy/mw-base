ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "CX-23S"
ATTACHMENT.Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barsilshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barsilshort.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.94
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon:doSuppressorStats()
end