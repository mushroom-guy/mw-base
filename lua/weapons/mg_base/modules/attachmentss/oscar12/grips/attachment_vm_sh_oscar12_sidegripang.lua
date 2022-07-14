ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "Commando Foregrip"
ATTACHMENT.Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_sidegripang.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_sidegripang.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.11
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.13
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.13
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_ang_offset")
end 