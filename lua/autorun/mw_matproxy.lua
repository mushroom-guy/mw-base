AddCSLuaFile()

if SERVER then return end

matproxy.Add( {
	name = "MwEnvMapTint",
	
	init = function(self, mat, values)
		if (values.color != nil) then
			self.color = string.Explode(" ", string.Replace(string.Replace(values.color, "[", ""), "]", ""))
		end

		self.envmap = values.envmap
		self.min = values.min
		self.max = values.max
		self.envMapCount = #ents.FindByClass("env_cubemap")
	end,

	bind = function(self, mat, ent)
		if (!IsValid(ent)) then return end

		if (ent.m_MwEnvMapTint == nil) then
			ent.m_MwEnvMapTint = 0 --leeching off of ents as 'self' in bind seems to be the same reference across all ents
		end

		local c = render.GetLightColor(ent:GetPos())
		--luminance (0.2126*R + 0.7152*G + 0.0722*B)
		--luminance heavy sqrt( 0.299*R^2 + 0.587*G^2 + 0.114*B^2 )
		local luminance = (c.x * 0.2126) + (c.y * 0.7152) + (c.z * 0.0722)
		local targetLuminance = luminance - 0.008
		
		ent.m_MwEnvMapTint = Lerp(10 * FrameTime(), ent.m_MwEnvMapTint, targetLuminance)

		local color = Vector(1, 1, 1)

		if (self.color != nil) then
			color = Vector(self.color[1], self.color[2], self.color[3])
		end

		local tint = color * Lerp(ent.m_MwEnvMapTint, self.min, self.max)

		mat:SetVector("$envmaptint", tint)
		mat:SetTexture("$envmap", self.envmap || "viper/shared/envmaps/mw19_shoothouse_cubemap_hdr")
	end
})

matproxy.Add( {
	name = "MwCamo",
	
	init = function(self, mat, values)
	end,

	bind = function(self, mat, ent)
		if (!IsValid(ent)) then return end

		mat:SetInt("$detailblendmode", 0)
		mat:SetFloat("$detailblendfactor", 0)

		if (ent.mw_Camo == nil || ent.mw_Camo == "") then return end

		mat:SetInt("$detailblendmode", 4)
		mat:SetFloat("$detailblendfactor", 1)
		mat:SetTexture("$detail",  ent.mw_Camo)
	end
})

matproxy.Add( {
	name = "MwSight",
	
	init = function(self, mat, values)
	end,

	bind = function(self, mat, ent)
		if (!IsValid(ent)) then return end

		if (ent.mw_Aim == nil) then
			mat:SetInt("$cloakpassenabled", 0)
			mat:SetFloat("$cloakfactor", 0)
		else
			mat:SetInt("$cloakpassenabled", 1)
			mat:SetFloat("$cloakfactor", math.Round(ent.mw_Aim))
		end
	end
})

