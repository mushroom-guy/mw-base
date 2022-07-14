ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Tempus 26.4 Archangel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barxlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barxlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9
    weapon.PrintName = "SG 550"
    if ((weapon:HasAttachment("att_vm_scope_vz") || weapon:HasAttachment("att_vm_scope_mike14")) && weapon:HasAttachment("attachment_vm_ar_sierra552_stockh")) then 
        weapon.PrintName = "SG 550-1"
    end
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barxlong_offset")
end 