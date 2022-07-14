ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Singuard Arms Whisper"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mcharlie/attachment_vm_ar_mcharlie_suppressorbarrel.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mcharlie/icon_attachment_ar_mcharlie_suppressorbarrel.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
    weapon.Cone.Hip = weapon.Cone.Hip * 0.95
    weapon:doSuppressorStats()
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_barshort_offset")
end