ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                
    weapon.Animations.Reload_ARmag = weapon.Animations.Reload_ARmag_Fast
    weapon.Animations.Reload_Empty_ARmag = weapon.Animations.Reload_Empty_ARmag_Fast
    weapon.Animations.Reload_Xmag = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Xmag_Fast
    weapon.Animations.Reload_DrumMag = weapon.Animations.Reload_DrumMag_Fast
    weapon.Animations.Reload_Empty_DrumMag = weapon.Animations.Reload_Empty_DrumMag_Fast
end