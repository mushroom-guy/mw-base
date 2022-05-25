ATTACHMENT.Base = "att_sight_reticle"
ATTACHMENT.Name = "G.I. Mini Reflex"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_minireddot01_mike1911.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_minireddot.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 140,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 1,
    ["tag_rail"] = 1,
    ["sight"] = 1
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 1,
    ["sight"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.8
    weapon.Zoom.FovMultiplier = 0.9
end