ATTACHMENT.Base = "att_vm_angledgrip01"
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_ang_offset")
end