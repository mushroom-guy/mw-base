ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "CX-38"
ATTACHMENT.Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 