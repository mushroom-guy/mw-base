ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "VLK Czar"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barheavy.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_barheavy.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.7
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.7
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 