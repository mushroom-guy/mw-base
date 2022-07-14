ATTACHMENT.Base = "att_optic"
ATTACHMENT.Name = "Sniper Scope"
ATTACHMENT.Bodygroups ={
    ["tag_top_rail"] = 1
}
ATTACHMENT.Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_scope.vmt")
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_scope_lens_hide.mdl"),
    LensHideMaterial = Material("viper/MW/weapons/asierra12/weapon_vm_ar_asierra12_scopeglass.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 400, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_int_default.vmt"),
    Size = 1250,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Zoom.Blur.EyeFocusDistance = 3.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
    weapon.Zoom.ViewModelFovMultiplier = 0.95
    weapon.Zoom.FovMultiplier = 0.65
end