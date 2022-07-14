ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    print("hi")
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload_Start = weapon.Animations.reload_start_fast
    weapon.Animations.Reload_Loop = weapon.Animations.reload_loop_fast
    weapon.Animations.Reload_End = weapon.Animations.reload_end_fast
    weapon.Animations.Reload_End_Empty = weapon.Animations.reload_end_empty_fast
    weapon.Animations.Reload = weapon.Animations.reload_fast
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_fast
    weapon.DisableCantedReload = true
end