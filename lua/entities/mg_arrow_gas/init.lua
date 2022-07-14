AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.Model = Model("models/viper/mw/attachments/crossbow/attachment_vm_sn_crossbow_mag_stunbolt.mdl")
ENT.AoeEntity = "mg_aoe_arrow_gas"

local BaseClass = baseclass.Get(ENT.Base)

function ENT:Impact(tr, phys, bHull)
    BaseClass.Impact(self, tr, phys, bHull)
    ParticleEffectAttach("arrow_gas_ejection", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end