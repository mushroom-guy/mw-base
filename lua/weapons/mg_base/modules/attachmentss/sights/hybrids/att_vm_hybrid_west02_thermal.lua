ATTACHMENT.Base = "att_vm_hybrid_west02"
ATTACHMENT.Name = "4.0x Flip Thermal"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_hybrid_west02.mdl")
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
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_hybrid_west02_magnifier_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_holo_default2"),
    Size = 600,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}