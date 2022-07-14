AddCSLuaFile()

--- Ammokit ---
sound.Add({
    name =           "MW19_AMMOKIT.Raise",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/ammobox/iw8_support_box_bring_up_01.ogg",
             "viper/weapons/ammobox/iw8_support_box_bring_up_03.ogg"}              
})

sound.Add({
    name =           "MW19_AMMOKIT.Throw",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/ammobox/iw8_support_box_deploy_01.ogg",
             "viper/weapons/ammobox/iw8_support_box_deploy_02.ogg",
             "viper/weapons/ammobox/iw8_support_box_deploy_03.ogg",}          
})

sound.Add({
    name =           "MW19_AMMOKIT.Land",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/ammobox/iw8_support_box_land_default_01.ogg",
             "viper/weapons/ammobox/iw8_support_box_land_default_02.ogg",
             "viper/weapons/ammobox/iw8_support_box_land_default_03.ogg"}              
})

sound.Add({
    name =           "MW19_Equipment.Break",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/ammobox/mp_equip_destroy_close_01.ogg",
             "viper/weapons/ammobox/mp_equip_destroy_close_02.ogg",
             "viper/weapons/ammobox/mp_equip_destroy_close_03.ogg",
             "viper/weapons/ammobox/mp_equip_destroy_close_04.ogg"}              
})


sound.Add({
    name =           "MW19_AMMOKIT.Use",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/ammobox/iw8_support_box_use_01.ogg"}              
})


--- RPG ---


sound.Add({
    name =           "MW19_RPG7.Fire",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/weap_rpapa7_fire_plr_01.ogg",
             "viper/weapons/rpg/weap_rpapa7_fire_plr_02.ogg",              
             "viper/weapons/rpg/weap_rpapa7_fire_plr_03.ogg",              
             "viper/weapons/rpg/weap_rpapa7_fire_plr_04.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.ADS_Up",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_ads_up.ogg"}          
})

sound.Add({
    name =           "MW19_RPG7.ADS_Down",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_ads_down.ogg"}          
})

sound.Add({
    name =           "MW19_RPG7.Raise",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_raise.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Drop",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_drop.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Raise_First",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_reload_raise.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Reload_Start",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_reload_raise.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Reload_Load",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_reload_load.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Reload_Lower",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_reload_lower.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Reload_End",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_reload_end.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Inspect01",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_inspect_01.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Inspect02",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_inspect_02.ogg"}              
})

sound.Add({
    name =           "MW19_RPG7.Inspect03",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/rpg/wfoly_la_rpapa7_inspect_03.ogg"}              
})

--- Makarov ---


sound.Add({
    name =           "MW19_Makarov.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    pitch = {80,110},
    sound = {"viper/weapons/makarov/weap_mike_fire_plr.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    pitch = {90,110},
    sound = {"viper/weapons/makarov/weap_mike_sup_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Raise",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_raise.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Drop",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_drop.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.First_Raise.Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_first_raise_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.First_Raise.Magout",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_first_raise_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.First_Raise.Magin",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_first_raise_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.First_Raise.End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_first_raise_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_mvmnt.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Fast_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_drum_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Fast_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_drum_drumout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Maginsert_Fast_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_drum_drumhit.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Fast_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_drum_drumin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_Fast_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Xmaglrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_drum_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Xmaglrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_drum_drumout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Maginsert_Xmaglrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_drum_drumhit.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Xmaglrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_drum_drumin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_Xmaglrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_drum_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Maginsert_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Charge",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_charge.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_drumout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Maginsert_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_drumhit.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_drumin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Charge_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_charge.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_empty_drum_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_Start_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_charge.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_end.ogg"}              
})

sound.Add({
    name =           "MW19_Makarov.Reload_Start_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_drum_up.ogg"}              
})

sound.Add({
    name =           "MW19_Makarov.Magout_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_drum_drumout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Magin_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_drum_drumin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Charge_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_drum_charge.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Reload_End_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_reload_fast_empty_drum_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.Inspect01",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_up.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect02",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_magin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect03",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_rotate.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_end.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect01_Drum",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_Drum_magout.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect02_Drum",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_drum_drumin.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect03_Drum",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_drum_rotate.ogg"}              
})
sound.Add({
    name =           "MW19_Makarov.Inspect04_Drum",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/wfoly_pi_mike_inspect_drum_end.ogg"}              
})



sound.Add({
    name =           "MW19_Makarov.LastShot",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/makarov/weap_mike_fire_plr_mech_last_01.ogg",              
             "viper/weapons/makarov/weap_mike_fire_plr_mech_last_02.ogg",              
             "viper/weapons/makarov/weap_mike_fire_plr_mech_last_03.ogg"}              
})

