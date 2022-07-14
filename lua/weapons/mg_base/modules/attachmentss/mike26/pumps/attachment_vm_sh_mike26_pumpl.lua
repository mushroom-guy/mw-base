ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "XRK Race Grip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_pumpl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_pumpl.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 1.25
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_wood_offset")
end 