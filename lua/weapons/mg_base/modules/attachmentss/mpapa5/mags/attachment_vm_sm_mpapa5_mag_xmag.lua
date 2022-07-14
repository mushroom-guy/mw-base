ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "45 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_mag_xmag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_mag_xmag_clip.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 45
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
        --[[weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag]]
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end