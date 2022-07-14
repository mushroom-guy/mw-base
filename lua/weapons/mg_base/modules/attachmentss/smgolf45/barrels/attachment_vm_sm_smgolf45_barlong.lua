ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "400mm Stainless Steel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barlong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.13
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.13
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.93
        weapon.Cone.Hip = weapon.Cone.Hip * 0.8
        weapon.Cone.Increase = weapon.Cone.Increase * 0.8

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 