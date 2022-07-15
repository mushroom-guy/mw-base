ATTACHMENT.Base = "att_optic_10x"
ATTACHMENT.Name = "Solozero NVG Enhanced"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_thermal_west_01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_thermal_west01.vmt")
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
    HideModel = Model("models/viper/mw/attachments/attachment_vm_thermal_west_01_hide.mdl"),
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_thermal_west01_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_thermal_default.vmt"),
    Size = 750,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
