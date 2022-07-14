ATTACHMENT.Base = "att_pump"
ATTACHMENT.Name = "FTAC Close Quarters"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_tactical.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_tactical.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.9
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 