--- Deagle ---


sound.Add({
    name =           "MW19_DEAGLE.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    sound = {"viper/weapons/deagle/weap_decho_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Fire.First",
    channel =        CHAN_TRIGGER,
    level = 140,
    volume =      1,
    sound = {"viper/weapons/deagle/weap_decho_fire_first_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    sound = {"viper/weapons/deagle/weap_decho_sup_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.ADS_Up",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_ads_up.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.ADS_Down",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_ads_down.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Raise",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_raise_mvmnt.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Drop",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_drop_mvmnt.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Raise_First_Up",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_first_raise_mvmnt.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Raise_Safety",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_first_raise_safetyoff.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Raise_First_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_first_raise_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magout_01.ogg"}              
})

sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Charge",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_slide_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_slide_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_xmag_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_xmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_xmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_xmag_end .ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_raise.ogg"}              
})

sound.Add({
    name =           "MW19_DEAGLE.Magout_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_shake.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Charge_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_charge_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_reload_empty_xmag_end.ogg"}              
})



sound.Add({
    name =           "MW19_DEAGLE.Reload_Start_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_raise.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magout_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Maginsert_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Magin_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Reload_End_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_fast_reload_exmag_end.ogg"}              
})

sound.Add({
    name =           "MW19_DEAGLE.Inspect01",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Inspect02",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Inspect03",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_pi_decho_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_ar_mcharlie_inspect_04.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.Inspect05",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/wfoly_ar_mcharlie_inspect_05.ogg"}              
})
sound.Add({
    name =           "MW19_DEAGLE.LastShot",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/deagle/weap_decho_fire_last_plr_mech_01.ogg",              
             "viper/weapons/deagle/weap_decho_fire_last_plr_mech_02.ogg",              
            "viper/weapons/deagle/weap_decho_fire_last_plr_mech_03.ogg"}              
})



--- 357 ---


sound.Add({
    name =           "MW19_357.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/357/weap_cpapa_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Charge",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_in_trigger_pull.ogg"}              
})
sound.Add({
    name =           "MW19_357.Raise",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_raise.ogg"}              
})
sound.Add({
    name =           "MW19_357.Drop",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_drop.ogg"}              
})


sound.Add({
    name =           "MW19_357.Raise_First.Up",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_first_raise_start.ogg"}              
})
sound.Add({
    name =           "MW19_357.Raise_First.Open",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_first_raise_cylinderopen_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Raise_First.Close",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_first_raise_cylinderclose_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Raise_First.End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_first_raise_end.ogg"}              
})



sound.Add({
    name =           "MW19_357.Reload_Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_start.ogg"}              
})
sound.Add({
    name =           "MW19_357.Open",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_cylinderopen_01_new.ogg"}              
})
sound.Add({
    name =           "MW19_357.Ejectorrod",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Shelleject",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_shelleject_01.ogg",
             "viper/weapons/357/wfoly_pi_cpapa_charge_reload_shelleject_02.ogg",
             "viper/weapons/357/wfoly_pi_cpapa_charge_reload_shelleject_03.ogg"}              
})
sound.Add({
    name =           "MW19_357.Speedloader",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_speedloader_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Close",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_cylinderclose_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Reload_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_357.Inspect01",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Inspect02",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_357.Inspect03",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_357.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_inspect_04.ogg"}              
})



sound.Add({
    name =           "MW19_357.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_start.ogg"}              
})
sound.Add({
    name =           "MW19_357.Open_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_cyclinderopen_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Ejectorrod_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Shelleject_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg",
             "viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg",
             "viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_shelleject_03.ogg"}              
})
sound.Add({
    name =           "MW19_357.Speedloader_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Close_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg"}              
})
sound.Add({
    name =           "MW19_357.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/357/wfoly_pi_cpapa_charge_reload_fast_end.ogg"}              
})



--- M9 ---


sound.Add({
    name =           "MW19_M9.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m9/weap_mike9a3_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Fire.First",
    channel =        CHAN_TRIGGER,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m9/weap_mike9a3_hammer_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Fire.Disconnector",
    channel =        CHAN_TRIGGER +1,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m9/weap_mike9a3_disconnector_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m9/weap_mike9a3_sup_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Raise",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Drop",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_drop.ogg"}              
})


