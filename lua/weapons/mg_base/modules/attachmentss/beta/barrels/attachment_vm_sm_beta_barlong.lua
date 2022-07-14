ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "8.7 Polygonal"
ATTACHMENT.Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 