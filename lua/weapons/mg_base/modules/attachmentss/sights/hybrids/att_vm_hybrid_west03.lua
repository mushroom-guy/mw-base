ATTACHMENT.Base = "att_hybrid_4x"
ATTACHMENT.Name = "Canted Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_hybrid_west03.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_4x_west02.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/reticle_ui_stencil.vmt"),
    LensBodygroup = "lens",
    HideModel = Model("models/viper/mw/attachments/attachment_vm_hybrid_west03_hide.mdl"),
    FOV = 7, 
    ParallaxSize = 800, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default3.vmt"),
    Size = 500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 150,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle2"
}