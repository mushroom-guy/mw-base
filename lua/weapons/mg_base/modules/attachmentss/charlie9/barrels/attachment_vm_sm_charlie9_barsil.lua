ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Nightshade"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_barsil.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_barsil.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.HoldType = "Rifle"
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.7
    weapon.Cone.Hip = weapon.Cone.Hip * 0.83
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
    weapon:doSuppressorStats()
end