sound.Add({
    name =           "MW19_M9.Raise_First.Up",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_raise_first_up.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Raise_First.Hammer",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_raise_first_hammer.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Raise_First.End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_raise_first_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_magrelease.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Maginsert",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Maginsert_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Charge",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_charge.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_charge.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmags_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmags_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmags_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmags_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmagslrg_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmagslrg_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Maginsert_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmagslrg_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmagslrg_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_xmagslrg_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmags_raise.ogg"}              
})

sound.Add({
    name =           "MW19_M9.Magout_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmags_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Maginsert_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmags_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmags_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmags_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmagslrg_raise.ogg"}              
})

sound.Add({
    name =           "MW19_M9.Magout_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmagslrg_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Maginsert_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmagslrg_maghit.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmagslrg_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_fast_xmagslrg_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmags_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmags_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmags_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Charge_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmags_charge.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Magout_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmagslrg_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmagslrg_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Charge_XmagLrg",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_xmagslrg_charge.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmags_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmags_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmags_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmags_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Reload_Start_Empty_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmagslrg_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magout_Empty_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmagslrg_magout.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Magin_Empty_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmagslrg_magin.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Charge_Empty_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmagslrg_sliderelease.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Reload_End_Empty_XmagLrg_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_reload_empty_fast_xmagslrg_end.ogg"}              
})



sound.Add({
    name =           "MW19_M9.Inspect01",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Inspect02",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Inspect03",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_inspect_04.ogg"}              
})
sound.Add({
    name =           "MW19_M9.Inspect05",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/wfoly_pi_mike9_inspect_05.ogg"}              
})
sound.Add({
    name =           "MW19_M9.LastShot",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/M9/weap_mike9a3_fire_last_plr_mech_01.ogg",              
             "viper/weapons/M9/weap_mike9a3_fire_last_plr_mech_02.ogg",              
             "viper/weapons/M9/weap_mike9a3_fire_last_plr_mech_03.ogg"}              
})



------ P320 -------



sound.Add({
    name =           "MW19_P320.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    pitch = { 90, 110 },
    sound = {"viper/weapons/p320/weap_papa320_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    sound = {"viper/weapons/P320/weap_decho_sup_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.ADS_Up",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/weap_pi_papa320_ads_up.ogg"}              
})
sound.Add({
    name =           "MW19_P320.ADS_Down",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/weap_pi_papa320_ads_down.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Raise",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_raise_up.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Drop",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_drop_down.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Raise_First",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_raise_first_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Raise_Open",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_raise_first_open_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Raise_Clse",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_raise_first_close_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Raise_First_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_raise_first_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Maginsert",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_magout_01.ogg"}              
})

sound.Add({
    name =           "MW19_P320.Maginsert_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Charge",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_charge_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_charge_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_xmag_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Maginsert_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_xmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_xmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_xmag_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_xmag_start.ogg"}              
})

sound.Add({
    name =           "MW19_P320.Magout_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_xmag_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_fast_xmag_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_xmag_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Maginsert_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_xmag_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_xmag_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Empty_Xmag",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_xmag_end.ogg"}              
})



sound.Add({
    name =           "MW19_P320.Reload_Start_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_xmag_start.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magout_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_xmag_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Magin_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_xmag_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Charge_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_xmag_charge_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Reload_End_Empty_Xmag_Fast",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_plr_pi_papa320_reload_empty_fast_xmag_end.ogg"}              
})

