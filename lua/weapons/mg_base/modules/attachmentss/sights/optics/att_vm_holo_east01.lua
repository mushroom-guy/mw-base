ATTACHMENT.Base = "att_optic_1point5x"
ATTACHMENT.Name = "APX5 Holographic Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_holo_east.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_holo_east.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_holo_east_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_holo_east_hide.mdl"),
    LensBodygroup = "lens", 
    ParallaxSize = 450, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_holo_default2.vmt"),
    Size = 400,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}