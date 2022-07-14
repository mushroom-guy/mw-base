ATTACHMENT.Base = "att_vm_vertgrip02"
ATTACHMENT.AttachmentBodygroups ={
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

    if (weapon:HasAttachment("attachment_vm_ar_mike4_shortbarrel")) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    else
        weapon:SetGripPoseParameter("grip_gripvert_offset")
    end
end