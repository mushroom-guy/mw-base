AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.Model = Model("models/viper/mw/attachments/crossbow/attachment_vm_sn_crossbow_mag_expbolt.mdl")
ENT.AoeEntity = nil

local BaseClass = baseclass.Get(ENT.Base)

local customInputs = {
    ["npc_turret_floor"] = function(npc) npc:Fire("SelfDestruct") end,
    ["npc_rollermine"] = function(npc) npc:Fire("PowerDown") end,
    ["npc_cscanner"] = function(npc) npc:SetHealth(0) npc:ClearSchedule() end,--SCHED_SCANNER_ATTACK_DIVEBOMB,
    ["npc_clawscanner"] = function(npc) npc:SetHealth(0) npc:ClearSchedule() end,--SCHED_SCANNER_ATTACK_DIVEBOMB,
    ["npc_manhack"] = function(npc) npc:MoveStop() npc:SetHealth(0) npc:MoveStart() end,
    ["npc_turret_ceiling"] = function(npc) npc:SetHealth(0) npc:TakeDamage(1000, npc, npc) end,
    ["npc_combine_camera"] = function(npc) npc:SetHealth(0) npc:TakeDamage(1000, npc, npc) end,
    ["npc_dog"] = function(npc) npc:TakeDamage(10000, npc, npc) end,
    ["npc_hunter"] = function(npc) npc:Fire("Dodge") end,
    ["combine_mine"] = function(npc) npc:SetSaveValue("m_iMineState", "3") npc:Fire("Disarm") npc:EmitSound("npc/roller/mine/rmine_tossed1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["item_healthcharger"] = function(npc) npc:SetSaveValue("m_iJuice", "0") npc:Use(Entity(1)) npc:EmitSound("items/medshotno1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["item_suitcharger"] = function(npc) npc:SetSaveValue("m_iJuice", "0") npc:Use(Entity(1)) npc:EmitSound("items/suitchargeno1.wav", 75, math.random(95, 105), 1, CHAN_BODY) end,
    ["prop_thumper"] = function(npc) npc:Fire("Disable") end,
    ["grenade_helicopter"] = function(npc) npc:SetSaveValue("m_flLifeTime", "10000000") Entity(1):SimulateGravGunPickup(npc) 
        --npc:SetSaveValue("spawnflags", ""..bit.bor(npc:GetSpawnFlags(), 16)) end --dud, doesn't get read runtime?
    end,
    ["item_battery"] = function(npc) npc:AddFlags(FL_DONTTOUCH) end,
    ["weapon_striderbuster"] = function(npc) npc:Fire("Break") end, --the amount of effort required to make this thing detonate... nah
    ["npc_grenade_frag"] = function(npc) 
        for _, c in pairs(npc:GetChildren()) do
            c:Fire("Disable")
        end
        npc:Fire("SetTimer", "9999") 
        npc:SetSaveValue("m_flNextBlipTime", "9999") end --aware that if you pick it up it's gonna restart
    --wanted to give player satisfaction of disabling it and then using it to fuck em up
}

function ENT:Impact(tr, phys, bHull)
    BaseClass.Impact(self, tr, phys, bHull)

    if (tr.HitSky) then
        return
    end
    
    sound.Play("^viper/shared/emp_expl.ogg", tr.HitPos, 0, 150, 1, CHAN_BODY) --snd scripts dont work lol!

    local angle = tr.HitNormal:Angle()
	angle:RotateAroundAxis(angle:Right(), 270)
    ParticleEffect("Generic_explo_emp", tr.HitPos, angle, nil, 0)
    util.ScreenShake(self:GetPos(), 3500, 1111, 1, self.EMPRadius * 2)
    util.Decal("Scorch", tr.HitPos, tr.HitPos - tr.HitNormal * 10, self)
    
    for _, e in pairs(ents.FindInSphere(tr.HitPos, self.EMPRadius)) do
        if (e:IsPlayer()) then
            e:SetNetworkedFloat("MW19_EMPEffect", CurTime() + 4)
            e:SetArmor(0)
            continue
        end

        if (customInputs[e:GetClass()] != nil) then
            timer.Simple(math.Rand(0, 0.2), function()
                if (!IsValid(e)) then
                    return
                end
                customInputs[e:GetClass()](e)
            end)

            local ef = EffectData()
            ef:SetEntity(e)
            ef:SetMagnitude(30)
            ef:SetScale(20)
            util.Effect("TeslaHitboxes", ef)
        else
            --if someone wants to latch onto this functionality
            if (e.OnModernWarfareEMP != nil) then
                e.OnModernWarfareEMP(self, tr)
            end
        end
    end
end