ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "CX-23"
ATTACHMENT.Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barshort.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barshort.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.92
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.92
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.12
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.12
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    -- weapon:SetGripPoseParameter("grip_smg_pose_offset")
end 