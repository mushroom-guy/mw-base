ATTACHMENT.Base = "att_vm_stock_no"
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end