ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Flash Guard"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_flashhider02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider02.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end 