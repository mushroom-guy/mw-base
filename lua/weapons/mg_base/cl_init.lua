AddCSLuaFile()

include("shared.lua")

MWBASE_STENCIL_REFVALUE = 69

CreateClientConVar("mgbase_rig", "chands", true, true, "Change first person arms rig.")
CreateClientConVar("mgbase_rig_skin", "0", true, true, "Change first person arms rig skin.", 0)
CreateClientConVar("mgbase_gloves", "", true, true, "Change first person arms gloves.")
CreateClientConVar("mgbase_gloves_skin", "0", true, true, "Change first person arms gloves.", 0)
CreateClientConVar("mgbase_toggleaim", "0", true, true, "Hold to aim.", 0, 1)
CreateClientConVar("mgbase_autoreload", "1", true, true, "Toggle auto reload.", 0, 1)
CreateClientConVar("mgbase_aimassist", "1", true, true, "Toggle aim assist.", 0, 1)
CreateClientConVar("mgbase_saveatts", "1", true, true, "Toggle attachments saving.", 0, 1)
CreateClientConVar("mgbase_manualrechamber", "0", true, true, "Toggle manual rechambering.", 0, 1)
CreateClientConVar("mgbase_fx_vmblur_hip", "1", true, true, "Toggle viewmodel blur when firing from the hip.", 0, 1)
CreateClientConVar("mgbase_fx_vmblur", "1", true, true, "Toggle viewmodel blur when aiming.", 0, 1)
CreateClientConVar("mgbase_fx_blur", "1", true, true, "Toggle first person blur.", 0, 1)
CreateClientConVar("mgbase_fx_cheap_particles", "0", true, true, "Toggle cheap particles.", 0, 1)
CreateClientConVar("mgbase_fx_smoke", "1", true, true, "Toggle barrel smoke.", 0, 1)
CreateClientConVar("mgbase_fx_cheap_reticles", "0", true, true, "Toggle cheap reticles.", 0, 1)
CreateClientConVar("mgbase_fx_laser_weaponcolor", "0", true, true, "Toggle sandbox weapon color usage for lasers.", 0, 1)
CreateClientConVar("mgbase_fx_vmfov", "1", true, true, "Change viewmodel FOV.", 0.1, 2)
CreateClientConVar("mgbase_fx_vmfov_ads", "1", true, true, "Change viewmodel FOV (only when aiming).", 0.1, 2)
CreateClientConVar("mgbase_fx_reticle_brightness", "1", true, true, "Change reticle brightness.", 1, 6)
CreateClientConVar("mgbase_hud_xhaircolor", "255 255 255", true, true, "Crosshair color.", 0, 1)
CreateClientConVar("mgbase_hud_xhair", "1", true, true, "Toggle crosshair.", 0, 1)
CreateClientConVar("mgbase_hud_firemode", "1", true, true, "Toggle firemode HUD.", 0, 1)
CreateClientConVar("mgbase_hud_sights", "1", true, true, "Toggle sights HUD.", 0, 1)
CreateClientConVar("mgbase_hud_flashlight", "1", true, true, "Toggle flashlight HUD.", 0, 1) 
CreateClientConVar("mgbase_debug_freeview", "0", false, true, "Toggle debug free view.", 0, 1)
CreateClientConVar("mgbase_debug_crosshair", "0", false, true, "Toggle debug crosshair for ironsights.", 0, 1)
CreateClientConVar("mgbase_debug_disablebreathing", "0", false, true, "Toggle breathing.", 0, 1)
CreateClientConVar("mgbase_debug_vmrender", "1", false, true, "Toggle viewmodel render.", 0, 1)
CreateClientConVar("mgbase_debug_wmrender", "1", false, true, "Toggle worldmodel render.", 0, 1)
CreateClientConVar("mgbase_debug_freezeanim", "0", false, true, "Freeze viewmodel animations.", 0, 1)
CreateClientConVar("mgbase_debug_animdelta", "0", false, true, "Scrub the current animation on the viewmodel.", 0, 1)

concommand.Add("mgbase_generatepreset", function(p, c, args)
    local w = p:GetActiveWeapon()

    if (IsValid(w) && weapons.IsBasedOn(w:GetClass(), "mg_base")) then
        local attachmentList = ""

        for _, a in pairs(w:GetAllAttachmentsInUse()) do
            if (a.Index > 1) then
                attachmentList = attachmentList..", \""..a.ClassName.."\""
            end
        end

        attachmentList = string.sub(attachmentList, 3)

        local finalPrint = "PRESET.SWEP = \""..w:GetClass().."\"\n"
        finalPrint = finalPrint.."PRESET.Name = \""..args[1].."\"\n"
        finalPrint = finalPrint.."PRESET.Attachments = {"..attachmentList.."}"

        print("Here's your preset (copied to clipboard already)")
        print("Remember to put this in lua/weapons/mg_base/modules/presets")
        print("From there, create a .lua file with any name you want and paste the contents in there")
        print("=================")
        print(finalPrint)
        SetClipboardText(finalPrint)
    end
end)

net.Receive("mgbase_anim", function()
    local seqIndex = net.ReadString()
    local weapon = net.ReadEntity()
    
    if (weapon == NULL) then
        return
    end
    
    if (!weapon.PlayViewModelAnimation) then
        return
    end
    
    if (weapon:IsCarriedByLocalPlayer()) then
        if (game.SinglePlayer()) then
            weapon:PlayViewModelAnimation(seqIndex)
        end
    else
        weapon:PlayViewModelAnimation(seqIndex)
    end
end)

net.Receive("mgbase_tpanim", function()
    local slot = net.ReadUInt(2)
    local anim = net.ReadInt(12)
    local ply = net.ReadEntity()
    
    if (ply == NULL) then
        return
    end
    
    ply:AnimRestartGesture(slot, anim, true)
end)