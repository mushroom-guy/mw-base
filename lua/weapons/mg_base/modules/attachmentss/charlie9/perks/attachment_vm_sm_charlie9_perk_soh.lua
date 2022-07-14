ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                           
    weapon.Animations.Reload_Xmag = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Xmag_Fast
    weapon.Animations.Reload_Drum = weapon.Animations.Reload_Drum_Fast
    weapon.Animations.Reload_Empty_Drum = weapon.Animations.Reload_Empty_Drum_Fast
end