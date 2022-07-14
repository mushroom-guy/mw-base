ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FFS 20.8 Nexus"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.Cone.Hip = weapon.Cone.Hip * 0.95
    weapon.PrintName = "SG 550"
    if ((weapon:HasAttachment("att_vm_scope_vz") || weapon:HasAttachment("att_vm_scope_mike14")) && weapon:HasAttachment("attachment_vm_ar_sierra552_stockh")) then 
        weapon.PrintName = "SG 550-1"
    end
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barhvy_offset")
end 