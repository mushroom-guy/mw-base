include("shared.lua")

local base = baseclass.Get(ENT.Base)

function ENT:DrawBullet()
    if (GetViewEntity() == self:GetOwner()) then
        base.DrawBullet(self)
    end
end