ATTACHMENT.Base = "att_perk"
ATTACHMENT.Name = "Full Choke"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/perks/perk_icon_range.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Cone.Hip = weapon.Cone.Hip * 0.65
    weapon.Cone.Ads = weapon.Cone.Ads * 0.65
end