ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                           
    weapon.Animations.Reload_Xmaglrg = weapon.Animations.Reload_Xmaglrg_Fast
    weapon.Animations.Reload_Empty_Xmaglrg = weapon.Animations.Reload_Empty_Xmaglrg_Fast
    weapon.Animations.Reload_Smag = weapon.Animations.Reload_Smag_Fast
    weapon.Animations.Reload_Empty_Smag = weapon.Animations.Reload_Empty_Smag_Fast
end