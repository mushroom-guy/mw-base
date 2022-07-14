ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "FSS R9-0 Bulldog"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_stable.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_stable.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.7
    weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.85
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    --weapon:SetGripPoseParameter("grip_vert_offset")
end 