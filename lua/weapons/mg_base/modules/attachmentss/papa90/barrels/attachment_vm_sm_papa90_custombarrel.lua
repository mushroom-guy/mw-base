ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FORGE TAC Retribution"
ATTACHMENT.Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_custombarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_custombarrel.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.94
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.94
end