ATTACHMENT.Base = "att_vm_angledgrip01"
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
    if (weapon:HasAttachment("attachment_vm_ar_mcharlie_shortbarrel")) then 
        weapon:SetGripPoseParameter("grip_ang_barshort_offset") 
    else
        weapon:SetGripPoseParameter("grip_gripang_offset")
    end
end