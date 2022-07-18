ATTACHMENT.Base = "att_perk"
ATTACHMENT.Name = "Ricochet"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_ricochet.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    if (weapon.Bullet != nil) then
        weapon.Bullet.Ricochet = true
    end
end