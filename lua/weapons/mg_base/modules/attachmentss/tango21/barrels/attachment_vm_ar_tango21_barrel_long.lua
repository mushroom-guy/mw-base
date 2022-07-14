ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Ranger"
ATTACHMENT.Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_long.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_long.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_barrel_hide"] = 1
}
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