ATTACHMENT.Base = "att_vm_angledgrip01"
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_grip_hide"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

    if (weapon:HasAttachment("attachment_vm_ar_mike4_shortbarrel") ||  weapon:HasAttachment("attachment_vm_ar_mike4_barrel_v2")) then
        weapon:SetGripPoseParameter("grip_barshort_gripang_offset") 
    else
        weapon:SetGripPoseParameter("grip_gripang_offset")
    end
end