ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "6 Revolt"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_barshort.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Cone.Hip =  weapon.Cone.Hip * 1.5
    weapon.Cone.Ads =  weapon.Cone.Ads * 1.5
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 