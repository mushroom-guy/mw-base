ATTACHMENT.Base = "att_optic"
ATTACHMENT.Name = "POS-M3 Thermal Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_thermal_v3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_thermal.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_thermal_v3_lens_hide.mdl"),
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_east_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 0, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default2.vmt"),
    Size = 700,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Zoom.ViewModelFovMultiplier = 0.95
    weapon.Zoom.FovMultiplier = 0.7
end