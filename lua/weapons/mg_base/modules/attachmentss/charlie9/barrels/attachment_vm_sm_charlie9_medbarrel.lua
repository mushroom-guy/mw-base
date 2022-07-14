ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FTAC 225mm Dominator"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_medbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_medbarrel_v1.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.03
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 