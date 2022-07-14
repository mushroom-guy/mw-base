ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "150mm Stainless Steel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barrel.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.95
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.95
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.03
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.03
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.05
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.05
end