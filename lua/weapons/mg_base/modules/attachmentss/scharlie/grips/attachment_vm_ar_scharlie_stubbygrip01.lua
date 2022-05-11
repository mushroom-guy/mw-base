ATTACHMENT.Base = "att_vm_stubbygrip01"


 

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:SetGripPoseParameter("grip_vert_offset")
end