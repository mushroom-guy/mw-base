ENT.Base = "base_entity"
ENT.Type = "anim"

game.AddParticles("particles/mw19_attachments.pcf")
PrecacheParticleSystem("arrow_beep_flare")

game.AddParticles("particles/generic_explosions_pak.pcf")
PrecacheParticleSystem("Generic_explo_high")
PrecacheParticleSystem("Generic_explo_mid")
PrecacheParticleSystem("Generic_explo_tiny")

function ENT:SetupDataTables()
    self:NetworkVar("Float", 0, "LifeTime")
end

sound.Add({
    name = "MW19_Crossbow.ExploBeep",
    channel = CHAN_ITEM,
    volume = 1,
    level = 85,
    pitch = 100,
    sound = "viper/shared/weap_semtex_beep.ogg"
}) 