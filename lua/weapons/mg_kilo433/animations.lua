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
        Length = 0.55,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.75,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("mw19_kilo433.raise.first.start")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("mw19_kilo433.raise.first.open")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("mw19_kilo433.raise.first.close")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("mw19_kilo433.raise.first.end")) end},
            {Time = 0.95, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DisableGrip() end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_03")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_04")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_05")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_055")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_06")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_07")) end},
            {Time = 2.25, Callback = function(self) self:EnableGrip() end}
        }
    },

   ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.45,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_01")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_02")) end},
            {Time = 0.65, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_03")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_04")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_05")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_fast_06")) end},
            {Time = 1.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_drum"},
        Length = 2.8,
        Fps = 30,
        MagLength = 1.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_02")) end},
            {Time = 1.05, Callback = function(self) self:DisableGrip() end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_03")) end},
            {Time = 1.15, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 1.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_04")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_045")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_05")) end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
            {Time = 2.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_06")) end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_drum_fast"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.55,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_01")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_02")) end},
            {Time = 0.89, Callback = function(self) self:DisableGrip() end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_03")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_04")) end},
            {Time = 1.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_05")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.8, Callback = function(self) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_01")) end},
            {Time = 0.2, Callback = function(self) self:DisableGrip() end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_02")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_03")) end},
            {Time = 0.9, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_04")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_045")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_05")) end},
            {Time = 1.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_06")) end},
            {Time = 2.36, Callback = function(self) self:EnableGrip() end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_07")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_02")) end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_03")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_04")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_045")) end},
            {Time = 1.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_05")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_06")) end},
            {Time = 1.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_empty_fast_07")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end},
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_drum"},
        Length = 3.3,
        Fps = 30,
        MagLength = 1.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_01")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_02")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_03")) end},
            {Time = 1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.25, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 1.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_04")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_045")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_05")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_045")) end},
            {Time = 2.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_06")) end},
            {Time = 2.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_empty_07")) end},
            {Time = 2.95, Callback = function(self) self:EnableGrip() end},
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_drum_fast"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.55,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_01")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_02")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_03")) end},
            {Time = 0.89, Callback = function(self) self:DisableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_04")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_05")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_055")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_06")) end},
            {Time = 2.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_kilo433_reload_drum_fast_empty_07")) end},
            {Time = 2.06, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.ads.down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.semi.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.semi.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.1")) end},
            {Time = 0.13, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.2")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.3")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.4")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.5")) end},
            {Time = 4.35, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Inspect_Drum"] = {
        Sequences = {"inspect_drum"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.1")) end},
            {Time = 0.13, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.2")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.3")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.4")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19_kilo433.inspect.5")) end},
            {Time = 4.4, Callback = function(self) self:EnableGrip() end}
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
        Sequences = {"hybrid_toggle_off"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.15, Callback = function(self) self:DoSound(Sound("Flipsight.Up")) end}
        }
    },

    ["HybridOff"] = {
        Sequences = {"hybrid_toggle_on"},
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