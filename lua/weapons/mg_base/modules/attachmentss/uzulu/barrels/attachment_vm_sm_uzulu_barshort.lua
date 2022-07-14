ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "8.5 Factory Mini"
ATTACHMENT.Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_barshort.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.92
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.92 
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1 
end