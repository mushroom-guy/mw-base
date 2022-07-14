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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.45,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.166,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_raise_first_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_raise_first_03")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_raise_first_02")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_raise_first_05")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_raise_first_04")) end},
            {Time = 0.867, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.73,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_03")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_03")) end},
            {Time = 2.267, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_01")) end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_04")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_02")) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.73,
        Fps = 30,
        MagLength = 1.16,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.0, Callback = function(self)  end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_04")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_05")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_02")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.367, Callback = function(self) self:EnableGrip() end},
        
        }
    },

    ["Reload_Smag"] = {
        Sequences = {"reload_smag"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.57,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_05")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_03")) end},
            {Time = 2.1, Callback = function(self) self:EnableGrip() end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_01")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_04")) end},
        }
    },

    ["Reload_Smag_Fast"] = {
        Sequences = {"reload_fast_smag"},
        Length = 1.55,
        Fps = 30,
        MagLength = 1.06,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self)  end},
            {Time = 0.0, Callback = function(self)  end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_smag_04")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_smag_02")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_smag_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_smag_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmaglrg"] = {
        Sequences = {"reload_Xmaglrg"},
        Length = 2.66,
        Fps = 30,
        MagLength = 1.73,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 2.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_xmaglrg_05")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_xmaglrg_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_xmaglrg_03")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_xmaglrg_02")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_xmaglrg_04")) end},
            {Time = 2.333, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmaglrg_Fast"] = {
        Sequences = {"reload_fast_Xmaglrg"},
        Length = 1.76,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_05")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_06")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_03")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_fast_xmaglrg_01")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.83,
        Fps = 30,
        MagLength = 1.83,
        NextSequence = "Idle",
        Events = {
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.433, Callback = function(self) self:EnableGrip() end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_04")) end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_05")) end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_06")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_01")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_03")) end},
            {Time = 1.8, Callback = function(self) end },
         }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.86,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 1.8, Callback = function(self) end },
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.567, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_02")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_04")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_05")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_06")) end},
        }
    },

    ["Reload_Empty_Smag"] = {
        Sequences = {"reload_empty_smag"},
        Length = 2.67,
        Fps = 30,
        MagLength = 1.65,
        NextSequence = "Idle",
        Events = {
            {Time = 1.8, Callback = function(self) end },
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_06")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_04")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_05")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_02")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_smag_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.267, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Smag_Fast"] = {
        Sequences = {"reload_empty_smag_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end },
            {Time = 0.0, Callback = function(self) end },
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_smag_05")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_smag_03")) end},
            {Time = 1.533, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_smag_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_smag_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_smag_04")) end},
        }
    },

    ["Reload_Empty_Xmaglrg"] = {
        Sequences = {"reload_empty_Xmaglrg"},
        Length = 2.8,
        Fps = 30,
        MagLength = 1.83,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_smag_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_01")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_03")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_02")) end},
            {Time = 2.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_05")) end},
            {Time = 1.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_04")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_xmaglrg_06")) end},
            {Time = 2.433, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Xmaglrg_Fast"] = {
        Sequences = {"reload_empty_Xmaglrg_fast"},
        Length = 1.9,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end },
            {Time = 0.0, Callback = function(self) end },
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_xmaglrg_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_xmaglrg_05")) end},
            {Time = 1.567, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_xmaglrg_01")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_xmaglrg_03")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_reload_empty_fast_xmaglrg_04")) end},
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
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.ads.down")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.selector.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.smgolf45.selector.on")) end}
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
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_inspect_01")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_inspect_02")) end},
            {Time = 3.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_inspect_04")) end},
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_inspect_05")) end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_smgolf45_inspect_03")) end},
        
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