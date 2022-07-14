ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FORGE TAC Gemini"
ATTACHMENT.Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barmid.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_barmid.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 