ATTACHMENT.Base = "att_vm_2x_west01"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Reload = weapon.Animations.reload_scope
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_scope
end