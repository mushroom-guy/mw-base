ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    PrintTable(BaseClass)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload_Start.Fps = weapon.Animations.Reload_Start.Fps * 1.25
    weapon.Animations.Reload_Start_Onebullet.Fps = weapon.Animations.Reload_Start_Onebullet.Fps * 1.25
    weapon.Animations.Reload_Loop.Fps = weapon.Animations.Reload_Loop.Fps * 1.25
    weapon.Animations.Reload_End.Fps = weapon.Animations.Reload_End.Fps * 1.25
    weapon.Animations.Reload_End_Empty.Fps = weapon.Animations.Reload_End_Empty.Fps * 1.25
end