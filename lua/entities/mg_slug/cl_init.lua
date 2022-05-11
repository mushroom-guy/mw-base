include("shared.lua")

local base = baseclass.Get(ENT.Base)

function ENT:DrawTracer()
    if (GetViewEntity() == self:GetOwner()) then
        base.DrawTracer(self)
    end
end