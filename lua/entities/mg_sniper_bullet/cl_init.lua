include("shared.lua")

local BaseClass = baseclass.Get(ENT.Base)
local flareMaterial = Material("sprites/orangecore1_gmod")

ENT.bTracerOn = false

function ENT:DrawTracer()
end

function ENT:DrawBullet()
    if (!self.bTracerOn) then
        ParticleEffectAttach("bullet_sniper_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        self.bTracerOn = true
    end

    if (GetViewEntity() == self:GetOwner()) then
        local angle = (self:GetPos() - EyePos()):Angle()
        angle:RotateAroundAxis(EyeAngles():Right(), 90)
        
        local dist = math.min(self:GetPos():Distance(EyePos()), 2300)

        cam.Start3D2D(self:GetPos(), angle, dist * 0.0001)
            surface.SetDrawColor(255, 255, 255, 255)
            surface.SetMaterial(flareMaterial)
            surface.DrawTexturedRectRotated(0, 0, 32, 32, 0)
        cam.End3D2D()
    end
end