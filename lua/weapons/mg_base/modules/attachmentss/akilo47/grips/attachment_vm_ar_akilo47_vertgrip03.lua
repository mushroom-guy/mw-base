ATTACHMENT.Base = "att_vm_vertgrip03"
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups ={
    ["handguard"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:SetGripPoseParameter("grip_vert_offset")
end