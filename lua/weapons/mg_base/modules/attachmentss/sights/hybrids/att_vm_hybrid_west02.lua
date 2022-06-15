ATTACHMENT.Base = "att_hybrid"
ATTACHMENT.Name = "4.0x Flip Hybrid"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_hybrid_west02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/hybrid/icon_attachment_hybrid_west02_lw.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_hybrid_west02_magnifier_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/eotech_reticle"),
    Size = 250,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.ReticleHybrid = {
    Material = Material("viper/shared/reticles/eotech_reticle"),
    Size = 250,
    Color = Color(255, 255, 255, 255),
    OnAnimation = "HybridOn",
    OffAnimation = "HybridOff",
    Attachment = "reticle2"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Zoom.ViewModelFovMultiplier = 0.95
    weapon.Zoom.FovMultiplier = 0.7
end