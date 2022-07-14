ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Stock M16 Grenadier"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_mike203barrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_barmid_mike4.vmt")
ATTACHMENT.ExcludedCategories = {"Lasers"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.PrintName = "M16A4"
end