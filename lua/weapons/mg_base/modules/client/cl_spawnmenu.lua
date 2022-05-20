AddCSLuaFile()

if (SERVER) then
	return
end

hook.Add("AddToolMenuCategories", "Mw_CustomCategory", function()
	spawnmenu.AddToolCategory("Options", "mw_options", "MW Options")
end)

local comboBox = nil

local function addAnimList(panel)
	if (IsValid(LocalPlayer():GetActiveWeapon()) && LocalPlayer():GetActiveWeapon().Animations != nil) then
		if (comboBox != nil) then
			comboBox:Remove()
		end

		comboBox = vgui.Create("DComboBox", panel)

		for animName, a in pairs(LocalPlayer():GetActiveWeapon().Animations) do
			comboBox:AddChoice(animName)
		end
		
		comboBox.OnSelect = function(self, index, value)
			RunConsoleCommand("mgbase_debug_animdelta", "0")
			timer.Simple(0.04, function()
				LocalPlayer():GetActiveWeapon():PlayViewModelAnimation(value)
			end)
		end
		
		panel:AddItem(comboBox)
		RunConsoleCommand("mgbase_debug_animdelta", "0")
	end
end

local function getRig()
	local currentRig = GetConVar("mgbase_rig"):GetString()

	if (MW_RIGS[currentRig] != nil) then
		return currentRig
	end

	return "chands"
end

local function getGloves()
	local currentGloves = GetConVar("mgbase_gloves"):GetString()

	if (MW_GLOVES[currentGloves] != nil) then
		return currentGloves
	end

	return ""
end

local function addGloveSkinControls(panel)
	if (IsValid(panel.gloveSkinBox)) then
		panel.gloveSkinBox:Remove()
	end

	if (IsValid(panel.gloveSkinLabel)) then
		panel.gloveSkinLabel:Remove()
	end

	if (MW_GLOVES[getGloves()] == nil) then
		return
	end

	panel.gloveSkinBox, panel.gloveSkinLabel = panel:ComboBox("Gloves Skin", "mgbase_gloves_skin")

	--populate the combobox
	for i, skin in SortedPairs(MW_GLOVES[getGloves()].Skins) do
		panel.gloveSkinBox:AddChoice(skin, i - 1, GetConVar("mgbase_gloves_skin"):GetInt() == i - 1)
	end
end

local function addGloveControls(panel)
	if (IsValid(panel.gloveModelBox)) then
		panel.gloveModelBox:Remove()
	end

	if (IsValid(panel.gloveModelLabel)) then
		panel.gloveModelLabel:Remove()
	end

	if (IsValid(panel.gloveSkinBox)) then
		panel.gloveSkinBox:Remove()
	end

	if (IsValid(panel.gloveSkinLabel)) then
		panel.gloveSkinLabel:Remove()
	end

	if (getRig() == "chands") then
		return
	end

	--MODEL
	panel.gloveModelBox, panel.gloveModelLabel = panel:ComboBox("Gloves", "mgbase_gloves")

	local oldSelect = panel.gloveModelBox.OnSelect
	panel.gloveModelBox.OnSelect = function(cb, index, value, data)
		oldSelect(cb, index, value, data)
		RunConsoleCommand("mgbase_gloves_skin", "0")

		timer.Simple(0, function()
			addGloveSkinControls(panel)
		end)
	end

	--populate the combobox
	for cls, glove in SortedPairs(MW_GLOVES) do
		panel.gloveModelBox:AddChoice(glove.Name, cls, getGloves() == cls)
	end

	--SKIN
	addGloveSkinControls(panel)
end

