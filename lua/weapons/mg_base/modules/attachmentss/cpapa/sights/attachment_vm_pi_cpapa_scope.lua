ATTACHMENT.Base = "att_optic"
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
    Material = Material("viper/mw/reticles/reticle_int_default.vmt"),
    Size = 500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Zoom.Blur.EyeFocusDistance = 3.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
    weapon.Zoom.ViewModelFovMultiplier = 0.8
    weapon.Zoom.FovMultiplier = 0.6
end