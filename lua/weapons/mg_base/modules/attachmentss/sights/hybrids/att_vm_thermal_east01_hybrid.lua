ATTACHMENT.Base = "att_hybrid"
ATTACHMENT.Name = "Merc Thermal Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_thermal_hybrid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_thermal_east.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/attachment_vm_thermal_east_hide.mdl"),
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_thermal_east_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 300, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_thermal_default2.vmt"),
    Size = 750,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 150,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle2"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Zoom.ViewModelFovMultiplier = 0.95
    weapon.Zoom.FovMultiplier = 0.7
end