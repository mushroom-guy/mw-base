AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:GetDamageType()
	return DMG_SNIPER
end

ENT.m_gravity = 0
ENT.Maxs = Vector(3, 3, 3)

function ENT:PhysicsUpdate(phys)
	self.m_gravity = self.m_gravity + (self.Projectile.Gravity)

	phys:SetPos(self.LastPos + phys:GetAngles():Forward() * (self.Projectile.Speed * FrameTime()) - (Vector(0, 0, self.m_gravity) * FrameTime()))
	
	if (!self.bCollided) then
		--Aim assist
		if (GetConVar("mgbase_debug_projectiles"):GetInt() > 0) then
			debugoverlay.Box(phys:GetPos(), -self.Maxs, self.Maxs, 0, Color(0, 200, 50, 10))
		end

		local trData = {
			start = self.LastPos,
			endpos = phys:GetPos(),
			filter = {self:GetOwner(), self},
			mask = MASK_SHOT_PORTAL,
			collisiongroup = COLLISION_GROUP_PROJECTILE,
			mins = -self.Maxs,
			maxs = self.Maxs
		}

		local tr = util.TraceHull(trData)

		if (tr.Hit && (tr.Entity:IsPlayer() || tr.Entity:IsNPC())) then
			self:Impact(tr, phys, true)
			return
		end

		--Normal hitscan
		if (GetConVar("mgbase_debug_projectiles"):GetInt() > 0) then
			debugoverlay.Line(self.LastPos, phys:GetPos(), 1, Color(255, 0, 0, 1))
		end
		
		tr = util.TraceLine(trData)

		if (tr.Hit) then
			self:Impact(tr, phys, false)
			return
		end
	end

	self.LastPos = phys:GetPos()
end