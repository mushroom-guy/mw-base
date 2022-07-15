ATTACHMENT.Base = "att_optic_10x"
ATTACHMENT.Name = "Sniper Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/weapon_vm_scope_mike14_alt.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_snprscope_mike14.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["tag_top_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/weapon_vm_sn_mike14_scope_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/weapon_vm_scope_mike14_alt_lens_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_sniper_new.vmt"),
    Size = 5000,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
    Offset = Vector(-0.09, 0.01, 0)
}