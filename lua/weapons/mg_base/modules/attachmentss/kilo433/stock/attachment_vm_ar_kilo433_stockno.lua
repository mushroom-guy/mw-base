ATTACHMENT.Base = "att_vm_stock_no"
ATTACHMENT.Bodygroups ={
    ["stock_adapter"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end