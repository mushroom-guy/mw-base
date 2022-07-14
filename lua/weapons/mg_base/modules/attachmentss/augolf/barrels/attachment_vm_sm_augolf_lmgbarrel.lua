ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "622mm Long Barrel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_lmgbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_lmgbarrel.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 