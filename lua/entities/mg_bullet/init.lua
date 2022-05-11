AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.bCollided = false
ENT.Projectile = {
	Class = "mg_bullet",
	Speed = 4000,
	Gravity = 1
}
ENT.Maxs = Vector(6, 6, 6)

function ENT:Initialize()
	self:SetModel("models/weapons/ar2_grenade.mdl")
	self:PhysicsInitBox(Vector(-1, -1, -1), Vector(1, 1, 1))
	self:GetPhysicsObject():Wake()
	self:GetPhysicsObject():SetMaterial("default_silent")
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_PLAYER_PICKUP)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
	self:GetPhysicsObject():AddGameFlag(FVPHYSICS_HEAVY_OBJECT)
	self:GetPhysicsObject():EnableMotion(true)
	self:GetPhysicsObject():EnableDrag(false)
	self:GetPhysicsObject():SetMass(1000)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE) --doesn't collide with anything, no traces
	self:AddEFlags(EFL_NO_DAMAGE_FORCES)
	self:AddEFlags(EFL_DONTWALKON)
	self:AddEFlags(EFL_DONTBLOCKLOS)
	self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)

	self.Projectile = table.Copy(self.Weapon.Projectile)
	self:GetPhysicsObject():SetVelocityInstantaneous(self:GetAngles():Forward() * self.Projectile.Speed)
	self.LastPos = self:GetOwner():EyePos()
end

function ENT:Think()
	if (self.bCollided && IsValid(self)) then
		self:Remove()
	end
end

function ENT:PhysicsUpdate(phys)
	phys:AddVelocity(Vector(0, 0, self.Projectile.Gravity))
	
	if (!self.bCollided) then
		--Aim assist
		if (GetConVar("mgbase_debug_projectiles"):GetInt() > 0) then
			debugoverlay.Box(phys:GetPos(), -self.Maxs, self.Maxs, 0, Color(0, 200, 50, 10))
		end

		local trData = {
			start = self.LastPos,
			endpos = phys:GetPos(),
			filter = {self:GetOwner(), self},
			mask = MASK_SHOT,
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

function ENT:Impact(tr, phys, bHull) 
	if (IsValid(self.Weapon)) then
		self:FireBullets({
			Attacker = self:GetOwner(),
			Num = 1,
			Tracer = 0,
			Src = self.LastPos,
			Dir = (phys:GetPos() - self.LastPos):GetNormalized(),
			HullSize = bHull && self.Maxs:Length() * 2 || 1,
			IgnoreEntity = self,
			Callback = function(attacker, tr, dmgInfo)
				dmgInfo:SetInflictor(self.Weapon)
				dmgInfo:SetDamageType(dmgInfo:GetDamageType() + DMG_DIRECT + self:GetDamageType())
				self.Weapon:BulletCallback(attacker, tr, dmgInfo)
			end
		})
	end
	
	self:Kill()
end

function ENT:Kill()
	self.bCollided = true
	self:SetNoDraw(true)
	self:GetPhysicsObject():EnableMotion(false)
end

function ENT:GetDamageType()
	return DMG_BULLET
end