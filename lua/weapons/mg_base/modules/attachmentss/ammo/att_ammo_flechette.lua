ATTACHMENT.Base = "att_ammo"
ATTACHMENT.Name = "Flechette"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_ammo.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Bullet.NumBullets = 20
end
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    
    weapon.Projectile = nil
end