AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.4,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.75,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.drop")) end},
            {Time = 0, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.4,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.35, Callback = function(self) self:DoSound(Sound("mw19.akilo47.raise.first")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.45,
        Fps = 35,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_01")) end},
            {Time = 0.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_03")) end},
            {Time = 1.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_04")) end},
            {Time = 1.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_05")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_06")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 2.33, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_fast_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_fast_03")) end},
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AK.Metal"), Vector(-10, 0, 40)) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_fast_035")) end},
            {Time = 1.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_fast_04")) end},
            {Time = 1.06,Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 1.06,Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 1.46, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_drum"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_02")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_035")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_04")) end},
            {Time = 1.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_05")) end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_drum_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_fast_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 0.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_fast_03")) end},
            {Time = 1.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_fast_035")) end},
            {Time = 1.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_fast_04")) end},
            {Time = 1.36, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.75,
        Fps = 30,
        MagLength = 1.55,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_01")) end},
            {Time = 0.033, Callback = function(self) self:DisableGrip() end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_02")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_03")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AK.Metal"), Vector(-15, 10, 40)) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_045")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_05")) end},
            {Time = 2.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_06")) end},
            {Time = 2.55, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.85,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_035")) end},
            {Time = 1.23, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AK.Metal"), Vector(-15, 10, 40)) end},
            {Time = 1.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_04")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_reload_empty_fast_05")) end},
            {Time = 1.7,Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 1.7, Callback = function(self) self:EnableGrip() end},
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_drum"},
        Length = 3.7,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_03")) end},
            {Time = 1.25, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_035")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_04")) end},
            {Time = 2.16, Callback = function(self) self:EnableGrip() end},
            {Time = 2.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_05")) end},
            {Time = 3.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_06")) end},
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_drum_fast"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_02")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_03")) end},
            {Time = 0.9, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.Drum"), Vector(0, 0, 40)) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_05")) end},
            {Time = 1.53, Callback = function(self) self:EnableGrip() end},
            {Time = 1.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_06")) end},
            {Time = 2.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_akilo47_drum_reload_empty_fast_07")) end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.ads.down")) end}
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
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.selector.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.selector.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.akilo47.inspect.01")) end},
            {Time = 0.13, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19.akilo47.inspect.02")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19.akilo47.inspect.03")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19.akilo47.inspect.04")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19.akilo47.inspect.05")) end},
            {Time = 4.4, Callback = function(self) self:EnableGrip() end},
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

    ["Melee_Bayonet"] = {
        Sequences = {"melee_miss_01_bayonet", "melee_miss_02_bayonet", "melee_miss_03_bayonet"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Knife")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
            
        }
    },

    ["Melee_Hit_Bayonet"] = {
        Sequences = {"melee_hit_01_bayonet", "melee_hit_02_bayonet", "melee_hit_03_bayonet"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.World_Knife")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },
}