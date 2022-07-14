ATTACHMENT.Base = "att_sight_reticle"
ATTACHMENT.Name = "FSS Ring Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_reddotscope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_reddotscope.vmt")
ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 140,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

ATTACHMENT.Bodygroups = {
    ["tag_rail_hide"] = 1,
    ["tag_sight"] = 1
}
ATTACHMENT.AttachmentBodygroups = {
    ["shroud_hide"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end