ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "12g Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_slugmag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_slugmag.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    if (weapon:HasAttachment("att_ammo_flechette")) then
        return
    end

    weapon.Bullet.NumBullets = 6
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 