ATTACHMENT.Base = "att_vm_thermal_east01"
ATTACHMENT.Name = "Merc Thermal Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_thermal_hybrid.mdl")
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
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 150,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle2"
}