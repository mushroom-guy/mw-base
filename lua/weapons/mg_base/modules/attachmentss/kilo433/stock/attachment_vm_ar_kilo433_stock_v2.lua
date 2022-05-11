ATTACHMENT.Base = "att_vm_stock_medium01"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_stock_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_stock_v2.vmt")
-- ATTACHMENT.Bodygroups ={
--     ["tag_stock"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end