local function addRigSkinControls(panel)
	if (IsValid(panel.rigSkinBox)) then
		panel.rigSkinBox:Remove()
	end

	if (IsValid(panel.rigSkinLabel)) then
		panel.rigSkinLabel:Remove()
	end

	if (getRig() == "chands") then
		return
	end

	panel.rigSkinBox, panel.rigSkinLabel = panel:ComboBox("Rig Skin", "mgbase_rig_skin")

	--populate the combobox
	for i, skin in SortedPairs(MW_RIGS[getRig()].Skins) do
		panel.rigSkinBox:AddChoice(skin, i - 1, GetConVar("mgbase_rig_skin"):GetInt() == i - 1)
	end
end

local function addRigControls(panel)
	--RIG MODEL BOX
	if (IsValid(panel.rigModelBox)) then
		panel.rigModelBox:Remove()
	end

	if (IsValid(panel.rigModelLabel)) then
		panel.rigMrigModelLabelodelBox:Remove()
	end

	panel.rigModelBox, panel.rigModelLabel = panel:ComboBox("Rig", "mgbase_rig")
	panel.rigModelBox:AddChoice("C_Hands", "chands", getRig() == "chands")
	
	--populate the combobox
	for cls, rig in SortedPairs(MW_RIGS) do
		panel.rigModelBox:AddChoice(rig.Name, cls, getRig() == cls)
	end

	local oldSelect = panel.rigModelBox.OnSelect
	panel.rigModelBox.OnSelect = function(cb, index, value, data)
		oldSelect(cb, index, value, data)
		RunConsoleCommand("mgbase_rig_skin", "0")

		timer.Simple(0, function()
			addRigSkinControls(panel)
			addGloveControls(panel)
		end)
	end
	----
	
	--RIG SKIN BOX
	addRigSkinControls(panel)

	--GLOVES
	addGloveControls(panel)
end

