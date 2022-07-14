ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Default (No flashlight)"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_railgrip.vmt")
ATTACHMENT.AttachmentBodygroups ={
    ["tag_grip_hide"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 