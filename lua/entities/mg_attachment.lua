AddCSLuaFile()

ENT.Type = "anim"

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "Slot")
    self:NetworkVar("Int", 1, "Index")
end

function ENT:Initialize()
    if (!IsValid(self:GetOwner())) then
        error("Invalid weapon for attachment!")
    end

    self:AddEFlags(EFL_KEEP_ON_RECREATE_ENTITIES)
    self:AddEFlags(EFL_FORCE_CHECK_TRANSMIT)
    self:AddEFlags(EFL_NO_THINK_FUNCTION)
    self:AddEFlags(EFL_NO_GAME_PHYSICS_SIMULATION)
    self:AddEFlags(EFL_DONTBLOCKLOS)
    self:AddEFlags(EFL_DONTWALKON)
    self:AddEFlags(EFL_NO_DISSOLVE)
    self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)
    self:AddEFlags(EFL_NO_DAMAGE_FORCES)

    self:AddFlags(FL_NOTARGET)
    self:AddFlags(FL_DONTTOUCH)
    self:AddFlags(FL_STEPMOVEMENT)
    self:SetNoDraw(true)

    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_NONE)

    local weapon = self:GetOwner()

    if (SERVER) then
        for _, child in pairs(weapon:GetChildren()) do
            if (child:GetClass() == "mg_attachment" && child:GetSlot() == self:GetSlot() && child != self) then
                child:Remove()
            end
        end
    end

    weapon:Attach(self:GetSlot(), self:GetIndex())
end