hook.Add("PopulateToolMenu", "CustomMenuSettings", function()
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_vmodel", "View Model", "", "", function(panel)
		panel:ClearControls()
		
		panel:NumSlider("FOV", "mgbase_fx_vmfov", 0.1, 2, 2)
		panel:ControlHelp("Change view model FOV.")
		
		panel:NumSlider("FOV - ADS", "mgbase_fx_vmfov_ads", 0.1, 2, 2)
		panel:ControlHelp("Change view model FOV when aiming.")

		local divider = vgui.Create("DHorizontalDivider")
		panel:AddItem(divider)

		panel:Help("VIEW MODEL RIGS")
		addRigControls(panel)
	end)
	
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_performance", "Performance", "", "", function(panel)
		panel:ClearControls()
		
		panel:CheckBox("Cheap Particles", "mgbase_fx_cheap_particles")
		panel:ControlHelp("Stops all particles before emitting new ones.")
		
		panel:CheckBox("Barrel Smoke", "mgbase_fx_smoke")
		panel:ControlHelp("Toggle overheat smoke coming from the barrels.")
		
		panel:CheckBox("Cheap Reticles", "mgbase_fx_cheap_reticles")
		panel:ControlHelp("Reticles stop rendering when not aiming.")
		
		panel:CheckBox("View Blur FX", "mgbase_fx_blur")
		panel:ControlHelp("Toggle DOF blur when reloading/customizing.")
		
		--[[panel:CheckBox("View Model Blur FX", "mgbase_fx_vmblur")
		panel:ControlHelp("Toggle DOF blur on the view model.")
		
		panel:CheckBox("View Model Blur FX (Hip)", "mgbase_fx_vmblur_hip")
		panel:ControlHelp("Toggle DOF blur on the view model when firing from the hip.")]]
	end)
	
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_hud", "HUD", "", "", function(panel)
		panel:ClearControls()
		
		panel:Help("Crosshair Color")
		
		local DermaColorCombo = vgui.Create("DColorCombo", panel)
		DermaColorCombo:SetColor(string.ToColor(GetConVar("mgbase_hud_xhaircolor"):GetString()))
		function DermaColorCombo:OnValueChanged(col)
			RunConsoleCommand("mgbase_hud_xhaircolor", string.FromColor(col))
		end
		
		panel:AddItem(DermaColorCombo)
		
		panel:CheckBox("Crosshair", "mgbase_hud_xhair")
		panel:ControlHelp("Toggle crosshair.")
		
		panel:CheckBox("Firemode Helper", "mgbase_hud_firemode")
		panel:ControlHelp("Toggle firemode HUD.")
		
		panel:CheckBox("Flashlight Indicator", "mgbase_hud_flashlight")
		panel:ControlHelp("Toggle flashlight HUD.")
		
		panel:CheckBox("Sights Helper", "mgbase_hud_sights")
		panel:ControlHelp("Toggle sights HUD.")
		
		panel:CheckBox("Custom Lasers", "mgbase_fx_laser_weaponcolor")
		panel:ControlHelp("Toggle sandbox weapon color for lasers.")
		
		panel:NumSlider("Reticle Brightness", "mgbase_fx_reticle_brightness", 1, 6, 0)
		panel:ControlHelp("Change reticle brightness for sights.")
		
		panel:Button("Customize Gun", "mgbase_customize")
	end)
	
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_controls", "Controls", "", "", function(panel)
		panel:ClearControls()
		
		panel:CheckBox("Toggle ADS", "mgbase_toggleaim")
		panel:ControlHelp("Switch between hold and toggle to ADS.")
		
		panel:CheckBox("Auto Reload", "mgbase_autoreload")
		panel:ControlHelp("Toggle auto reload when magazine is empty.")
		
		panel:CheckBox("Manual Rechamber", "mgbase_manualrechamber")
		panel:ControlHelp("Toggle manual rechamber (pumping or reloading a bolt-action). Release fire to rechamber.")
		
		--[[panel:Help("Customize Menu Bind")
		local binder = vgui.Create("DBinder", panel)
		binder:SetValue(input.GetKeyCode(input.LookupBinding("mgbase_customize")))
		
		function binder:OnChange(num)
			RunConsoleCommand("bind mgbase_customize "..input.LookupKeyBinding(num))
		end
		panel:AddItem(binder)
		panel:ControlHelp("Once this is set, the menu won't show up when pressing the context menu key!")]] --doesn't work lol
		
		panel:CheckBox("Attachments Saving", "mgbase_saveatts")
		panel:ControlHelp("Toggle whether or not to keep attachments after death.")
		
		panel:NumSlider("Scope ADS Sensitivity", "mgbase_scopesens", 0.01, 10, 2)
		panel:ControlHelp("Set the aim sensitivity when using scopes.")
	end)
	
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_debug", "Debug", "", "", function(panel)
		panel:ClearControls()

		panel:CheckBox("Free View Model", "mgbase_debug_freeview")
		panel:ControlHelp("Toggle free view model transform.")

		panel:CheckBox("Freeze Viewmodel", "mgbase_debug_freezeanim")
		panel:NumSlider("Animation Delta", "mgbase_debug_animdelta", 0, 1, 4)

		local buttonToReloadAnims = vgui.Create("DButton", panel)
		buttonToReloadAnims:SetText("Reload Animation List")
		buttonToReloadAnims.DoClick = function() 
			addAnimList(panel) 
		end
		panel:AddItem(buttonToReloadAnims)
		
		panel:CheckBox("Ironsights Crosshair", "mgbase_debug_crosshair")
		panel:ControlHelp("Toggle ironsights crosshair.")
		
		panel:CheckBox("Disable Breathing", "mgbase_debug_disablebreathing")
		panel:ControlHelp("Toggle breathing (NOTE: this is still enabled on server).")
		
		panel:CheckBox("Reverb", "mgbase_debug_reverb")
		panel:ControlHelp("Show reverb (requires developer convar).")
		
		panel:CheckBox("Range Helper", "mgbase_debug_range")
		panel:ControlHelp("Show distance of impact (requires developer convar).")
		
		panel:CheckBox("Projectiles", "mgbase_debug_projectiles")
		panel:ControlHelp("Show projectile travel and aim assist (requires developer convar).")
		
		panel:CheckBox("Viewmodel Rendering", "mgbase_debug_vmrender")
		panel:ControlHelp("Toggle viewmodel rendering.")
		
		panel:CheckBox("Worldmodel Rendering", "mgbase_debug_wmrender")
		panel:ControlHelp("Toggle worldmodel rendering.")
	end)
	
	spawnmenu.AddToolMenuOption("Options", "mw_options", "mw_svcontrols", "Server Controls", "", "", function(panel)
		panel:ClearControls()
		
		if (!LocalPlayer():IsAdmin()) then
			panel:ControlHelp("shoo")
			return
		end
		
		panel:ControlHelp("Alternate hitreg has been integrated into the base.")
		
		panel:NumSlider("PvP Damage Multiplier", "mgbase_sv_pvpdamage", 0, 5, 1)
		panel:ControlHelp("Change damage towards players.")
		
		panel:NumSlider("PvE Damage Multiplier", "mgbase_sv_pvedamage", 0, 5, 1)
		panel:ControlHelp("Change damage towards NPCs and Nextbots.")
		
		panel:NumSlider("Recoil Multiplier", "mgbase_sv_recoil", 0, 5, 1)
		panel:ControlHelp("Change recoil intensity.")
		
		panel:NumSlider("Accuracy Multiplier", "mgbase_sv_accuracy", 0.1, 5, 1)
		panel:ControlHelp("Change accuracy intensity.")
		
		panel:CheckBox("Toggle Customization", "mgbase_sv_customization")
		panel:ControlHelp("Allow gun customization.")

		panel:TextEntry("Customization Limit", "mgbase_sv_customization_limit")
		panel:ControlHelp("Limit the amount of attachments a gun can take. Zero means no limits.")
	end)
