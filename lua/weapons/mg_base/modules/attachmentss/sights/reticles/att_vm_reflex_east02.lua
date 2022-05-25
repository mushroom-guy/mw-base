ATTACHMENT.Base = "att_sight_reticle"
ATTACHMENT.Name = "Monocle Reflex Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_east02_lod0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_reflex_east02.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_reflex_default3"),
    Size = 800,
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