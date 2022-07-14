ATTACHMENT.Base = "attachment_vm_sh_romeo870_pump"
ATTACHMENT.Name = "The Ejector"
ATTACHMENT.Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_pump_v2.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_pump_v2.vmt")
ATTACHMENT.ExcludedCategories = {"Grips"}
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.CosmeticChange = true
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    --weapon:SetGripPoseParameter("grip_vert_offset")
end 