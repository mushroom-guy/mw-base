ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "Lockwood Pistol Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_scope.vmt")
ATTACHMENT.Bodygroups = {
    ["rail"] = 1,
    ["tag_sight"] = 1,
    ["sight"] = 1
}

ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/weapons/357/weapon_vm_pi_cpapa_scope_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_scope_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 4, 
    ParallaxSize = 400, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_sniper_new.vmt"),
    Size = 2500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}