ATTACHMENT.Base = "att_vm_laser02"
ATTACHMENT.Bodygroups ={
    ["tag_laser"] = 1,
    ["tag_rail"] = 1
}
ATTACHMENT.VElement = {
    Bone = "tag_laser_attach",
    Position = Vector(0, 0, 0),
    Angles = Angle(0, 0, -180),
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.LaserAimAngles = Angle(-0.3, 0.05, -45)
        weapon.LaserAimPos = Vector(-2, 0, 0)
end 