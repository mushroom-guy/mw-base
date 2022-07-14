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

local function determineHealRelationship(ent, owner)
    if (ent:IsNPC()) then
        return ent:Disposition(owner) == D_LI
    end

    if (ent:IsPlayer()) then
        return ent:Team() == owner:Team()
    end

    return false
end

function ENT:Impact(tr, phys, bHull)
    BaseClass.Impact(self, tr, phys, bHull)

    if (tr.HitSky) then
        return
    end

    if (!IsValid(tr.Entity)) then
        return
    end

    if (determineHealRelationship(tr.Entity, self:GetOwner())) then
        tr.Entity:SetHealth(math.Clamp(tr.Entity:Health() + self.HealAmount, 0, tr.Entity:GetMaxHealth()))
        tr.Entity:EmitSound("MW19_Crossbow.Heal")
        ParticleEffect("arrow_heal", tr.HitPos, Angle(), nil, 0)
    end
end