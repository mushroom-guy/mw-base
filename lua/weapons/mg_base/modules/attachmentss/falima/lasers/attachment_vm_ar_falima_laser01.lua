ATTACHMENT.Base = "att_vm_laser01_cylinder"
ATTACHMENT.AttachmentBodygroups = {
    ["laser"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Forends"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
        weapon.LaserAimPos = Vector(-2, 0, 0)
end 