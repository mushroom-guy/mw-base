include("shared.lua")

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.bWhizz = false

local flareMaterial = Material("sprites/orangecore1_gmod")

function ENT:DrawTranslucent(flags)
	self:DestroyShadow()

	if (self:GetVelocity():Length() <= 1) then
		return
	end
	
	self:DrawLight()
	self:DrawTracer()
	self:DrawBullet()
end

function ENT:DrawLight()
	local dlight = DynamicLight(self:EntIndex())
	if (dlight) then
		dlight.pos = self:GetPos()
		dlight.r = 255
		dlight.g = 155
		dlight.b = 0
		dlight.brightness = 2
		dlight.Decay = 500
		dlight.Size = 128
		dlight.DieTime = CurTime() + 0.1
	end
end

function ENT:DrawBullet()
	local angle = (self:GetPos() - EyePos()):Angle()
	angle:RotateAroundAxis(EyeAngles():Right(), 90)
	
	local dist = math.min(self:GetPos():Distance(EyePos()), 300)

	cam.Start3D2D(self:GetPos(), angle, dist * 0.0004)
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(flareMaterial)
		surface.DrawTexturedRectRotated(0, 0, 32, 32, 0)
	cam.End3D2D()
end

function ENT:DrawTracer()
	local angle = self:GetAngles()
	angle:RotateAroundAxis(self:GetAngles():Forward(), 90)

	cam.Start3D2D(self:GetPos(), angle, 0.15)
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(flareMaterial)
		surface.DrawTexturedRectUV(-512, -3, 512, 6, 0, 0, 0.5, 1)
	cam.End3D2D()
end

function ENT:Think()
	if (!IsValid(GetViewEntity())) then
		return
	end

	local bInRadius = EyePos():DistToSqr(self:GetPos()) < 128 * 128

	if (bInRadius && !self.bWhizz && self:GetOwner() != GetViewEntity()) then
		GetViewEntity():EmitSound("Bullets.DefaultNearmiss")
		self.bWhizz = true
	end
end