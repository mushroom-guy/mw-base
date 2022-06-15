ATTACHMENT.Base = "att_optic"
ATTACHMENT.Name = "Cronen 2x2 Elite"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_tango21_hybrid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/optics/icon_attachment_ar_tango21_hybrid.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 1,
    ["tag_rail"] = 1,
    ["sight"] = 1
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
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.94
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.94
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.95
    weapon.Zoom.FovMultiplier = 0.6
end