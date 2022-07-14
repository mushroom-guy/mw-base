ATTACHMENT.Base = "att_vm_scope_mike14"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Animations.Reload = weapon.Animations.reload_scope
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_scope
end