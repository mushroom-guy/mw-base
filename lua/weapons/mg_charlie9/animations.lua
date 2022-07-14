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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.4,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.166,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_raise_first_03")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_raise_first_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_raise_first_01")) end},
            {Time = 0.73, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.0, Callback = function(self) self:EnableGrip() end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_01")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_04")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_05")) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.33,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_05")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.033, Callback = function(self) self:EnableGrip() end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_04")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_01")) end},
        
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_Xmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_xmag_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_xmag_03")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_xmag_02")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_xmag_01")) end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_xmag_05")) end},
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_fast_Xmag"},
        Length = 1.5,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_xmag_03")) end},
            {Time = 0.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_xmag_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.167, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_xmag_01")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_xmag_05")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_xmag_04")) end},
        }
    },

    ["Reload_Drum"] = {
        Sequences = {"reload_Drum"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.83,
        NextSequence = "Idle",
        Events = {
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_01")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_02")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_03")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_04")) end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_05")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 2.167, Callback = function(self) self:EnableGrip() end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_drum_045")) end},
        }
    },

    ["Reload_Drum_Fast"] = {
        Sequences = {"reload_fast_Drum"},
        Length = 1.43,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_04")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_05")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_01")) end},
            {Time = 0.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.033, Callback = function(self) self:EnableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_fast_drum_045")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.26,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_06")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_04")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_05")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_02")) end},
            {Time = 0.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.7, Callback = function(self) self:EnableGrip() end},
         }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.56,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_01")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_05")) end},
            {Time = 1.133, Callback = function(self) self:EnableGrip() end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_03")) end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_Xmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.53,
        NextSequence = "Idle",
        Events = {
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_06")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_07")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_04")) end},
            {Time = 1.967, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_05")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_03")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_xmag_01")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_04")) end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_Xmag_fast"},
        Length = 1.66,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_05")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_03")) end},
            {Time = 0.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_02")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_01")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_xmag_04")) end},
        }
    },

    ["Reload_Empty_Drum"] = {
        Sequences = {"reload_empty_Drum"},
        Length = 2.86,
        Fps = 30,
        MagLength = 1.53,
        NextSequence = "Idle",
        Events = {
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_05")) end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_06")) end},
            {Time = 2.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_07")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_01")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_02")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_drum_045")) end},
            {Time = 1.933, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Drum_Fast"] = {
        Sequences = {"reload_empty_Drum_fast"},
        Length = 1.66,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_035")) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_01")) end},
            {Time = 0.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_02")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_03")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_04")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_reload_empty_fast_drum_05")) end},
            {Time = 1.233, Callback = function(self) self:EnableGrip() end},
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
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.ads.down")) end}
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
        Fps = 39,
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.selector.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie9.selector.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 4.366,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_inspect_01")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_inspect_02")) end},
            {Time = 3.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_inspect_04")) end},
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_inspect_05")) end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_charlie9_inspect_03")) end},
        
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
        Sequences = {"melee_miss_01", "melee_miss_02"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Small")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}   
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Small")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },
}