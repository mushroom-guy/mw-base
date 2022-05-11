AddCSLuaFile()

if (SERVER) then
    return
end

local randomMaterial = Material("mg/random")
local clearMaterial = Material("mg/clear")

hook.Add("OnContextMenuOpen", "MW_ContextMenu", function()
    if (input.LookupBinding("mgbase_customize", false) == nil) then
        RunConsoleCommand("mgbase_customize")
    end
end)

local entireMenu = nil

function SWEP:CustomizationMenu()
    if (self:IsCustomizing()) then
        gui.EnableScreenClicker(true)
        self:OpenCustomizationMenu()
    else
        gui.EnableScreenClicker(false)
        self:CloseCustomizationMenu()
    end
end

function SWEP:DrawProsAndCons(slide)
	local x,y = ScrW() * 0.95, ScrH() * 0.5
	local scale = ScrH() / 1080
	local c = 0
	for i, v in pairs(self.StatBreadcrumbs) do
        local info = self.StatInfo[self.StatDefinitions[i]]

		if (info == nil) then
			continue
		end

		c = c + 1
	end

	local spacing = 25 * scale
	y = y - ((c * spacing) * 0.5)
	c = 0
	for i, v in SortedPairs(self.StatBreadcrumbs) do
		local info = self.StatInfo[self.StatDefinitions[i]]

		if (info == nil) then
			continue
		end

		local isPro = v.Current >= v.Source

        if (!info.ProIfMore) then
            isPro = v.Current <= v.Source
        end

        local valuePercentage = math.abs((math.Round(v.Current / v.Source * 100) - 100))
		local percentage = valuePercentage.."%"

		if (!info.ShowPercentage) then
			percentage = math.abs(v.Source - v.Current)
		end

        if (valuePercentage < 1) then
            continue
        end

        c = c + 1

		percentage = (v.Current > v.Source && "+" || "-")..percentage

        local textSlide = math.max(slide --[[* c]], 1)
		draw.SimpleTextOutlined(info.Name, "mgbase_firemode", x - 20 * scale + textSlide, y + c * spacing, Color(255, 255, 255, 200), TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
		draw.SimpleTextOutlined(percentage, "mgbase_firemode", x + textSlide, y + c * spacing, isPro && Color(0, 200, 0, 255) || Color(200, 0, 0, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
	end
end

local alphaDelta = 0
local buttons = {}

function SWEP:OpenCustomizationMenu()
    surface.PlaySound("mw/user_interface/main_iw8/iw8_wheel_popup.wav")

	local scale = ScrH() / 1080
	local boffset = 20 * scale
 
    alphaDelta = 0

    --main panel
    entireMenu = vgui.Create("DPanel") 
    entireMenu:SetPos(0, 0)
    entireMenu:SetSize(ScrW(), ScrH())
    entireMenu.UsePressed = false
    entireMenu.Paint = function(b)
        if (!b.UsePressed) then
            alphaDelta = Lerp(math.min(10 * FrameTime(), 1), alphaDelta, 1)
        end
        
        draw.SimpleTextOutlined("CUSTOMIZE", "mgbase_attTitle", ScrW() * 0.5, ScrH() * 0.1 + (1 - alphaDelta) * boffset, Color(255, 255, 255, alphaDelta * 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(0, 0, 0, alphaDelta * 20))
        
        surface.SetDrawColor(255, 255, 255, alphaDelta * 255)
        surface.DrawLine(ScrW() * 0.5 - alphaDelta * 200 * scale, ScrH() * 0.1 + boffset, ScrW() * 0.5 + alphaDelta * 200 * scale, ScrH() * 0.1 + boffset)

        draw.SimpleTextOutlined(self.PrintName, "mgbase_attWeaponName", ScrW() * 0.5, ScrH() * 0.1 + boffset * 2 - (1 - alphaDelta) * boffset, Color(255, 255, 255, alphaDelta * 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 2, Color(0, 0, 0, alphaDelta * 20))
        
        surface.SetAlphaMultiplier(alphaDelta)
        self:DrawProsAndCons((1 - alphaDelta) * 200)
        surface.SetAlphaMultiplier(1)

        surface.SetAlphaMultiplier(1 - alphaDelta)
        self:DrawStats(alphaDelta)
        surface.SetAlphaMultiplier(1)

        draw.SimpleTextOutlined("HOLD "..string.upper(input.LookupBinding("+use") || "USE KEY (NOT BOUND)").." TO INSPECT WEAPON & STATS", "mgbase_attName", ScrW() * 0.5, ScrH() * 0.9 - 60 * scale, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(0, 0, 0, 20))
    end

    entireMenu.Think = function(b)
        if (!IsValid(self) || !self:IsCustomizing()) then
            gui.EnableScreenClicker(false)
            b:Remove()
            return
        end

        local useKey = input.GetKeyCode(input.LookupBinding("+use") or "")

        if (useKey > 0 && input.IsKeyDown(useKey)) then
            if (!b.UsePressed) then
                for i, button in pairs(buttons) do
                    button:Remove()
                end
            end

            b.UsePressed = true

            self.MouseX = self:SafeLerp(20 * FrameTime(), self.MouseX, gui.MouseX())
            self.MouseY = self:SafeLerp(20 * FrameTime(), self.MouseY, gui.MouseY())

            alphaDelta = 0
        else
            if (b.UsePressed) then
                self:CreateAttButtons(b)
            end

            b.UsePressed = false

            self.MouseX = self:SafeLerp(20 * FrameTime(), self.MouseX, ScrW() * 0.5)
            self.MouseY = self:SafeLerp(20 * FrameTime(), self.MouseY, ScrH() * 0.5)
        end
    end
    -- end main panel

    -- exit button
    local exitButton = vgui.Create("DButton", entireMenu)
    exitButton:SetSize(150 * scale, 66 * scale)
    exitButton:SetText("")
    exitButton.HoverDelta = 0
    exitButton:SetPos(ScrW() * 0.5 - 75 * scale, ScrH() * 0.9 - 33 * scale)

    exitButton.Paint = function(b)
        b.HoverDelta = b:IsHovered() && math.min(b.HoverDelta + 10 * FrameTime(), 1) || math.max(b.HoverDelta - 10 * FrameTime(), 0)

        surface.SetDrawColor(255, 255, 255, b.HoverDelta * 50)
        surface.DrawRect(0, 0, b:GetWide(), b:GetTall())

        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawOutlinedRect(0, 0, b:GetWide(), b:GetTall())

        draw.SimpleTextOutlined("EXIT", "mgbase_attTitle", 75 * scale, 28 * scale, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, alphaDelta * 20))
    end

    exitButton.DoClick = function(b)
        RunConsoleCommand("mgbase_customize")
    end
    -- end exit button

    -- random button
    local randomButton = vgui.Create("DButton", entireMenu)
    randomButton:SetSize(50 * scale, 50 * scale)
    randomButton:SetText("")
    randomButton.HoverDelta = 0
    randomButton:SetPos(ScrW() * 0.5 - 25 * scale + 150 * scale, ScrH() * 0.9 - 25 * scale)

    randomButton.Paint = function(b)
        b.HoverDelta = b:IsHovered() && math.min(b.HoverDelta + 10 * FrameTime(), 1) || math.max(b.HoverDelta - 10 * FrameTime(), 0)

        surface.SetDrawColor(255, 255, 255, b.HoverDelta * 50)
        surface.DrawRect(0, 0, b:GetWide(), b:GetTall())

        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawOutlinedRect(0, 0, b:GetWide(), b:GetTall())

        surface.SetDrawColor(255, 255, 255, 255)
        surface.SetMaterial(randomMaterial)
        surface.DrawTexturedRect(5, 5, b:GetWide() - 10, b:GetTall() - 10)
    end

    randomButton.DoClick = function(b)
        self:RandomizeAttachments()
    end
    -- end random button

    -- clear button
    local clearButton = vgui.Create("DButton", entireMenu)
    clearButton:SetSize(50 * scale, 50 * scale)
    clearButton:SetText("")
    clearButton.HoverDelta = 0
    clearButton:SetPos(ScrW() * 0.5 - 25 * scale - 150 * scale, ScrH() * 0.9 - 25 * scale)

    clearButton.Paint = function(b)
        b.HoverDelta = b:IsHovered() && math.min(b.HoverDelta + 10 * FrameTime(), 1) || math.max(b.HoverDelta - 10 * FrameTime(), 0)

        surface.SetDrawColor(255, 255, 255, b.HoverDelta * 50)
        surface.DrawRect(0, 0, b:GetWide(), b:GetTall())

        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawOutlinedRect(0, 0, b:GetWide(), b:GetTall())

        surface.SetDrawColor(255, 255, 255, 255)
        surface.SetMaterial(clearMaterial)
        surface.DrawTexturedRectRotated(25, 25, b:GetWide() - 15, b:GetTall() - 10, -13)
    end

    clearButton.DoClick = function(b)
        self:ClearAttachments()
    end
    -- end clear button

    self:CreateAttButtons(entireMenu)
end

function SWEP:CreateAttButtons(panel)
    local index = 0

	local scale = ScrH() / 1080
    local spacing = 65 * scale
    local btnsize = 55 * scale
    local labelspacing = 25 * scale
    local animspacing = 28 * scale

    local height = ScrH() * 0.5 - (self:GetCustomizationCount() * 0.5 * spacing) - spacing
    for slot, attachments in pairs(self.Customization) do
        index = index + 1

        local xChildren = 0

        for ind, att in pairs(attachments) do
            if (ind == 1) then
                continue
            end

            local attButton = vgui.Create("DButton", panel)
            attButton:SetSize(btnsize, btnsize)
            attButton:SetText("")
            attButton.HoverDelta = 0
            attButton.XChildren = xChildren
            attButton.HoverAnim = 0
            attButton:SetPos((ind - 1) * spacing, height + slot * spacing)
            buttons[#buttons + 1] = attButton

            attButton.Paint = function(b)
                if (!IsValid(self)) then
                    return
                end
                
                if (att.Cope == true) then
                    return -- literally dont care
                end
                
                b.HoverAnim = b.HoverAnim + FrameTime()

                if (b.HoverAnim >= 1) then
                    b.HoverAnim = 0
                end
                
                local attachment = self:GetStoredAttachment(att)

                if (attachment.ClassName == self:GetAttachmentInUseForSlot(slot).ClassName) then
                    b.HoverDelta = math.min(b.HoverDelta + 10 * FrameTime(), 1.5)
                    
                    cam.Start2D()
                        draw.SimpleTextOutlined(attachment.Name, "mgbase_attName", (#attachments) * spacing, b:GetY() + labelspacing, Color(255, 255, 255, alphaDelta * 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, alphaDelta * 20))
                    cam.End2D()

                    local delta = b.HoverDelta - 1
                    surface.SetDrawColor(255, 255, 255, (delta / 0.5) * 255)
                    surface.DrawOutlinedRect(0, 0, btnsize, btnsize)

                    local sin = b.HoverAnim
                    local x,y = (1 - sin) * animspacing, (1 - sin) * animspacing

                    surface.SetDrawColor(255, 255, 255, (1 - sin) * 255)
                    surface.DrawOutlinedRect(x, y, sin * btnsize, sin * btnsize)
                else
                    b.HoverDelta = b:IsHovered() && math.min(b.HoverDelta + 10 * FrameTime(), 1) || math.max(b.HoverDelta - 10 * FrameTime(), 0)
                end

                local bAllowed = self:IsAttachmentAllowed(attachment)

                if (!bAllowed) then
                    b.HoverDelta = 1
                end

                if (!bAllowed) then
                    local col = b.HoverDelta * 100
                    surface.SetDrawColor(col, 0, 0, alphaDelta * 150)
                else
                    local col = b.HoverDelta * 100
                    surface.SetDrawColor(col, col, col, alphaDelta * 150)
                end

                surface.DrawRect(0, 0, b:GetWide(), b:GetTall())
                
                surface.SetMaterial(attachment.Icon)
                surface.SetDrawColor(255, 255, 255, alphaDelta * 255)
                surface.DrawTexturedRect(b:GetWide() * 0.05, b:GetTall() * 0.05, b:GetWide() * 0.9, b:GetTall() * 0.9)
            end
 
            attButton.DoClick = function(b)
                local attachment = self:GetStoredAttachment(att)

                if (attachment.ClassName == self:GetAttachmentInUseForSlot(slot).ClassName) then
                    surface.PlaySound("viper/shared/iw8_general_select_alt_v1.ogg")
                else
                    surface.PlaySound("viper/shared/iw8_general_select_v1.ogg")
                end

                net.Start("mgbase_customize_att")
                net.WriteInt(slot, 8)
                net.WriteInt(ind, 8)
                net.WriteEntity(self)
                net.SendToServer()
            end

            xChildren = xChildren + 1
        end
    end 
end

function SWEP:CloseCustomizationMenu()
    if (entireMenu != nil) then
        surface.PlaySound("mw/user_interface/mp/iw8_scoreboard_popup_extra.wav")
        entireMenu:Remove()
    end
end

function SWEP:ClearAttachments()
    if (self.Customization == nil) then
        return
    end

    surface.PlaySound("mw/user_interface/mp/iw8_restock_lethals_v1.wav")
    
    for slot, atts in pairs(self.Customization) do
        net.Start("mgbase_customize_att")
            net.WriteInt(slot, 8)
            net.WriteInt(1, 8)
            net.WriteEntity(self)
        net.SendToServer()
    end
end

function SWEP:RandomizeAttachments()
    if (self.Customization == nil) then
        return
    end

    surface.PlaySound("mw/user_interface/aar/ui_aar_progress_circle_stop.wav")

    for slot, atts in pairs(self.Customization) do
        net.Start("mgbase_customize_att")
            net.WriteInt(slot, 8)
            net.WriteInt(math.random(1, #atts), 8)
            net.WriteEntity(self)
        net.SendToServer()
    end
end

--draw.SimpleTextOutlined(info.Name, "mgbase_firemode", x - 20 * scale + textSlide, y + c * spacing, Color(255, 255, 255, 200), TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
--draw.SimpleTextOutlined(percentage, "mgbase_firemode", x + textSlide, y + c * spacing, isPro && Color(0, 200, 0, 255) || Color(200, 0, 0, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))

function SWEP:GetStatColor(originalStat, currentStat, statInfoIndex)
    local statInfo = self.StatInfo[statInfoIndex]
    
    if (statInfo != nil) then
        if (originalStat != currentStat) then
            local isPro = currentStat > originalStat

            if (!statInfo.ProIfMore) then
                isPro = currentStat < originalStat
            end

            return isPro && Color(0, 200, 0, 255) || Color(200, 0, 0, 255)
        end
    end

    return Color(255, 255, 255, 255)
end

local maxStats = 10

function SWEP:DrawStat(statInfoIndex, append, index, originalStat, currentStat)
    local scale = ScrH() / 1080
    local spacing = (index * 30) - (maxStats * 0.5 * 30) * scale
    local x,y = ScrW() * 0.05, ScrH() * 0.5
    draw.SimpleTextOutlined(self.StatInfo[statInfoIndex].Name..":", "mgbase_firemode", x - 20 * scale, y + spacing, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))
    draw.SimpleTextOutlined(math.Round(currentStat, 2)..append, "mgbase_firemode", x + 220 * scale, y + spacing, self:GetStatColor(originalStat, currentStat, statInfoIndex), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))

    return x - 20 * scale, y + spacing
end

function SWEP:DrawStats()
    if (!self:GetOwner():KeyDown(IN_USE)) then
        return
    end

    local scale = ScrH() / 1080
    local spacing = 30 * scale
    local x,y = ScrW() * 0.05, ScrH() * 0.5

    draw.SimpleTextOutlined("STATS", "mgbase_firemode", x + 110 * scale, y - (maxStats * 0.5 * 35) * scale, Color(255, 255, 255, 200), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(0, 0, 0, 20))

    local original = weapons.Get(self:GetClass()) --inheritance gotta copy
    local c = 1
    self:DrawStat("DamageClose", "", c, original.Bullet.Damage[1], self.Bullet.Damage[1])
    c = c + 1

    self:DrawStat("DamageRange", "", c, original.Bullet.Damage[2], self.Bullet.Damage[2])
    c = c + 1

    self:DrawStat("RPM", "", c, original.Primary.RPM, self.Primary.RPM)
    c = c + 1

    self:DrawStat("EffectiveRange", "m", c, original.Bullet.EffectiveRange, self.Bullet.EffectiveRange)
    c = c + 1

    if (self.Projectile == nil) then
        self:DrawStat("MaxRange", "m", c, original.Bullet.Range, self.Bullet.Range)
        c = c + 1
    end

    local statBeforeLineX, statBeforeLineY = self:DrawStat("Accuracy", "", c, original.Cone.Hip * 100, self.Cone.Hip * 100)
    c = c + 1

    surface.SetDrawColor(255, 255, 255, 200)
    surface.DrawLine(statBeforeLineX, statBeforeLineY + spacing, statBeforeLineX + 300, statBeforeLineY + spacing)
    c = c + 1

    self:DrawStat("AimLength", "s", c, original.Animations.Ads_In.Length / (original.Animations.Ads_In.Fps / 30), self:GetAnimLength("Ads_In"))
    c = c + 1
    
    if (self.Animations.Reload_Loop == nil || original.Animations.Reload_Loop == nil) then
        self:DrawStat("ReloadLength", "s", c, original.Animations.Reload.Length / (original.Animations.Reload.Fps / 30), self:GetAnimLength("Reload"))
    else
        self:DrawStat("ReloadLength", "s", c, original.Animations.Reload_Loop.Length / (original.Animations.Reload_Loop.Fps / 30), self:GetAnimLength("Reload_Loop"))
    end
    c = c + 1

    self:DrawStat("DrawLength", "s", c, original.Animations.Draw.Length / (original.Animations.Draw.Fps / 30), self:GetAnimLength("Draw"))
    c = c + 1

    self:DrawStat("HolsterLength", "s", c, original.Animations.Holster.Length / (original.Animations.Holster.Fps / 30), self:GetAnimLength("Holster"))
    c = c + 1

    statBeforeLineX, statBeforeLineY = self:DrawStat("SprintLength", "s", c, original.Animations.Sprint_Out.Length / (original.Animations.Sprint_Out.Fps / 30), self:GetAnimLength("Sprint_Out"))
    c = c + 1
end