ATTACHMENT.Base = "att_optic"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_lmgrail.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_lmgrail.vmt")
ATTACHMENT.Name = "Integral 3.0x Optic"
ATTACHMENT.Bodygroups = {
    ["tag_rail_upper"] = 3,
    ["tag_sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_lmgrail_hide.mdl"),
    LensHideMaterial = Material("viper/mw/weapons/augolf/weapon_vm_sm_augolf_scope_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 20, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_aug.vmt"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 1.05
    weapon.Zoom.FovMultiplier = 0.525
end