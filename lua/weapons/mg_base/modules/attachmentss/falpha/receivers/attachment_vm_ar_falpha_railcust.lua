ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "Valorise"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_railcust.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_EPIC
ATTACHMENT.CosmeticChange = true
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    weapon.WorldModelOffsets.Angles = Angle(0, 95, -90)
    weapon.WorldModelOffsets.Pos = Vector(13, -5, -3)
    weapon.ViewModelOffsets.Idle.Pos = Vector(-0.5, 0, 1)
    weapon.ViewModelOffsets.Aim.Pos = Vector(0, 1, 0)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetWorldModel("models/viper/mw/weapons/w_falpha_valorise.mdl")
    weapon:SetViewModel("models/viper/mw/weapons/v_falpha_valorise.mdl")
end