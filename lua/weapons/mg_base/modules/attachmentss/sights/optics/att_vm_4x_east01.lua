ATTACHMENT.Base = "att_optic_3x"
ATTACHMENT.Name = "VLK 3.0x Optic"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_4x_east.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_4x_east.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_east_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_4x_east_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 500, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default2.vmt"),
    Size = 700,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}