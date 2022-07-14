ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "ZLR 18 Deadfall"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barsil.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_barsil.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Cone.Hip = weapon.Cone.Hip * 0.75
        weapon.Cone.Increase = weapon.Cone.Increase * 0.75
    weapon:doSuppressorStats()
end