ATTACHMENT.Base = "att_vm_laser02_cylinder"
ATTACHMENT.AttachmentBodygroups ={
    ["tag_laser"] = 1,
    ["tag_rail"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
        weapon.LaserAimPos = Vector(-2, 0, 0)
end 