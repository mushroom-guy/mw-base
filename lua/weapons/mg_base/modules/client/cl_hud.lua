AddCSLuaFile()

if (SERVER) then
    return
end

function SWEP:DrawHUD()
	if (self:GetOwner():InVehicle()) then
		return
	end

	if (GetConVar("mgbase_debug_crosshair"):GetBool()) then
		draw.SimpleText("+", "DermaDefault", ScrW() * 0.5, ScrH() * 0.5 - 2, Color(0, 255, 0, 100), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	else
		if (GetConVar("mgbase_hud_xhair"):GetBool() && !self:IsCustomizing()) then
			self:Crosshair()
		end
	end

	if (GetConVar("mgbase_hud_firemode"):GetBool() && !self:IsCustomizing()) then
		self:DrawFiremode()
	end

	self:DrawCommands()
end

local lastIndex = 0
local transitionAnimation = 0

function SWEP:DrawFiremode()
	-- current firemode (outline commented out)
	local x,y = ScrW() * 0.5, ScrH() * 0.8
	local scale = ScrH() / 1080

	if (!self:GetSafety()) then
		local index = self:GetFiremode()

		transitionAnimation = math.min(transitionAnimation + 10 * FrameTime(), 1)

		if (lastIndex != index) then
			transitionAnimation = 0
			lastIndex = index
		end

		local name = string.upper(self.Firemodes[index].Name)
		draw.SimpleTextOutlined(name, "mgbase_firemode", x, y + (24 * (1 - transitionAnimation) * scale), Color(255, 255, 255, 200), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))

		-- next firemode
		if (self.Firemodes[index + 1]) then
			index = index + 1
		else
			index = 1
		end

		if (self:GetFiremode() != index) then
			name = string.upper(self.Firemodes[index].Name)
			draw.SimpleText(name, "mgbase_firemode_alt", x, y + (24 * transitionAnimation * scale), Color(127, 127, 127, 150), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	else
		draw.SimpleTextOutlined("SAFETY", "mgbase_firemode", x, y, Color(255, 255, 255, 200), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
	end
end

function SWEP:DrawBinding(x, y, bind)
	local key = string.upper(input.LookupBinding(bind) || "KEY NOT BOUND: "..bind)
	local scale = ScrH() / 1080
	local size = 26 * scale

	surface.SetFont("mgbase_command")
	local w = math.max(surface.GetTextSize(key) + 10 * scale, size)

	draw.RoundedBox(4, x - (w * 0.5 - 1), y - (size * 0.5 * scale - 1), w, size * scale, Color(0, 0, 0, 150))
	draw.SimpleText(key, "mgbase_command", x, y, Color(255, 255, 255, 200), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

	return w * 0.5 + (5 * scale)
end

function SWEP:DrawCommands()
	local scale = ScrH() / 1080
	local x,y = ScrW() * 0.7, ScrH() * 0.5

	if (GetConVar("mgbase_hud_sights"):GetBool()) then
		surface.SetAlphaMultiplier(self:GetAimDelta())

		if (self:CanChangeAimMode()) then
			local w = self:DrawBinding(x, y, "+use")
			draw.SimpleTextOutlined("x 2: SIGHTS", "mgbase_commandSecondary", x + w, y, Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
		end

		x,y = ScrW() * 0.5, ScrH() * 0.7

		if (self:GetSight() != nil && self:GetSight().Optic != nil && self:GetAimModeDelta() <= self.m_hybridSwitchThreshold && !self:GetOwner():KeyDown(IN_SPEED)) then
			local w = self:DrawBinding(x, y, "+speed")
			draw.SimpleTextOutlined("HOLD BREATH", "mgbase_commandSecondary", x, y + (30 * scale), Color(255, 255, 255, 200), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
		end

		surface.SetAlphaMultiplier(1)
	end

	if (GetConVar("mgbase_hud_flashlight"):GetBool() && self:GetFlashlightAttachment() != nil && !self:GetIsCustomizing()) then
		surface.SetFont("mgbase_commandSecondary")
		local tw = surface.GetTextSize(": FLASHLIGHT") * 0.5
		x,y = ScrW() * 0.5 - tw - 7, ScrH() * 0.9 - 150

		--if (self:CanChangeAimMode()) then
			local w = self:DrawBinding(x, y, "impulse 100")
			draw.SimpleTextOutlined(": FLASHLIGHT", "mgbase_commandSecondary", x + w, y, Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
		--end
	end
end

function SWEP:CanDrawCrosshair()
	return !self:GetIsReloading()
		&& !self:GetIsSprinting()
		&& !self:GetIsHolstering()
		&& !self:IsDrawing()
		&& CurTime() > self:GetNextMeleeTime()
end

function SWEP:DrawCrosshairSticks(x, y)
	local aimDelta = 1 - self:GetAimDelta()

	surface.SetAlphaMultiplier(aimDelta)

	local crosshairAlpha = 200

	--dot
	local c = self:GetCone()
	local m = self.Cone.Max
	local h = self.Cone.Hip
	local dotDelta = (c - h) / (m - h) 
	if (m - h <= 0) then
		dotDelta = 0
	end

	local color = string.ToColor(GetConVar("mgbase_hud_xhaircolor"):GetString())
	surface.SetDrawColor(color.r, color.g, color.b, 200)

	surface.SetAlphaMultiplier(aimDelta * (1 - dotDelta))
	surface.DrawRect(x - 1, y - 1, 2, 2)
	surface.SetAlphaMultiplier(aimDelta)

	if (self:CanDrawCrosshair()) then
		local cone = self:GetCone() * 100
		
		--right stick
		surface.DrawRect(x + cone + 3, y - 1, 10, 2)
		
		--left stick
		surface.DrawRect(x - cone - 9 - 3, y - 1, 10, 2)

		--down stick
		surface.DrawRect(x - 1, y + cone + 3, 2, 10)
		
		if (self.Primary.Automatic) then
			--up stick
			surface.DrawRect(x - 1, y - cone - 9 - 3, 2, 10)
		end
	end

	surface.SetAlphaMultiplier(1)
	surface.SetDrawColor(255, 255, 255, 255)
end

function SWEP:Crosshair()
	if (self._eyeang == nil) then
		return
	end
	
	local x, y = ScrW() * 0.5, ScrH() * 0.5
	local pos = (EyePos() + self._eyeang:Forward() * 10):ToScreen()

	if (Vector(x, 0, y):DistToSqr(Vector(pos.x, 0, pos.y)) > 2.25) then
		x,y = math.floor(pos.x), math.floor(pos.y)
	end

	self:DrawCrosshairSticks(x, y)
end
--FONTS

local function CreateFonts()
	local scale = ScrH() / 1080

	surface.CreateFont("mgbase_firemode", {
		font = "BioSansW05-Light",
		size = 30 * scale,
		weight = 0
	})

	surface.CreateFont("mgbase_firemode_alt", {
		font = "BioSansW05-Light",
		size = 24 * scale,
		weight = 0
	})

	surface.CreateFont("mgbase_attSlot", {
		font = "Conduit ITC",
		size = 24 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_attSlotAttachmentInUse", {
		font = "Conduit ITC",
		size = 24 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_attSlotAttachmentInUse_IsCosmetic", {
		font = "BioSansW05-Light",
		size = 20 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_attSlotAttachmentInUse:hover", {
		font = "Conduit ITC",
		size = 24 * scale,
		weight = 500,
		blursize = 1
	})

	surface.CreateFont("mgbase_attSlot:hover", {
		font = "Conduit ITC",
		size = 24 * scale,
		weight = 500,
		blursize  = 2
	})

	surface.CreateFont("mgbase_attName", {
		font = "Conduit ITC",
		size = 24 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_attTitle", {
		font = "BioSansW05-Light",
		size = 60 * scale,
		weight = 0
	})

	surface.CreateFont("mgbase_attTitle_blur", {
		font = "BioSansW05-Light",
		size = 60 * scale,
		weight = 0,
		blursize = 3
	})

	surface.CreateFont("mgbase_attWeaponName", {
		font = "Conduit ITC",
		size = 36 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_command", {
		font = "BioSansW05-Light",
		size = 26 * scale,
		weight = 500
	})

	surface.CreateFont("mgbase_commandSecondary", {
		font = "BioSansW05-Light",
		size = 22 * scale,
		weight = 500
	})
end
hook.Add("OnScreenSizeChanged", "MW_UpdateFonts", CreateFonts)
CreateFonts()
