ATTACHMENT.Base = "att_vm_stubbygrip01"
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups ={
    ["handguard"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
weapon:SetGripPoseParameter("grip_vert_pro_offset")
end 