ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "ISO 140mm CQB"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_shortbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_shortbarrel.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
       weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.94
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.03
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.03
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.09
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.09

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 