ATTACHMENT.Base = "att_ammo"
ATTACHMENT.Name = "Slugs"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_ammo.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Bullet.Damage[1] = 120
    weapon.Bullet.Damage[2] = 40
    weapon.Bullet.EffectiveRange = 35
    weapon.Bullet.NumBullets = 1
    weapon.Cone.Ads = 0.15
    weapon.Projectile = {
        Class = "mg_slug",
        Speed = 4000,
        Gravity = 2
    }
end 

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Primary.TrailingSound = nil
end 