ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "No Grip"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_fastreload.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Melee = weapon.Animations.Melee_Queer
    weapon.Animations.Melee_Hit = weapon.Animations.Melee_Hit_Queer
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
        weapon:SetGripPoseParameter("grip_queer_offset")
end 