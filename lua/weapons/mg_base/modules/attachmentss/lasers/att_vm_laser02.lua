ATTACHMENT.Base = "att_laser"
ATTACHMENT.Name = "5mW Laser"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_laser02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser02.vmt")
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 5,
    Color = Color(0, 255, 255, 255),
    Attachment = "laser"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.85
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.85
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.85
end  