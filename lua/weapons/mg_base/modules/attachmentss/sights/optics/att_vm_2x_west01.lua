ATTACHMENT.Base = "att_optic_2x"
ATTACHMENT.Name = "Cronen 2x2 Elite"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_tango21_hybrid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_ar_tango21_hybrid.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/weapon_vm_ar_tango21_magnifier_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_ar_tango21_hybrid_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 800, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/bravo4_ret.vmt"),
    Size = 1200,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}