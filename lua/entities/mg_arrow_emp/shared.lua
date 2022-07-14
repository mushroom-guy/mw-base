ENT.Base = "mg_arrow"
ENT.Type = "anim"

ENT.EMPRadius = 600

game.AddParticles("particles/generic_explosions_pak.pcf")
PrecacheParticleSystem("Generic_explo_emp")

sound.Add({
    name = "MW19_Crossbow.EMP",
    channel = CHAN_BODY,
    volume = 1, 
    level = 150,
    pitch = {95, 105},
    sound = {"^viper/shared/emp_expl.ogg"}
}) 