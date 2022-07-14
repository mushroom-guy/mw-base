ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "AN-94 Factory X-438mm"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
end