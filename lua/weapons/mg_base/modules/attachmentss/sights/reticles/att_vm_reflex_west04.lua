ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "Cronen Elite"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_west05.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_ar_tango21_reflex.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 150,
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