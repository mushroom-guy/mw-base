AddCSLuaFile()

local openSound = "mw/user_interface/main_iw8/iw8_wheel_popup.wav"
local detachSound = "mw/user_interface/main_iw8/iw8_mainmenu_deny_v1.wav"
local attachSound = "mw/user_interface/main_iw8/iw8_general_purchase_confirm_v1.wav"
local selectAttachmentSound = "mw/user_interface/mp/iw8_radar_drone_marker2.wav"
local closeAttachmentsSound = "mw/user_interface/mp/iw8_outofbounds_popup.wav"
local closeSound = "mw/user_interface/mp/iw8_scoreboard_popup_extra.wav"
local scrollSound = "mw/user_interface/ui_text_beep1.wav"
local hoverSounds = {
    "mw/user_interface/main_iw8/iw8_general_updownmovement1_v1.wav",
    "mw/user_interface/main_iw8/iw8_general_updownmovement2_v1.wav",
    "mw/user_interface/main_iw8/iw8_general_updownmovement3_v1.wav",
    "mw/user_interface/main_iw8/iw8_general_updownmovement4_v1.wav",
    "mw/user_interface/main_iw8/iw8_general_updownmovement5_v1.wav",
    "mw/user_interface/main_iw8/iw8_general_updownmovement6_v1.wav"
}
local hoverAttachmentSounds = {
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove1_v1.wav",
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove2_v1.wav",
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove3_v1.wav",
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove4_v1.wav",
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove5_v1.wav",
    "mw/user_interface/main_iw8/iw8_mpmenu_tabsmove6_v1.wav"
}
local selectCategorySound = "mw/user_interface/main_iw8/iw8_leavelobby_alert_v1.wav"

local blurMaterial = Material("mg/blur")
local buttonGlowMaterial = Material("mg/buttonglow")
local customizeMenuOpenMaterial = Material("mg/customizemenuopen")
local removeAttachmentMaterial = Material("mg/removeattachment")
local closeAttachmentsMaterial = Material("mg/closeattachments")
local cursorGlowMaterial = Material("mg/cursorglow")

local blackColor = Color(0, 0, 0, 150)
local whiteColor = Color(255, 255, 255, 200)
local greyColor = Color(255, 255, 255, 150)
local shadowColor = Color(0, 0, 0, 20)
local backgroundErrorColor = Color(50, 0, 0, 150)
local errorColor = Color(150, 0, 0, 255)
local greenColor = Color(0, 210, 20, 255)
local redColor = Color(230, 0, 30, 255)

--opening the menu if no mgbase_customize bind (context menu)
hook.Add("OnContextMenuOpen", "MW_ContextMenu", function()
    if (input.LookupBinding("mgbase_customize", false) == nil) then
        RunConsoleCommand("mgbase_customize")
    end 
end)

local function closeCustomizationMenu()
    gui.EnableScreenClicker(false)
    surface.PlaySound(closeSound)

    if (IsValid(MW_CUSTOMIZEMENU)) then
        MW_CUSTOMIZEMENU:Remove()
    end
end

local function validWeapon(weapon)
    return IsValid(weapon) && weapon:GetOwner() == GetViewEntity() && weapon:IsCustomizing()
end
 
--removing panel if already there (reload code)
if (IsValid(MW_CUSTOMIZEMENU)) then
    MW_CUSTOMIZEMENU:Remove()
end

MW_CUSTOMIZEMENU = nil

