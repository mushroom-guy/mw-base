ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "POS-M3 Thermal Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_scope.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/weapons/valpha/weapon_vm_sn_delta_scope_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 5, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/po4x_crosshair_remake"),
    Size = 2500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Zoom.ViewModelFovMultiplier = 0.95
    weapon.Zoom.FovMultiplier = 0.8
end