ENT.Base = "mg_arrow"
ENT.Type = "anim"

ENT.HealAmount = 40

game.AddParticles("particles/mw19_attachments.pcf")
PrecacheParticleSystem("arrow_heal")

sound.Add({
    name = "MW19_Crossbow.Heal",
    channel = CHAN_BODY,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {"@viper/shared/heal.wav"}
}) 