ENT.Base = "mg_arrow"
ENT.Type = "anim"

ENT.FlashRadius = 1200

game.AddParticles("particles/mw19_attachments.pcf")
PrecacheParticleSystem("arrow_flashbang")

sound.Add({
    name = "MW19_Crossbow.Flashbang",
    channel = CHAN_BODY,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {"@viper/shared/smoke_expl_body_01.ogg"}
}) 