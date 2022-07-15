ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "XRK 4.0x Pistol Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_scope.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_rail"] = 1,
    ["tag_sight"] = 1,
    ["sight"] = 1
}

ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/weapons/m9/weapon_vm_sn_crossbow_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_scope_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 4, 
    ParallaxSize = 750, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_aug"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}