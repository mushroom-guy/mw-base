ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "10mm Auto 30-Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_mag_xmag2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_mag_xmag2.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:doCalConversionStats()
    weapon.Animations.Reload = weapon.Animations.Reload
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    --[[weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag]]
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.19
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
    weapon.Bullet.Range = weapon.Bullet.Range * 1.25
    weapon.Cone.Increase = weapon.Cone.Increase * 1.35
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
end