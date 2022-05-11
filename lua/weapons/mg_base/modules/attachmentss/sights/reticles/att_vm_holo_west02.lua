ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "PBX Holo 7 Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_holo_west02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_holo_west02.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle.vmt"),
    Size = 300,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 1,
    ["tag_rail"] = 1,
    ["sight"] = 1
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 1,
    ["sight"] = 1
}