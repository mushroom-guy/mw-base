ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "ZLR J-2800 Influx"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_barhvy.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_barhvy.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 