ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    print("hi")
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                
    weapon.Animations.reload_scope = weapon.Animations.reload_scope_fast
    weapon.Animations.reload_empty_scope = weapon.Animations.reload_empty_scope_fast
end