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
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.raise")) end},
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.5,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.15,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.6, Callback = function(self) self:EnableGrip() end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_raise_first_03")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_raise_first_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_raise_first_01")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_06")) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 2.267, Callback = function(self) self:EnableGrip() end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_04")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_02")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_01")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_05")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_07")) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_01")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_04")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_05")) end},
            {Time = 1.5, Callback = function(self) self:EnableGrip() end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_03")) end},
        }
    },

    ["reload_smag"] = {
        Sequences = {"reload_smag"},
        Length = 2.1,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_06")) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 1.933, Callback = function(self) self:EnableGrip() end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_02")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_05")) end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_01")) end},
        }
    },
        
    ["reload_smag_fast"] = {
        Sequences = {"reload_smag_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_04")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_05")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_01")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_02")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["reload_xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 2.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_07")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_06")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_05")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_04")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_03")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_01")) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["reload_xmag_fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.85,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.733, Callback = function(self) self:EnableGrip() end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_03")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_05")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_04")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.55,
        NextSequence = "Idle",
        Events = {
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_08")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_06")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_07")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_04")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_05")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_03")) end},
            {Time = 2.433, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_empty_01")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.1,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_02")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_01")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_04")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_05")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.933, Callback = function(self) self:EnableGrip() end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_fast_empty_06")) end},
        }
    },

    ["reload_empty_smag"] = {
        Sequences = {"reload_empty_smag"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_08")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_02")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_03")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_05")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_06")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_empty_07")) end},
        }
    },
    
    ["reload_empty_smag_fast"] = {
        Sequences = {"reload_empty_smag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_01")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_02")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_03")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_04")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_05")) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_smag_fast_empty_06")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.867, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["reload_empty_xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.55,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 2.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_07")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_05")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_04")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_03")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_01")) end},
            {Time = 2.433, Callback = function(self) self:EnableGrip() end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_empty_06")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["reload_empty_xmag_fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_05")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_04")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_06")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_01")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_03")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_reload_xmag_fast_empty_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.ads.up")) end},
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.ads.down")) end},
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
        {Time = 0, Callback = function(self) self:EnableGrip() end} 
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.fire.switch.off")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.valpha.fire.switch.on")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.167, Callback = function(self) end},
            {Time = 0.167, Callback = function(self) self:DisableGrip() end},
            {Time = 4.767, Callback = function(self) self:EnableGrip() end},
            {Time = 3.033, Callback = function(self) self:DisableGrip() end},
            {Time = 4.967, Callback = function(self) self:EnableGrip() end},
            {Time = 4.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_08")) end},
            {Time = 3.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_06")) end},
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_07")) end},
            {Time = 2.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_04")) end},
            {Time = 2.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_05")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_03")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_01")) end},
        }
    },

    ["inspect_smag"] = {
        Sequences = {"inspect_smag"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.167, Callback = function(self) self:DisableGrip() end},
            {Time = 4.467, Callback = function(self) self:EnableGrip() end},
            {Time = 2.8, Callback = function(self) self:DisableGrip() end},
            {Time = 4.667, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_01")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_02")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_03")) end},
            {Time = 2.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_04")) end},
            {Time = 2.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_05")) end},
            {Time = 2.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_06")) end},
            {Time = 3.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_07")) end},
            {Time = 4.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_smag_08")) end},
        }
    },

    ["inspect_xmag"] = {
        Sequences = {"inspect_xmag"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 5.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_09")) end},
            {Time = 4.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_08")) end},
            {Time = 3.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_07")) end},
            {Time = 2.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_06")) end},
            {Time = 0.167, Callback = function(self) self:DisableGrip() end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_04")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_03")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_02")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_01")) end},
            {Time = 3.033, Callback = function(self) self:DisableGrip() end},
            {Time = 2.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_valpha_inspect_xmag_05")) end},
            {Time = 4.967, Callback = function(self) self:EnableGrip() end},
            {Time = 4.767, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
        }
    },
}