ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "Viper Reflex Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_east_lod0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_reflex_east.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/kobra_reticle.vmt"),
    Size = 240,
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
    ["tag_rail"] = 1,
    ["sight"] = 1
}