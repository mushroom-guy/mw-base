AddCSLuaFile()

--[[local MW_REVERB_SOUNDS = {
	["default"] = {
		Outside = {
			Layer = "Atmo_AR.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["assault_rifle_1"] = {
		Outside = {
			Layer = "Atmo_AR.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["assault_rifle_2"] = {
		Outside = {
			Layer = "Atmo_AR2.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["assault_rifle_3"] = {
		Outside = {
			Layer = "Atmo_AR3.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["assault_rifle_4"] = {
		Outside = {
			Layer = "Atmo_AR4.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["assault_rifle_5"] = {
		Outside = {
			Layer = "Atmo_AR6.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_AR.Inside",
	},

	["pistol"] = {
		Outside = {
			Layer = "Atmo_Pistol.Outside",
			Reflection = "Reflection_Pistol.Outside",
		},
		Inside = "Atmo_Pistol.Inside",
	},

	["suppressed_pistol"] = {
		Outside = {
			Layer = "Atmo_Pistol_Sup.Outside",
			Reflection = "Reflection_Pistol.Outside",
		},
		Inside = "Atmo_Pistol_Sup.Inside",
	},

	["suppressed_assault_rifle"] = {
		Outside = {
			Layer = "Atmo_AR2_Sup.Outside",
			Reflection = "Reflection_Rifle.Outside",
		},
		Inside = "Atmo_AR_Sup.Inside",
	},

	["pistol_heavy"] = {
		Outside = {
			Layer = "Atmo_Pistol_Mag2.Outside",
			Reflection = "Reflection_Pistol.Outside",
		},
		Inside = "Atmo_Shotgun.Inside",
	},

	["smg"] = {
		Outside = {
			Layer = "Atmo_SMG.Outside",
			Reflection = "Reflection_Pistol.Outside",
		},
		Inside = "Atmo_SMG.Inside",
	},

	["shotgun"] = {
		Outside = {
			Layer = "Atmo_Shotgun.Outside",
			Reflection = "Reflection_Shotgun.Outside",
		},
		Inside = "Atmo_Shotgun.Inside",
	},

	["sniper"] = {
		Outside = {
			Layer = "Atmo_Sniper.Outside",
			Reflection = "Reflection_Sniper.Outside",
		},
		Inside = "Atmo_Sniper.Inside",
	},

	["LMG"] = {
		Outside = {
			Layer = "Atmo_LMG.Outside",
			Reflection = "Reflection_AR.Outside",
		},
		Inside = "Atmo_LMG.Inside",
	},

	["DMR"] = {
		Outside = {
			Layer = "Atmo_DMR.Outside",
			Reflection = "Reflection_Sniper.Outside",
		},
		Inside = "Atmo_Sniper.Inside",
	},

	["RPG"] = {
		Outside = {
			Layer = "Atmo_RPG.Outside",
			Reflection = "Atmo_RPG.Outside",
		},
		Inside = "Atmo_RPG.Outside",
	},
}]] --IM LEAVING THESE HERE FOR REFERENCE

function SWEP:HandleReverb()
	if (!IsValid(self:GetOwner()) || !IsFirstTimePredicted()) then
		return
	end

	if (self.Reverb == nil) then
		return
	end

	local layer = ""
	local reflection = ""

	if self.Reverb.Sounds then
		local outside = self.LastReverbState

		if (outside) then
			layer = self.Reverb.Sounds.Outside.Layer
			reflection = self.Reverb.Sounds.Outside.Reflection
		else
			layer = self.Reverb.Sounds.Inside.Layer != nil && self.Reverb.Sounds.Inside.Layer || self.Reverb.Sounds.Inside
			reflection = self.Reverb.Sounds.Inside.Reflection != nil && self.Reverb.Sounds.Inside.Reflection || ""
		end
		
		if layer != "" then
			if (!game.SinglePlayer()) then
				self:EmitSound(layer)
			else
				self:GetOwner():SendLua("LocalPlayer():EmitSound('"..layer.."')")
			end
		end

		if reflection != "" then
			if (!game.SinglePlayer()) then
				self:EmitSound(reflection)
			else
				self:GetOwner():SendLua("LocalPlayer():EmitSound('"..reflection.."')")
			end
		end
	end
end

function SWEP:CreateAndResumeReverbJob()
	if (self.ReverbJob == nil) then
		self.ReverbJob = coroutine.create(function()
			while (true) do
				self:mg_IsPlayerReverbOutside()
			end
		end)
	end

	local success, yield = coroutine.resume(self.ReverbJob)

	if (yield != nil) then
		self.LastReverbState = yield
	end
end