local function openStatsInfo(panel, attachment, weapon)
    if (attachment.Breadcrumbs == nil) then --from attachments selection list
        weapon:MakeBreadcrumbsForAttachment(attachment)
    end

    local count = table.Count(attachment.Breadcrumbs)
    if (attachment.Breadcrumbs == nil || count <= 0) then
        return
    end

    if (!IsValid(panel.hover)) then
        panel.hover = vgui.Create("DPanel")
        panel.hover.parent = panel
        local x, y = panel:LocalToScreen(panel:GetPos())
        panel.hover:SetPos(x + panel:GetWide() + 20, y + 20)
        panel.hover:SetSize(400, 50 * count)
        panel.hover:SetMouseInputEnabled(false)
        panel.hover:NoClipping(true)
        function panel.hover:Think()
            if (!IsValid(self.parent)) then
                self:Remove()
                return
            end
            
            self:SetPos(math.Clamp(gui.MouseX() + 30, 0, ScrW() - self:GetWide()), math.Clamp(gui.MouseY() + 30, 0, ScrH() - self:GetTall()))
        end
        function panel.hover:Paint(w, h)
            surface.SetMaterial(blurMaterial)
            surface.SetDrawColor(255, 255, 255, 255)

            for i = 1, 10, 1 do
                render.UpdateScreenEffectTexture()
                self:DrawTexturedRect()
            end

            surface.SetDrawColor(blackColor.r, blackColor.g, blackColor.b, blackColor.a)
            self:DrawFilledRect()

            --white fade
            surface.SetMaterial(buttonGlowMaterial)
            surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a * 0.02)
            surface.DrawTexturedRect(0, h * 0.5, w, h * 0.5)
        end
        function panel.hover:PaintOver(w, h)
            surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
            
            --long line on the right
            surface.DrawLine(w + 5, 15, w + 5, h - 15)

            --corner lines
            surface.DrawLine(-5, -5, -5, 5)
            surface.DrawLine(-5, -5, 5, -5)
        end

        local statsGrid = vgui.Create("DGrid", panel.hover)
        statsGrid:SetPos(0, 0)
        statsGrid:SetCols(1)
        statsGrid:SetColWide(panel.hover:GetWide())
        statsGrid:SetRowHeight(50)
        statsGrid:Dock(FILL)

        for statInfo, crumb in SortedPairs(attachment.Breadcrumbs) do
            local statPanel = vgui.Create("DPanel")
            statPanel:SetSize(statsGrid:GetColWide(), statsGrid:GetRowHeight())
            function statPanel:Paint(w, h)
                if (!validWeapon(weapon)) then
                    return
                end

                local statInfo = weapon.StatInfo[statInfo]
                draw.SimpleText(statInfo.Name, "mgbase_statName", 10, h * 0.5, whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

                local bPositive = crumb.Current < crumb.Original

                if (statInfo.ProIfMore) then
                    bPositive = !bPositive
                end

                local statColor = bPositive && greenColor || redColor
                local statText = math.Round(crumb.Current - crumb.Original, 1)
                if (statInfo.ShowPercentage) then
                    statText = math.Round((crumb.Current - crumb.Original) / crumb.Original * 100, 1).."%"
                end

                statText = (bPositive && "⮝ " || "⮟ ")..statText

                draw.SimpleText(statText, "mgbase_stat", w - 10, h * 0.5, statColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)

                local c = Color(statColor.r, statColor.g, statColor.b, statColor.a * 0.5)
                draw.SimpleText(statText, "mgbase_statPositive", w - 10, h * 0.5, c, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
            end

            statsGrid:AddItem(statPanel)
        end
    end
end

local function closeStatsInfo(panel)
    if (!IsValid(panel.hover)) then
        return
    end

    panel.hover:Remove()
end

local function openCategoryList(categoryName, weapon, buttonFrom)
    local background = vgui.Create("DButton", MW_CUSTOMIZEMENU)
    background:SetPos(0, 0)
    background:SetSize(ScrW(), ScrH())
    background:SetText("")
    --background:ShowCloseButton(false) 
    --background:SetDraggable(false)
    background:Center()
    background:SetCursor("arrow")

    function background:Think()
        if (GetViewEntity():KeyDown(IN_USE)) then
            self:Remove()
        end
    end

    function background:Paint(width, height)
        Derma_DrawBackgroundBlur(self, self.m_fCreateTime)

        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, 3)
        surface.SetMaterial(cursorGlowMaterial)
        surface.DrawTexturedRect(gui.MouseX() - 175, gui.MouseY() - 175, 350, 350)
    end

    function background:DoClick()
        surface.PlaySound(closeAttachmentsSound)
        self:Remove()
    end

    local atts = {}

    for slot, attachmentClasses in pairs(weapon.Customization) do
        for i, attachmentClass in pairs(attachmentClasses) do
            local att = table.Copy(weapon:GetStoredAttachment(attachmentClass))
            if (att.Category == categoryName && i > 1 && weapon:GetAttachmentInUseForSlot(slot).ClassName != attachmentClass) then
                atts[#atts + 1] = att
            end
        end
    end

    if (#atts <= 0) then
        --failsafe somehow
        background:Remove()
        return
    end

    local menu = vgui.Create("DPanel", background)
    menu:SetSize(400, ScrH() * 0.6)
    menu:Center()

    local x,y = menu:GetPos()
    menu:SetPos(x, ScrH())
    menu:MoveTo(x, y, 0.1, 0, -1)

    function menu:Paint(width, height)
    end

    local headerPanel = vgui.Create("DPanel", menu)
    headerPanel:SetText("")
    headerPanel:Dock(TOP)
    headerPanel:SetSize(0, 40)
    headerPanel:DockMargin(20, 0, 20, 10)
    function headerPanel:Paint(w, h)
        draw.SimpleText(string.upper(categoryName), "mgbase_attSlotMenu", 0, h * 0.5, whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
    end 

    local closeButton = vgui.Create("DButton", headerPanel)
    closeButton:Dock(RIGHT)
    closeButton:SetSize(40, 40)
    closeButton:SetText("")
    
    local closeButtonDownColor = Color(100, 100, 100, 200)
    function closeButton:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        self:DrawOutlinedRect()

        surface.SetMaterial(closeAttachmentsMaterial)

        local color = self:IsDown() && closeButtonDownColor || whiteColor
        surface.SetDrawColor(color.r, color.g, color.b, color.a)
        surface.DrawTexturedRect(5, 5, w - 10, h - 10)
    end
    
    function closeButton:DoClick()
        surface.PlaySound(closeAttachmentsSound)
        background:Remove()
    end

    local scroll = vgui.Create("DScrollPanel", menu)
    scroll:Dock(FILL)

    local sbar = scroll:GetVBar()
    sbar:Dock(RIGHT)
    sbar.LastScrollValue = sbar:GetOffset()
    function sbar:Paint(w, h)
    end
    function sbar:Think()
        if (self:GetOffset() != self.LastScrollValue) then
            surface.PlaySound(scrollSound)
        end
        self.LastScrollValue = self:GetOffset()
    end
    function sbar.btnUp:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 2, 0, 4, h)
    end
    function sbar.btnDown:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 2, 0, 4, h)
    end
    function sbar.btnGrip:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 1, 10, 2, h - 20)
    end

    local attachmentsGrid = vgui.Create("DGrid", scroll)
    attachmentsGrid:SetPos(0, 0)
    attachmentsGrid:SetCols(1)
    attachmentsGrid:SetColWide(menu:GetWide())
    attachmentsGrid:SetRowHeight(80)
    attachmentsGrid:Dock(FILL)
    attachmentsGrid:DockMargin(20, 0, 0, 0)

    for _, attachment in SortedPairsByMemberValue(atts, "Name") do
        --panel to hold button
        local attachmentPanel = vgui.Create("DPanel")
        attachmentPanel:SetSize(attachmentsGrid:GetColWide() * 0.9, attachmentsGrid:GetRowHeight())
        function attachmentPanel:Paint(w, h)
        end

        local but = vgui.Create("DButton", attachmentPanel)
        but:SetText("")
        but:Dock(FILL)
        but:DockMargin(0, 5, 0, 5)
        but.HoverDelta = 0
        but.ClickDelta = 0
        but.bWasHovered = false
        but.IsAllowed = true

        function but:Think()
            if (!validWeapon(weapon)) then
                return
            end

            self.IsAllowed = weapon:IsAttachmentAllowed(attachment)
        end

        function but:Paint(width, height)
            if (self:IsHovered()) then
                self.HoverDelta = math.Approach(self.HoverDelta, 1, math.min(10 * RealFrameTime(), 0.1))

                if (!self.bWasHovered) then
                    surface.PlaySound(hoverAttachmentSounds[math.random(1, #hoverAttachmentSounds)])
                end
                self.bWasHovered = true

                openStatsInfo(self, attachment, weapon)
            else
                self.HoverDelta = math.Approach(self.HoverDelta, 0, math.min(10 * RealFrameTime(), 0.1))
                self.bWasHovered = false
                closeStatsInfo(self)
            end

            if (self:IsDown()) then
                self.ClickDelta = math.Approach(self.ClickDelta, 1, math.min(10 * RealFrameTime(), 0.1))
            else
                self.ClickDelta = math.Approach(self.ClickDelta, 0, math.min(10 * RealFrameTime(), 0.1))
            end

            local currentColor = self.IsAllowed && blackColor || backgroundErrorColor

            --background
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a)
            self:DrawFilledRect()

            currentColor = self.IsAllowed && (attachment.UIColor || whiteColor) || errorColor

            --click hold
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * 0.15 * self.ClickDelta)
            self:DrawFilledRect()

            --border hover
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * self.HoverDelta)
            self:DrawOutlinedRect()

            --glow hover
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * 0.15 * (self.HoverDelta - self.ClickDelta))
            surface.SetMaterial(buttonGlowMaterial)
            surface.DrawTexturedRect(0, height * 0.5, width, height * 0.5)

            --att icon
            surface.SetMaterial(attachment.Icon)
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, 255)
            surface.DrawTexturedRect(15, 11, 50, 50) --???

            --att name
            local hoverColor = Color(currentColor.r, currentColor.g, currentColor.b, currentColor.a * self.HoverDelta)
            local yOffset = attachment.CosmeticChange && self.HoverDelta * 10 || 0
            draw.SimpleText(attachment.Name, "mgbase_attSlotAttachmentInUse:hover", 75, height * 0.5 - yOffset, hoverColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            draw.SimpleText(attachment.Name, "mgbase_attSlotAttachmentInUse", 75, height * 0.5 - yOffset, currentColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, shadowColor)

            if (attachment.CosmeticChange) then 
                draw.SimpleText("Cosmetic", "mgbase_attSlotAttachmentInUse_IsCosmetic", 75, height * 0.5 + yOffset, hoverColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            end
        end

        function but:PaintOver(width, height)
        end

        function but:DoClick()
            if (!self.IsAllowed) then
                surface.PlaySound(selectAttachmentSound)
                return
            end

            local slotInUse = 1
            local indexInUse = 1

            for slot, atts in pairs(weapon.Customization) do
                for i, att in pairs(atts) do
                    if (att == attachment.ClassName) then
                        slotInUse = slot
                        indexInUse = i
                        break
                    end
                end
            end

            if (attachment.ClassName == weapon:GetAttachmentInUseForSlot(slotInUse).ClassName) then
                surface.PlaySound(detachSound)
            else
                surface.PlaySound(attachSound)
            end

            surface.PlaySound(selectAttachmentSound)
            buttonFrom.RemovedAttachmentIndex = buttonFrom.LastAttachmentIndex
            buttonFrom.LastAttachmentIndex = 1

            net.Start("mgbase_customize_att")
            net.WriteInt(slotInUse, 8)
            net.WriteInt(indexInUse, 8)
            net.WriteEntity(weapon)
            net.SendToServer()

            background:Remove()
        end

        attachmentsGrid:AddItem(attachmentPanel)
    end
end

local function openCustomizationMenu(weapon)
    surface.PlaySound(openSound)
    gui.EnableScreenClicker(true)

    MW_CUSTOMIZEMENU = vgui.Create("DFrame") 
    MW_CUSTOMIZEMENU:SetPos(0, 0)
    MW_CUSTOMIZEMENU:SetSize(ScrW(), ScrH())
    MW_CUSTOMIZEMENU:ShowCloseButton(false) 
    MW_CUSTOMIZEMENU:SetDraggable(false)
    MW_CUSTOMIZEMENU:Center()
    MW_CUSTOMIZEMENU.AlphaDelta = 0
    function MW_CUSTOMIZEMENU:Paint(width, height)
        if (!validWeapon(weapon)) then
            return
        end

        if (!GetViewEntity():KeyDown(IN_USE)) then
            self.AlphaDelta = Lerp(math.min(10 * RealFrameTime(), 1), self.AlphaDelta, 1)
        else
            self.AlphaDelta = Lerp(math.min(10 * RealFrameTime(), 1), self.AlphaDelta, 0)
        end

        --open blur thing
        local size = 1500 * self.AlphaDelta
        surface.SetMaterial(customizeMenuOpenMaterial)
        surface.SetDrawColor(0, 0, 0, math.sin(self.AlphaDelta * math.pi) * 200)
        surface.DrawTexturedRect(width * 0.5 - size * 0.5, height * 0.5 - size * 0.5, size, size)

        --title
        local animHeight = 20
        draw.SimpleTextOutlined("CUSTOMIZE", "mgbase_attTitle_blur", ScrW() * 0.5, ScrH() * 0.1 - animHeight + (1 - self.AlphaDelta) * animHeight, Color(255, 255, 255, self.AlphaDelta * math.abs(math.sin(CurTime() * 3) * 255)), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(0, 0, 0, self.AlphaDelta * 20))
        draw.SimpleTextOutlined("CUSTOMIZE", "mgbase_attTitle", ScrW() * 0.5, ScrH() * 0.1 - animHeight + (1 - self.AlphaDelta) * animHeight, Color(255, 255, 255, self.AlphaDelta * 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(0, 0, 0, self.AlphaDelta * 20))
        
        surface.SetDrawColor(255, 255, 255, self.AlphaDelta * 255)
        surface.DrawLine(ScrW() * 0.5 - self.AlphaDelta * 200, ScrH() * 0.1, ScrW() * 0.5 + self.AlphaDelta * 200, ScrH() * 0.1)

        --gun name
        draw.SimpleTextOutlined(weapon.PrintName, "mgbase_attWeaponName", ScrW() * 0.5, ScrH() * 0.1 + animHeight - (1 - self.AlphaDelta) * animHeight, Color(255, 255, 255, self.AlphaDelta * 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 2, Color(0, 0, 0, self.AlphaDelta * 20))
    end

    function MW_CUSTOMIZEMENU:Think()
        if (!validWeapon(weapon)) then
            closeCustomizationMenu()
            self:Remove() --why do i need this
        end
    end

    local categories = {}
 
    for slot, atts in pairs(weapon.Customization) do
        for ind, attClass in pairs(atts) do
            if (ind <= 1) then
                continue
            end

            local att = weapon:GetStoredAttachment(attClass)
            local category = att.Category
            categories[category] = (categories[category] || 0) + (weapon:IsAttachmentAllowed(att) && 1 || 0)
        end
    end

    if (table.IsEmpty(categories)) then
        return
    end

    --holder for categories with scroll bar
    local categoriesMenu = vgui.Create("DScrollPanel", MW_CUSTOMIZEMENU)
    categoriesMenu:SetPos(100, ScrH() * 0.2)
    categoriesMenu:SetSize(600, ScrH() * 0.6)
    --categoriesMenu:MoveTo(100, ScrH() * 0.2, 0.3, 0, 10)
    function categoriesMenu:Think()
        local x, y = self:GetPos()

        if (!GetViewEntity():KeyDown(IN_USE)) then
            x = math.Approach(x, 100, 5000 * RealFrameTime())
        else
            x = math.Approach(x, -600, 5000 * RealFrameTime())
        end

        self:SetPos(x, y)
    end

    function categoriesMenu:Paint(w, h)
    --    surface.SetDrawColor(255, 0, 0, 255)
    --    self:DrawFilledRect()
    end
    local sbar = categoriesMenu:GetVBar()
    sbar:Dock(LEFT)
    sbar.LastScrollValue = sbar:GetOffset()
    function sbar:Paint(w, h)
    end
    function sbar:Think()
        if (self:GetOffset() != self.LastScrollValue) then
            surface.PlaySound(scrollSound)
        end
        self.LastScrollValue = self:GetOffset()
    end
    function sbar.btnUp:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 2, 0, 4, h)
    end
    function sbar.btnDown:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 2, 0, 4, h)
    end
    function sbar.btnGrip:Paint(w, h)
        surface.SetDrawColor(whiteColor.r, whiteColor.g, whiteColor.b, whiteColor.a)
        surface.DrawRect(w * 0.5 - 1, 10, 2, h - 20)
    end

    --grid for categories
    local categoriesGrid = vgui.Create("DGrid", categoriesMenu)
    categoriesGrid:SetPos(0, 0)
    categoriesGrid:SetCols(1)
    categoriesGrid:SetColWide(categoriesMenu:GetWide())
    categoriesGrid:SetRowHeight(80)
    categoriesGrid:Dock(FILL)
    categoriesGrid:DockMargin(20, 0, 0, 0)

    for categoryName, count in SortedPairs(categories) do
        --panel to hold buitton + attachment in use panel
        local categoryPanel = vgui.Create("DPanel")
        categoryPanel:SetSize(categoriesGrid:GetColWide(), categoriesGrid:GetRowHeight())
        function categoryPanel:Paint(w, h)
        --    surface.SetDrawColor(255, 0, 0, 255)
        --    self:DrawFilledRect()
        end

        --button to select category
        local but = vgui.Create("DButton", categoryPanel)
        but:SetText("")
        but:SetSize(200, categoriesGrid:GetRowHeight())
        but:Dock(LEFT)
        but:DockMargin(0, 5, 0, 5)
        but.HoverDelta = 0
        but.ClickDelta = 0
        but.AttachmentDelta = 0
        but.bWasHovered = false
        but.AvailableAttachments = count

        function but:Think()
            if (!validWeapon(weapon)) then
                return
            end

            self.AvailableAttachments = 0

            for slot, atts in pairs(weapon.Customization) do
                for ind, attClass in pairs(atts) do
                    if (ind <= 1) then
                        continue
                    end
        
                    local att = weapon:GetStoredAttachment(attClass)

                    if (att.Category != categoryName || att.ClassName == weapon:GetAttachmentInUseForSlot(slot).ClassName) then
                        continue
                    end

                    self.AvailableAttachments = self.AvailableAttachments + (weapon:IsAttachmentAllowed(att) && 1 || 0)
                end
            end
        end

        function but:Paint(width, height)
            if (self:IsHovered()) then
                self.HoverDelta = math.Approach(self.HoverDelta, 1, math.min(10 * RealFrameTime(), 0.1))

                if (!self.bWasHovered) then
                    surface.PlaySound(hoverSounds[math.random(1, #hoverSounds)])
                end
                self.bWasHovered = true
            else
                self.HoverDelta = math.Approach(self.HoverDelta, 0, math.min(10 * RealFrameTime(), 0.1))
                self.bWasHovered = false
            end

            if (!self.inUsePanel:IsHovered()) then
                self.inUsePanel.HoverDelta = self.HoverDelta
            end

            if (self:IsDown()) then
                self.ClickDelta = math.Approach(self.ClickDelta, 1, math.min(10 * RealFrameTime(), 0.1))
            else
                self.ClickDelta = math.Approach(self.ClickDelta, 0, math.min(10 * RealFrameTime(), 0.1))
            end

            local currentColor = self.AvailableAttachments <= 0 && backgroundErrorColor || blackColor
            
            --background
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a)
            self:DrawFilledRect()

            currentColor = self.AvailableAttachments <= 0 && errorColor || whiteColor

            --click hold 
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * 0.15 * self.ClickDelta)
            self:DrawFilledRect()

            --border hover
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * self.HoverDelta)
            self:DrawOutlinedRect()

            --glow hover
            surface.SetDrawColor(currentColor.r, currentColor.g, currentColor.b, currentColor.a * 0.15 * (self.HoverDelta - self.ClickDelta))
            surface.SetMaterial(buttonGlowMaterial)
            surface.DrawTexturedRect(0, height * 0.75, width, height * 0.25)

            --category
            local text = string.upper(categoryName)
            draw.SimpleText(text, "mgbase_attSlotMenu", width * 0.5, height * 0.5, currentColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

            local hoverColor = Color(currentColor.r, currentColor.g, currentColor.b, currentColor.a * self.HoverDelta)
            draw.SimpleText(text, "mgbase_attSlotMenu:hover", width * 0.5, height * 0.5, hoverColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        --panel to show what attachment we have in use (empty if default)
        local removeAttachmentButton = vgui.Create("DButton", categoryPanel)
        removeAttachmentButton:SetSize(400, categoriesGrid:GetRowHeight())
        removeAttachmentButton:SetText("")
        removeAttachmentButton:Dock(LEFT)
        removeAttachmentButton:DockMargin(10, 0, 0, 0)
        removeAttachmentButton.HoverDelta = 0
        removeAttachmentButton.HoverDelta2 = 0 --alternative so att button doesn't higlight other elements
        removeAttachmentButton.ClickDelta = 0
        removeAttachmentButton.AttachmentDelta = 0
        removeAttachmentButton.RemovedAttachmentIndex = 1 --this is for latency (avoid showing same attachment after clicking)
        removeAttachmentButton.LastAttachmentIndex = 1 --this is for latency (avoid showing same attachment after clicking)

        --link to button so we have consistent hover delta anim
        but.inUsePanel = removeAttachmentButton

        function removeAttachmentButton:TestHover(x, y)
            local x, y = self:ScreenToLocal(x, y) -- Convert to local coordinates
            return x >= 0 && y >= 0 && x <= self:GetWide() * 0.65 && y <= self:GetTall() 
        end

        function removeAttachmentButton:Think()
            if (!validWeapon(weapon)) then
                return
            end

            self:SetEnabled(false)
            self:SetCursor("none")

            for slot, att in pairs(weapon:GetAllAttachmentsInUse()) do
                if (att.Category == categoryName && att.Index > 1 && self.RemovedAttachmentIndex != att.Index) then
                    self:SetEnabled(true)
                    self:SetCursor("hand")
                    break
                end
            end
        end

        function removeAttachmentButton:Paint(width, height)
            if (!validWeapon(weapon)) then
                return
            end

            --attachment in use next to button
            local attachmentInUse = nil

            for slot, att in pairs(weapon:GetAllAttachmentsInUse()) do
                if (att.Category == categoryName && att.Index > 1 && self.RemovedAttachmentIndex != att.Index) then
                    attachmentInUse = att
                    break
                end
            end

            if (attachmentInUse == nil) then
                closeStatsInfo(self)
                return
            end

            if (self:IsHovered()) then
                openStatsInfo(self, attachmentInUse, weapon)
            else
                closeStatsInfo(self)
            end

            if (self.LastAttachmentIndex != attachmentInUse.Index) then
                self.AttachmentDelta = 0
                self.ClickDelta = 0
                self.HoverDelta = 0
                self.HoverDelta2 = 0
                self.LastAttachmentIndex = attachmentInUse.Index
            end

            if (self:IsHovered()) then
                self.HoverDelta = math.Approach(self.HoverDelta, 1, math.min(10 * RealFrameTime(), 0.1))
                self.HoverDelta2 = math.Approach(self.HoverDelta2, 1, math.min(10 * RealFrameTime(), 0.1))

                if (!self.bWasHovered) then
                    surface.PlaySound(hoverAttachmentSounds[math.random(1, #hoverAttachmentSounds)])
                end

                self.bWasHovered = true
            else
                self.HoverDelta = math.Approach(self.HoverDelta, 0, math.min(10 * RealFrameTime(), 0.1))
                self.HoverDelta2 = math.Approach(self.HoverDelta2, 0, math.min(10 * RealFrameTime(), 0.1))
                self.bWasHovered = false
            end

            if (self:IsDown()) then
                self.ClickDelta = math.Approach(self.ClickDelta, 1, math.min(10 * RealFrameTime(), 0.1))
            else
                self.ClickDelta = math.Approach(self.ClickDelta, 0, math.min(10 * RealFrameTime(), 0.1))
            end

            self.AttachmentDelta = math.Approach(self.AttachmentDelta, 1, math.min(10 * RealFrameTime(), 0.1))

            surface.SetAlphaMultiplier(self.AttachmentDelta)

            local rightOffset = (1 - self.AttachmentDelta) * 20
            
            --background stylish black blur
            surface.SetMaterial(buttonGlowMaterial)
            local color = LerpVector(self.ClickDelta, Vector(0, 0, 0), Vector(100, 0, 0))
            local alpha = Lerp(self.ClickDelta, Lerp(self.HoverDelta, 150, 250), 250)
            surface.SetDrawColor(color.x, color.y, color.z, alpha)
            surface.DrawTexturedRectRotated(100 + rightOffset, height * 0.5, 60, self:GetWide(), 270)

            rightOffset = rightOffset + 10

            --att icon
            surface.SetDrawColor(255, 255, 255, Lerp(self.HoverDelta - self.ClickDelta, 100, 255))
            surface.SetMaterial(attachmentInUse.Icon)
            surface.DrawTexturedRect(rightOffset, height * 0.5 - 20, 40, 40)

            surface.SetDrawColor(200, 0, 0, (self.HoverDelta2 * 0.5 + self.ClickDelta) * 255)
            surface.SetMaterial(removeAttachmentMaterial)
            surface.DrawTexturedRect(rightOffset + 6, height * 0.5 - 16, 28, 32)

            rightOffset = rightOffset + 50

            --att name

            local colorForAttachment = attachmentInUse.UIColor || whiteColor
            draw.SimpleText(attachmentInUse.Name, "mgbase_attSlotAttachmentInUse:hover", rightOffset, height * 0.5, Color(colorForAttachment.r, colorForAttachment.g, colorForAttachment.b, colorForAttachment.a * self.HoverDelta), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
            draw.SimpleText(attachmentInUse.Name, "mgbase_attSlotAttachmentInUse", rightOffset, height * 0.5, colorForAttachment, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 2, shadowColor)
            
            surface.SetAlphaMultiplier(1)
        end

        function removeAttachmentButton:DoClick()
            local attachmentInUse = nil

            for slot, att in pairs(weapon:GetAllAttachmentsInUse()) do
                if (att.Category == categoryName && att.Index > 1) then
                    attachmentInUse = att
                    break
                end
            end

            if (attachmentInUse == nil) then
                return
            end

            surface.PlaySound(detachSound)
            surface.PlaySound(selectAttachmentSound)

            self.RemovedAttachmentIndex = attachmentInUse.Index

            net.Start("mgbase_customize_att")
            net.WriteInt(attachmentInUse.Slot, 8)
            net.WriteInt(attachmentInUse.Index, 8)
            net.WriteEntity(weapon)
            net.SendToServer()
        end

        function but:DoClick()
            if (self.AvailableAttachments > 0) then
                surface.PlaySound(selectCategorySound)
                openCategoryList(categoryName, weapon, removeAttachmentButton)
                self.inUsePanel.RemovedAttachmentIndex = 1
                self.inUsePanel.LastAttachmentIndex = 1
            else
                surface.PlaySound(closeAttachmentsSound)
            end
        end

        categoriesGrid:AddItem(categoryPanel)
    end
end

function SWEP:CustomizationMenu()
    if (self:IsCustomizing()) then
        openCustomizationMenu(self)
    end
end

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