sound.Add({
    name =           "MW19_P320.Inspect01",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_pi_papa320_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Inspect02",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_pi_papa320_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Inspect03",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_pi_papa320_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_pi_papa320_inspect_04.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Inspect04",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_ar_mcharlie_inspect_04.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Inspect05",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/wfoly_ar_mcharlie_inspect_05.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Fire.First",
    channel =        CHAN_TRIGGER,
    volume =      1,
    sound = {"viper/weapons/P320/weap_papa320_fire_first_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.Fire.Disconnector",
    channel =        CHAN_TRIGGER,
    volume =      1,
    sound = {"viper/weapons/P320/weap_papa320_disconnector_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_P320.LastShot",
    channel =        CHAN_AUTO,
    volume =      1,
    sound = {"viper/weapons/P320/weap_papa320_fire_last_plr_mech_01.ogg",              
             "viper/weapons/P320/weap_papa320_fire_last_plr_mech_02.ogg",              
             "viper/weapons/P320/weap_papa320_fire_last_plr_mech_03.ogg",              
             "viper/weapons/P320/weap_papa320_fire_last_plr_mech_04.ogg"}              
})

----------- Pistols ------------

--- Glock ---
sound.Add({
    name =           "MW19_GLOCK.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    pitch  = {90, 110},
    sound = {"viper/weapons/glock/weap_golf21_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Fire.First",
    channel =        CHAN_TRIGGER,
    level = 140,
    volume =      1,
    pitch  = {90, 110},
    sound = {"viper/weapons/glock/weap_golf21_fire_first_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Fire.Disconnector",
    channel =        CHAN_TRIGGER,
    level = 140,
    volume =      1,
    pitch  = {90, 110},
    sound = {"viper/weapons/glock/weap_golf21_disconnector_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    volume =      1,
    pitch  = {90, 110},
    sound = {"viper/weapons/glock/weap_golf21_supp_plr_01.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Raise",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_raise.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Drop",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_drop.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Raise_First_Up",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_first_raise_open_slide.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Raise_First_Slide",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_first_raise_slide_release.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.ADS_Up",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_ads_up.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.ADS_Down",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_ads_down.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Inspect01",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Inspect02",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Inspect03",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Inspect04",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_inspect_04.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Magout",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_fast_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Maginsert",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Magin",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Reload_End",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_fast_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Maginsert_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_fast_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_fast_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_raise.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Maginsert_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Charge",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_chamber.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Reload_Down_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_down.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_fast_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Maginsert_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_fast_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_fast_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_fast_chamber_01.ogg"}              
})
sound.Add({
    name =           "MW19_GLOCK.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/wfoly_pi_golf21_reload_empty_fast_end.ogg"}              
})



sound.Add({
    name =           "MW19_GLOCK.Lastshot",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/glock/weap_golf21_fire_last_plr_mech_01.ogg",
             "viper/weapons/glock/weap_golf21_fire_last_plr_mech_02.ogg",
             "viper/weapons/glock/weap_golf21_fire_last_plr_mech_03.ogg"}              
})
            
sound.Add({
    name =           "MW19_ASVAL.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch  = {90, 110},
    volume =      1,
    sound = {"viper/weapons/asval/weap_valpha_fire_plr_01.ogg",
             "viper/weapons/asval/weap_valpha_fire_plr_02.ogg",
             "viper/weapons/asval/weap_valpha_fire_plr_03.ogg",
             "viper/weapons/asval/weap_valpha_fire_plr_04.ogg",
             "viper/weapons/asval/weap_valpha_fire_plr_05.ogg"}              
})

--- M1911 ---
sound.Add({
    name =           "MW19_M1911.Fire",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch  = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m1911/weap_mike1911_fire_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Fire.First",
    channel =        CHAN_TRIGGER,
    level = 140,
    pitch  = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m1911/weap_mike1911_fire_first_plr_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Fire.Disconnector",
    channel =        CHAN_TRIGGER +1,
    level = 140,
    pitch  = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m1911/weap_mike1911_disconnector_plr_01.ogg"}              
})

sound.Add({
    name =           "MW19_M1911.Fire_S",
    channel =        CHAN_WEAPON,
    level = 140,
    pitch  = {90, 110},
    volume =      1,
    sound = {"viper/weapons/m1911/weap_mike1911_sup_plr_01.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Raise",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_raise.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Drop",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_drop.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Raise_First_Up",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_first_raise_lift.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Raise_First_SlidePull",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_first_raise_slide_pull.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Raise_First_SlideRelease",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_first_raise_slide_release.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.ADS_Up",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_ads_up.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.ADS_Down",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_ads_down.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Inspect01",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_inspect_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Inspect02",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_inspect_02.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Inspect03",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_inspect_03.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Inspect04",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_inspect_04.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Reload_Start",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_lift.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magout",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Maginsert",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magin",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Reload_End",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Reload_Start_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_lift.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magout_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magin_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Reload_End_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_end.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Reload_Start_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_lift.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magout_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Maginsert_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_magin_v2_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magin_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_magin_v2_02.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Charge",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_chamber_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Reload_End_Empty",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Reload_Start_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_empty_lift.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magout_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_empty_magout_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Magin_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_empty_magin_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Charge_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_empty_chamber_01.ogg"}              
})
sound.Add({
    name =           "MW19_M1911.Reload_End_Empty_Fast",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/wfoly_pi_mike1911_fast_reload_empty_end.ogg"}              
})



sound.Add({
    name =           "MW19_M1911.Lastshot",
    channel =        CHAN_AUTO,
    volume =         1,
    sound = {"viper/weapons/m1911/weap_mike1911_fire_last_plr_mech_01.ogg",
             "viper/weapons/m1911/weap_mike1911_fire_last_plr_mech_02.ogg",
             "viper/weapons/m1911/weap_mike1911_fire_last_plr_mech_03.ogg"}              
})