ATTACHMENT.Base = "att_vm_vertgrip01"
ATTACHMENT.Name = "FSS Folding Grip"
ATTACHMENT.Model = Model("models/jacob_lhh3_ports/modernwarfare2019/weapons/mp7/attachments/fss_folding_grip.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_vertgrip.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1,
    ["tag_grip_attach"] = 1
}
ATTACHMENT.VElement = {
    Bone = "tag_grip_attach",
    Position = Vector(3, 0, 0.3),
    Angles = Angle(-90, 0, 0),
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_vert_offset")
end 