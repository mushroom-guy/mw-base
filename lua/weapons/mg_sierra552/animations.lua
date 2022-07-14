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
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.56,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.15,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_raise_first_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_raise_first_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_raise_first_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_01")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_01")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_05")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.1, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_01")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_03")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_02")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_05")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.467, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["reload_mmag"] = {
        Sequences = {"reload_mmag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.1, Callback = function(self) self:EnableGrip() end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra559_reload_mmag_05")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra559_reload_mmag_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra559_reload_mmag_01")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra559_reload_mmag_02")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra559_reload_mmag_03")) end},
        }
    },
        
    ["reload_mmag_fast"] = {
        Sequences = {"reload_mmag_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra553_reload_mmag_fast_04")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra553_reload_mmag_fast_02")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra553_reload_mmag_fast_03")) end},
            {Time = 1.467, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra553_reload_mmag_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_03")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_05")) end},
            {Time = 2.1, Callback = function(self) self:EnableGrip() end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_06")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_02")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra555_reload_xmag_04")) end},
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra557_reload_xmag_fast_05")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra557_reload_xmag_fast_04")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra557_reload_xmag_fast_01")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra557_reload_xmag_fast_03")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra557_reload_xmag_fast_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.467, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.75,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.6, Callback = function(self) self:EnableGrip() end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_07")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_06")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_05")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_03")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_02")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_empty_04")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.1,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.833, Callback = function(self) self:EnableGrip() end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_04")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_01")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_02")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_05")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_reload_fast_empty_06")) end},
        }
    },

    ["reload_empty_mmag"] = {
        Sequences = {"reload_empty_mmag"},
        Length = 2.75,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_02")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_03")) end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_04")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_05")) end},
            {Time = 2.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_06")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_07")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra560_reload_mmag_empty_01")) end},
        }
    },
    
    ["reload_empty_mmag_fast"] = {
        Sequences = {"reload_empty_mmag_fast"},
        Length = 2.1,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_05")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_06")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_01")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_03")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_02")) end},
            {Time = 1.75, Callback = function(self) self:EnableGrip() end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra554_reload_mmag_fast_empty_04")) end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.75,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.55, Callback = function(self) self:EnableGrip() end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_04")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_05")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_06")) end},
            {Time = 2.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_07")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_01")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra556_reload_xmag_empty_03")) end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2.1,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_06")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_04")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_05")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_02")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_03")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra558_reload_xmag_fast_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire_last"},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.ads.down")) end}
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
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
        }
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
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.fire.switch.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.sierra552.fire.switch.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
            {Time = 4.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_inspect_05")) end},
            {Time = 3.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_inspect_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_inspect_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_inspect_03")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_sierra552_inspect_02")) end},
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

    ["HybridOn"] = {
        Sequences = {"hybrid_toggle_off"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0.7, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("Flipsight.Down")) end}
        }
    },
}