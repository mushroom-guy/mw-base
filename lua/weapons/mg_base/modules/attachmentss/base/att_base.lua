ATTACHMENT.Name = "Attachment"
ATTACHMENT.Category = "Attachments"
ATTACHMENT.Icon = Material("mg/ammo")
function ATTACHMENT:Stats(weapon)
end
function ATTACHMENT:PostProcess(weapon)
end
function ATTACHMENT:Appearance(model, category)
end
function ATTACHMENT:Init(weapon)
end
function ATTACHMENT:OnRemove(weapon)
    if (CLIENT) then
        if (IsValid(self.m_Model)) then
            self.m_Model:Remove()
        end

        if (IsValid(self.m_TpModel)) then
            self.m_TpModel:Remove()
        end
    end
end