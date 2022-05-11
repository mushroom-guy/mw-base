ATTACHMENT.Base = "att_perk"
ATTACHMENT.Name = "FMJ"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_fmj.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
    if (weapon.Bullet.Penetration != nil) then
        weapon.Bullet.Penetration.MaxCount = weapon.Bullet.Penetration.MaxCount + 1
        weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 1.2
    end
end