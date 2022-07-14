ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.Spawnable = false
ENT.AdminOnly = false

game.AddParticles("particles/mw19_attachments.pcf")
PrecacheParticleSystem("arrow_trail")

sound.Add({
    name = "MW19_Crossbow.Hit",
    channel = CHAN_BODY,
    volume = 1, 
    level = 85,
    pitch = {95, 105},
    sound = {"viper/shared/bullet_small_crossbow_bolt_swt_01.ogg", "viper/shared/bullet_small_crossbow_bolt_swt_02.ogg", "viper/shared/bullet_small_crossbow_bolt_swt_03.ogg"}
}) 
 
sound.Add({
    name = "MW19_Crossbow.HitBody",
    channel = CHAN_BODY,
    volume = 1, 
    level = 85,
    pitch = {95, 105},
    sound = {"viper/shared/bullet_flesh_plr_head_01.ogg", "viper/shared/bullet_flesh_plr_head_02.ogg", "viper/shared/bullet_flesh_plr_head_03.ogg"}
}) 

sound.Add({
    name = "MW19_Crossbow.Skewer",
    channel = CHAN_ITEM,
    volume = 1,
    level = 85,
    pitch = {95, 105},
    sound = {"weapons/crossbow/bolt_skewer1.wav"}
}) 

function ENT:SetupDataTables()
    self:NetworkVar("Bool", 0, "Nailed")
end