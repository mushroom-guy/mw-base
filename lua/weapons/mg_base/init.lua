AddCSLuaFile()

AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

--modules
AddCSLuaFile("modules/shared/sh_think.lua")
AddCSLuaFile("modules/shared/sh_sprint_behaviour.lua")
AddCSLuaFile("modules/shared/sh_datatables.lua")
AddCSLuaFile("modules/shared/sh_aim_behaviour.lua")
AddCSLuaFile("modules/shared/sh_reload_behaviour.lua")
AddCSLuaFile("modules/shared/sh_melee_behaviour.lua")
AddCSLuaFile("modules/shared/sh_firemode_behaviour.lua")
AddCSLuaFile("modules/shared/sh_primaryattack_behaviour.lua")
AddCSLuaFile("modules/shared/sh_holdtypes.lua")
AddCSLuaFile("modules/shared/sh_customization.lua")
AddCSLuaFile("modules/client/cl_anim_think.lua")
AddCSLuaFile("modules/client/cl_calcview.lua")
AddCSLuaFile("modules/client/cl_calcviewmodelview.lua")
AddCSLuaFile("modules/client/cl_viewmodel_render.lua")
AddCSLuaFile("modules/client/cl_worldmodel_render.lua")
AddCSLuaFile("modules/client/cl_viewmodel_blur.lua")
AddCSLuaFile("modules/client/cl_rigs.lua")
AddCSLuaFile("modules/client/cl_hud.lua")
AddCSLuaFile("modules/client/cl_spawnmenu.lua")
AddCSLuaFile("modules/client/cl_customizemenu.lua")
AddCSLuaFile("modules/reverb/mw_reverb.lua")
AddCSLuaFile("modules/reverb/mw_reverbimpl.lua")
AddCSLuaFile("modules/sounds/mw_sounds_channels.lua")
AddCSLuaFile("modules/sounds/mw_sounds_general.lua")
AddCSLuaFile("modules/sounds/mw_sounds_weapons.lua")

include("shared.lua")

util.AddNetworkString("mgbase_anim")
util.AddNetworkString("mgbase_tpanim")
util.AddNetworkString("mgbase_customize")
util.AddNetworkString("mgbase_customize_att")

net.Receive("mgbase_customize", function(len, ply)
    local state = net.ReadBool()
    local weapon = ply:GetActiveWeapon()

    if (!GetConVar("mgbase_sv_customization"):GetBool()) then
        return
    end
    
    if (GetConVar("sv_cheats"):GetInt() > 0 && GetConVar("developer"):GetInt() > 0 && !weapon:GetIsCustomizing()) then
        include("autorun/mw_loader.lua")
        ply:SendLua("include('autorun/mw_loader.lua')")
    end

    if (IsValid(ply:GetActiveWeapon())) then
        if (!weapons.IsBasedOn(weapon:GetClass(), "mg_base")) then return end
        if (!weapon:CanCustomize()) then return end

        weapon:SetIsCustomizing(!weapon:GetIsCustomizing())
        weapon:Customize()
    end
end)

net.Receive("mgbase_customize_att", function(len, ply)
    local slotIndex = net.ReadInt(8)
    local attIndex = net.ReadInt(8)
    local weapon = net.ReadEntity()

    if (!GetConVar("mgbase_sv_customization"):GetBool()) then
        return
    end

    if (IsValid(weapon)) then
        if (weapon:GetOwner() != ply) then
            return
        end

        if (!weapons.IsBasedOn(weapon:GetClass(), "mg_base")) then 
            return 
        end

        if (weapon.Customization[slotIndex] == nil) then 
            return 
        end

        if (weapon:GetAttachmentInUseForSlot(slotIndex).ClassName == weapon.Customization[slotIndex][attIndex]) then
            attIndex = 1
        end

        weapon:CreateAttachmentEntity(weapon.Customization[slotIndex][attIndex])
    end
end)

--[[hook.Add("Think", "sajfoiadsf", function()
    for _, p in pairs(player.GetAll()) do
        if (!p:IsBot()) then
            continue
        end

        if (p.targetPracticePos == nil) then
            p.targetPracticePos = Entity(1):GetPos()
        end

        p:SetPos(p.targetPracticePos)
    end 
end)]]