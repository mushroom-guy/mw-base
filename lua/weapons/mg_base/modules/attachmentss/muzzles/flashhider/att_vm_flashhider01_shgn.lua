ATTACHMENT.Base = "att_vm_flashhider01"
ATTACHMENT.Model = Model("models/viper/mw/attachments/shotgun//attachment_vm_flashhider_shtgn01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider_shtgn01.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end 