ATTACHMENT.Base = "att_perk"
ATTACHMENT.Name = "Short-stroke"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_rof.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Primary.RPM = weapon.Primary.RPM + 150
end