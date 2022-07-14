ATTACHMENT.Base = "att_sight"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_receiver_akilo47_v2.vmt")
ATTACHMENT.Name = "VLK Polovoy Appaktiko"
ATTACHMENT.Bodygroups ={
    ["tag_rail"] = 1,
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end