ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "Cronen C480 Pro Optic"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_4x_west02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_4x_west02.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_west02_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 200, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle"),
    Size = 200,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Zoom.ViewModelFovMultiplier = 0.8
    weapon.Zoom.FovMultiplier = 0.7
end