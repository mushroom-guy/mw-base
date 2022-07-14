ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "300mm Poly Barrel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barmid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barmid.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.07
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.85
end