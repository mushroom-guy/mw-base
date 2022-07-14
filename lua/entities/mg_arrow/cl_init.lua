include("shared.lua")

killicon.Add("mg_arrow", "VGUI/entities/mg_crossbow", Color(255, 0, 0, 255))

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.bTracerOn = false

function ENT:DrawTranslucent(flags)
	if (self:GetVelocity():LengthSqr() > 0 || self:GetNailed()) then
		self:DrawModel()

		if (!self.bTracerOn) then
			ParticleEffectAttach("arrow_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
			self.bTracerOn = true
		end
	end
end