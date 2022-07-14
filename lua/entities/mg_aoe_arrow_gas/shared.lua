ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.GasRadius = 164
ENT.LifeTime = 8

game.AddParticles("particles/mw19_attachments.pcf")
PrecacheParticleSystem("arrow_gas_dust")
PrecacheParticleSystem("arrow_gas_explode")

sound.Add({
    name = "MW19_Crossbow.GasOn",
    channel = CHAN_BODY,
    volume = 0.25, 
    level = 75,
    pitch = {95, 105},
    sound = {"viper/shared/smoke_grenade_smoke_loop.ogg"}
}) 

sound.Add({
    name = "MW19_Crossbow.GasOff",
    channel = CHAN_BODY, 
    volume = 0.25, 
    level = 75,
    pitch = {95, 105},
    sound = {"viper/shared/smoke_grenade_smoke_loop_end.ogg"}
}) 

sound.Add({
    name = "MW19_Crossbow.GasExplode",
    channel = CHAN_ITEM,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {"viper/shared/smoke_expl_body_01.ogg"}
}) 