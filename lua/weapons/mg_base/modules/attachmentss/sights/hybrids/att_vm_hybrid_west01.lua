ATTACHMENT.Base = "att_hybrid_4x"
ATTACHMENT.Name = "Integral Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_hybrid_west.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/hybrid/icon_attachment_hybrid_west_lw.vmt")
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
    HideModel = Model("models/viper/mw/attachments/attachment_vm_hybrid_west_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default"),
    Size = 600,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 110,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle2" 
}
