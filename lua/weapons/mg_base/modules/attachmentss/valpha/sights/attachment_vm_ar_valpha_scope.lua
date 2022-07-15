ATTACHMENT.Base = "att_optic_10x"
ATTACHMENT.Name = "Dragunov Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_scope.vmt")

ATTACHMENT.Bodygroups = {
    ["tag_sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_scope_lens_hide.mdl"),
    LensHideMaterial = Material("viper/MW/weapons/valpha/weapon_vm_sn_delta_scope_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 5, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/po4x_crosshair_remake"),
    Size = 2500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
