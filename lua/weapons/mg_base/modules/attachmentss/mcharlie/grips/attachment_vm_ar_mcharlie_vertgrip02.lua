ATTACHMENT.Base = "att_vm_vertgrip02"

ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    if (weapon:HasAttachment("attachment_vm_ar_mcharlie_shortbarrel")) then 
        weapon:SetGripPoseParameter("grip_vert_barshort_offset") 
    else
        weapon:SetGripPoseParameter("grip_gripvert_offset")
    end
end