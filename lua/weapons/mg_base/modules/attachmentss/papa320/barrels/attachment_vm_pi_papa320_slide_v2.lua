ATTACHMENT.Base = "attachment_vm_pi_papa320_slide"
ATTACHMENT.Name = "Slick Steel"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_slide_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.CosmeticChange = true