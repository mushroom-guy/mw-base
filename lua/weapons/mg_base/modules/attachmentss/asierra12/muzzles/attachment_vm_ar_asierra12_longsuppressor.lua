ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Collosus Suppressor"
ATTACHMENT.Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_longsuppressor.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_longsuppressor.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.75
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.75
    weapon.Bullet.EffectiveRange =  weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.DropOffStartRange =  weapon.Bullet.DropOffStartRange * 1.2
    weapon:doSuppressorStats()
end 