end)

local function createSpawnIcon(w, propPanel)
	return spawnmenu.CreateContentIcon(w.ScriptedEntityType or "weapon", propPanel, {
		nicename = w.PrintName or w.ClassName,
		spawnname = w.ClassName,
		material = w.IconOverride or "entities/" .. w.ClassName .. ".png",
		admin = w.AdminOnly
	})
end

--sub categories
hook.Add("PopulateWeapons", "AddWeaponContentMW19", function(pnlContent, tree, node)
	local weaponsList = list.Get("Weapon")
	local mgbaseWeapons = {}
	
	--look into every weapon and see if they're from mgbase
	for _, weapon in pairs(weaponsList) do
		if (weapons.IsBasedOn(weapon.ClassName, "mg_base") || weapon.ClassName == "mw_infil_flare") then
			if (mgbaseWeapons[weapon.Category] == nil) then
				mgbaseWeapons[weapon.Category] = {}
			end

			--keep them for later if so
			table.insert(mgbaseWeapons[weapon.Category], weapon)
		end
	end

	--loop through all weapon categories
	for _, categoryNode in pairs(tree:Root():GetChildNodes()) do
		--if the text matches the categories we saved before we replace DoPopulate
		if (mgbaseWeapons[categoryNode:GetText()] != nil) then
			local manifest = {
				["Other"] = {} --default header
			}

			--order them by subcategory
			for _, weapon in pairs(mgbaseWeapons[categoryNode:GetText()]) do
				--get weapon from storeds
				local actualWeapon = weapons.Get(weapon.ClassName)
				
				if (actualWeapon.SubCategory == nil) then
					table.insert(manifest["Other"], weapon)
				else
					if (manifest[actualWeapon.SubCategory] == nil) then
						manifest[actualWeapon.SubCategory] = {}
					end
					table.insert(manifest[actualWeapon.SubCategory], weapon)
				end
			end

			categoryNode.DoPopulate = function(self)
				-- If we've already populated it - forget it.
				if (self.PropPanel) then return end

				-- Create the container panel
				self.PropPanel = vgui.Create("ContentContainer", pnlContent)
				self.PropPanel:SetVisible(false)
				self.PropPanel:SetTriggerSpawnlistChange(false)

				for categoryName, weps in SortedPairs(manifest) do
					if (#weps <= 0) then
						continue
					end

					--create header
					local label = vgui.Create("ContentHeader", container)
					label:SetText(categoryName)

					self.PropPanel:Add(label)

					--this is copy from gmod
					for _, ent in SortedPairsByMemberValue(weps, "PrintName") do
						local icon = createSpawnIcon(ent, self.PropPanel)
						local oldPaint = icon.Paint
						local we = weapons.Get(ent.ClassName)
						local bPossibleBlueprint = we.Base != "mg_base"

						if (bPossibleBlueprint) then
							icon.DoClick = function()
								RunConsoleCommand("gm_giveswep", ent.ClassName)
								surface.PlaySound(we.BlueprintSound || "mw/user_interface/aar/ui_aar_operator_complete_reveal.wav")
							end
						end

						icon.Paint = function(self, aWide, aTall)
							if (bPossibleBlueprint) then
								blueprintIconPaint(self, aWide, aTall)
							end
							oldPaint(self, aWide, aTall)
						end

						local oldMenuExtra = icon.OpenMenuExtra
						icon.OpenMenuExtra = function(icon, menu)
							oldMenuExtra(icon, menu)
							local weaponsBasedOnMe = {}

							--blueprints
							for _, w in pairs(weaponsList) do
								if (weapons.IsBasedOn(w.ClassName, ent.ClassName)) then
									weaponsBasedOnMe[#weaponsBasedOnMe + 1] = w
								end
							end

							if (#weaponsBasedOnMe > 0) then
								menu:AddSpacer()

								local grid = vgui.Create("DGrid")
								grid:SetCols(math.min(#weaponsBasedOnMe, 3))
								grid:SetColWide(icon:GetWide())
								grid:SetRowHeight(icon:GetTall())

								for _, w in pairs(weaponsBasedOnMe) do
									local we = weapons.Get(w.ClassName)
									local subIcon = createSpawnIcon(w, menu)
									local oldPaint = subIcon.Paint
									subIcon.Paint = function(self, aWide, aTall)
										blueprintIconPaint(self, aWide, aTall)
										oldPaint(self, aWide, aTall)
									end

									subIcon.DoClick = function()
										RunConsoleCommand("gm_giveswep", w.ClassName)
										surface.PlaySound(we.BlueprintSound || "mw/user_interface/aar/ui_aar_operator_complete_reveal.wav")
									end

									subIcon.DoRightClick = function() end

									grid:AddItem(subIcon)
								end

								menu:AddPanel(grid)
							end
						end
					end
				end
			end
		end
	end
end)

local specialMat = Material("gui/ps_hover.png")
local glowMat = Material("particles/fire_glow")
function blueprintIconPaint(self, aWide, aTall)
	if (self.nextGlowSpawn == nil || CurTime() > self.nextGlowSpawn) then
		if (self.glows == nil) then
			self.glows = {}
		end

		table.insert(self.glows, {delta = 1, speed = math.random(30, 60), size = math.random(12, 24), x = math.random(6, aWide - 6), y = aWide - 16})
		self.nextGlowSpawn = CurTime() + math.random(0.3, 0.5)
	end

	surface.SetMaterial(glowMat)
	for i, glow in pairs(self.glows) do
		glow.delta = glow.delta - FrameTime()
		glow.y = glow.y - (glow.speed * FrameTime())
		surface.SetDrawColor(255, 255, 255, math.sin(math.pi * glow.delta) * 255)
		surface.DrawTexturedRectRotated(glow.x, glow.y, glow.size, glow.size, CurTime() + glow.size + glow.speed)

		if (glow.delta <= 0) then
			table.remove(self.glows, i)
		end
	end

	--surface.SetDrawColor(255, 255, 255, 255)
	--surface.SetMaterial(specialMat)
	--self:DrawTexturedRect()
end