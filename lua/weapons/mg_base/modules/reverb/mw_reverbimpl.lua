AddCSLuaFile()

local REVERB_RESOLUTION = 0.25 --Default: 0.1. Less means more raycasts.
local REVERB_ROOMSIZE = 2048
local REVERB_TINYROOMSIZE = 320

function SWEP:CheckRoomScale(dist)
	return dist > (REVERB_ROOMSIZE * REVERB_ROOMSIZE);
end

local reverbSize = Vector(4, 4, 4)

function SWEP:mg_IsPlayerReverbOutside()
	if (!IsValid(self:GetOwner()) || !IsFirstTimePredicted()) then
		coroutine.yield(nil)
	end

	coroutine.wait(0.1)
	
	local dist = 0
	local start = self:GetOwner():EyePos() 
	local len = math.pow(self.Reverb.RoomScale, 1/3) * 100
	local resolution = 1

	for r = 0.5, 0.1, (REVERB_RESOLUTION / resolution) * -0.5 do
		local hCos = math.sin(r * math.pi)
		for i = -1, 1, (REVERB_RESOLUTION / resolution) do 
			local sin = math.sin(i * math.pi) * hCos
			local cos = math.cos(i * math.pi) * hCos

			local dir = Vector(sin, cos, math.cos(r * math.pi))
			local tr = util.TraceHull({
				start = start, 
				endpos = start + dir * 32768,
				mask = MASK_SHOT,
				mins = -reverbSize,
				maxs = reverbSize,
				filter = self:GetOwner()
			})

			local distToHitPos = start:DistToSqr(tr.HitPos)
			local acceptableCloseDistance = REVERB_TINYROOMSIZE * REVERB_TINYROOMSIZE

			if (tr.HitSky || self:CheckRoomScale(distToHitPos)) then
				dist = dist + (REVERB_ROOMSIZE * REVERB_ROOMSIZE) * 0.3
			else
				if (distToHitPos <= acceptableCloseDistance) then
					dist = dist - (REVERB_ROOMSIZE * REVERB_ROOMSIZE) * 0.15
				else
					dist = dist - (distToHitPos * 0.4)
				end
			end

			if (GetConVar("mgbase_debug_reverb"):GetInt() > 0) then
				local color = distToHitPos <= acceptableCloseDistance && Color(0, 255, 0, 1) || Color(255, 150, 0, 1)
				debugoverlay.Line(start, tr.HitPos, 1, color)
				debugoverlay.Box(tr.HitPos, -reverbSize, reverbSize, 1, color)
				debugoverlay.Text(tr.HitPos, math.Round(math.sqrt(distToHitPos)), 1)
			end

			--If room scale is already big enough, no need to cast any more rays.
			if self:CheckRoomScale(dist) then
				break
			end
		end
		coroutine.wait(0)
	end

	if (GetConVar("mgbase_debug_reverb"):GetInt() > 0) then
		debugoverlay.ScreenText(0, 0.1, "Room scale: "..math.Round(math.sqrt(dist)), 0, Color(255, 150, 0, 255))
	end
	
	coroutine.yield(self:CheckRoomScale(dist))
end 