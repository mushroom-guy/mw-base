ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Sawed-off Barrel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_barrel_sawnoff.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_barrel_sawnoff.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.15
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.15
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.8
    weapon.Cone.Hip = weapon.Cone.Hip * 1.5
    weapon.Cone.Ads = weapon.Cone.Ads * 1.5
end