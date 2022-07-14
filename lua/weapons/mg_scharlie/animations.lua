AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_raise")) end},
            {Time = 0.25, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.75,
        Fps = 30,
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_down")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_raise_first_01")) end},
            {Time = 0.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_raise_first_02")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_raise_first_03")) end},
            {Time = 1.04, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.367,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_04")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.8, Callback = function(self) end},
        }
    },

   ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_035")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_04")) end},
            {Time = 1.33, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_DMR"] = {
        Sequences = {"Reload_DMR"},
        Length = 2.367,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_04")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.8, Callback = function(self) end},
        }
    },

   ["Reload_DMR_Fast"] = {
        Sequences = {"reload_fast_dmr"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_035")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_04")) end},
            {Time = 1.33, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmags"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_04")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.8, Callback = function(self) end},
        }
    },

   ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmags_fast"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_035")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_04")) end},
            {Time = 1.33, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmagslrg"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_04")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.8, Callback = function(self) end},
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmagslrg_fast"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_035")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_fast_04")) end},
            {Time = 1.33, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_01")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.1, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(-10, 0, 40)) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_03")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_035")) end},
            {Time = 2.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_04")) end},
            {Time = 2.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_05")) end},
            {Time = 2.43, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_035")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_04")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_05")) end},
            {Time = 1.66, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_DMR"] = {
        Sequences = {"Reload_Empty_DMR"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_01")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.1, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(-10, 0, 40)) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_03")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_035")) end},
            {Time = 2.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_04")) end},
            {Time = 2.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_05")) end},
            {Time = 2.43, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_DMR_Fast"] = {
        Sequences = {"reload_empty_fast_dmr"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast02")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_035")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_04")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_reload_empty_fast_05")) end},
            {Time = 1.66, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.fire.last")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_ads_up")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_ads_down")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop" --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.semi.off")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.semi.on")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_inspect_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_inspect_02")) end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_inspect_03")) end},
            {Time = 2.53, Callback = function(self) self:EnableGrip() end},
            {Time = 4.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_scharlie_inspect_04")) end},
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["HybridOn"] = {
        Sequences = {"hybrid_toggle_on"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.15, Callback = function(self) self:DoSound(Sound("Flipsight.Up")) end}
        }
    },

    ["HybridOff"] = {
        Sequences = {"hybrid_toggle_off"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.767, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("Flipsight.Down")) end}
        }
    },

    ["Melee"] = {
        Sequences = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },
}