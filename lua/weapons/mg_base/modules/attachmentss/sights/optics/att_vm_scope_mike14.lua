ATTACHMENT.Base = "att_optic"
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
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/weapon_vm_sn_mike14_scope_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/weapon_vm_scope_mike14_alt_lens_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
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

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.7
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.7
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 1.65
    weapon.Zoom.FovMultiplier = 0.25
end