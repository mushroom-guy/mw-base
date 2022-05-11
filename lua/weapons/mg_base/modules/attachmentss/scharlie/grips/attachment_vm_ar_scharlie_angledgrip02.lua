ATTACHMENT.Base = "att_vm_angledgrip02"




local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon:SetGripPoseParameter("grip_ang_offset")
end