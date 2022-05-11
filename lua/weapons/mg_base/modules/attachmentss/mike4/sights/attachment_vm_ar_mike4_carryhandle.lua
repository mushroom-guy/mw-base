ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "Old Faithful"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_carryhandle.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_carryhandle.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2
}
ATTACHMENT.AttachmentBodygroups={
    ["sight"] = 2
}
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_LEGENDARY
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end