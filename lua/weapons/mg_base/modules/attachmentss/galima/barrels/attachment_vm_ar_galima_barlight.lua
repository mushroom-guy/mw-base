ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS 11.8 Squall"
ATTACHMENT.Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_barrel_02.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.98
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.98
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.9
end