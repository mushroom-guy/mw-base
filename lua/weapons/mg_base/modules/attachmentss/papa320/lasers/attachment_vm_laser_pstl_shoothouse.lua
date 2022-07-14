ATTACHMENT.Base = "att_vm_laser01_pstl"
ATTACHMENT.Name = ".red Swift"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_laser_pstl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_pstl.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("mg/sprites/shoothouselaser.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 2,
    Color = Color(255, 0, 255, 255),
    Attachment = "laser"
}
ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight001.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.9
end
