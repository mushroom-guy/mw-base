ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "ZLR 16 Apex"
ATTACHMENT.Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 