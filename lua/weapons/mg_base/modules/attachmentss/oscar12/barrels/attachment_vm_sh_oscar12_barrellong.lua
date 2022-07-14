ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FORGE TAC Impaler"
ATTACHMENT.Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_barrellong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_barrellong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.85
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.85
end