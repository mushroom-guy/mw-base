AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.Model = Model("models/viper/mw/attachments/crossbow/attachment_vm_sn_crossbow_mag_firebolt.mdl")
ENT.AoeEntity = nil

local BaseClass = baseclass.Get(ENT.Base)

local function isCowerSupportedForNPC(npc)
    for _, a in pairs(npc:GetSequenceList()) do
        if (npc:GetSequenceActivity(npc:LookupSequence(a)) == ACT_COWER) then
            return true
        end
    end

    return false
end

--[[local supportedNpcs = {
    ["npc_antlion"] = "Flip1",
    ["npc_antlionguard"] = "Stunned01",
    ["npc_antlionguardian"] = "Stunned01",
    ["npc_hunter"] = "Shakeoff",
    ["npc_antlion_worker"] = "Flip1"
}]] --couldn't make these work

local lethalToNpcs = {"npc_barnacle", "npc_crow", "npc_pigeon", "npc_seagull"}

function ENT:Impact(tr, phys, bHull)
    BaseClass.Impact(self, tr, phys, bHull)

    if (tr.HitSky) then
        return
    end

    self:EmitSound("MW19_Crossbow.Flashbang")

    local radius = self.FlashRadius
    local owner = self:GetOwner()
    ParticleEffect("arrow_flashbang", tr.HitPos, Angle(), nil, 0)
    util.Decal("Scorch", tr.HitPos, tr.HitPos - tr.HitNormal * 10, self)

    timer.Simple(0.3, function() --ohshit moment
        for _, e in pairs(ents.FindInSphere(tr.HitPos, radius)) do
            if ((e:IsPlayer() || e:IsNPC()) && !e:IsLineOfSightClear(tr.HitPos + tr.HitNormal * 10)) then
                continue
            end
            
            if (e:IsPlayer()) then
                local dist = e:GetPos():DistToSqr(tr.HitPos)
                local distDelta = 1 - math.Clamp(dist / (radius * radius), 0, 1)
                local strength = Lerp(distDelta, 0, 2)

                e:SendLua("LocalPlayer():EmitSound('MW19_Crossbow.Flashbang')")
                local dot = e:EyeAngles():Forward():Dot((e:GetPos() - tr.HitPos):GetNormalized())
                strength = strength * math.max(-dot, 0.1)

                e:ScreenFade(SCREENFADE.IN, color_white, strength, strength * 0.5)
                e:SetDSP(35)

                continue
            end

            if (e:IsNPC()) then
                e:StartEngineTask(89, 0) --task_sound_pain

                if (isCowerSupportedForNPC(e)) then
                    e:SetSchedule(SCHED_COWER)
                else
                    if (table.HasValue(lethalToNpcs, e:GetClass())) then
                        e:TakeDamage(e:Health(), self:GetOwner(), self || nil)
                    end
                end

                continue
            end
        end
    end)

    sound.EmitHint(SOUND_DANGER, self:GetPos(), self.FlashRadius, 6, nil) --needed for task (make them blinded for a little longer)
end