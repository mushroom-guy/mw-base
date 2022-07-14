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
        Length = 0.6,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.4,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.drop")) end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.166,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_raise_first_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_raise_first_01")) end},
            {Time = 0.667, Callback = function(self) self:EnableGrip() end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_raise_first_02")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_05")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_04")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_07")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_06")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_03")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_02")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_055")) end},
            {Time = 1.833, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_03")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_05")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.267, Callback = function(self) self:EnableGrip() end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_01")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_04")) end},
        }
    },

    ["Reload_ARmag"] = {
        Sequences = {"reload_armag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_03")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_045")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_04")) end},
            {Time = 1.833, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_01")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_02")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_waffle_05")) end},
        }
    },

    ["Reload_ARmag_Fast"] = {
        Sequences = {"reload_armag_fast"},
        Length = 1.66,
        Fps = 30,
        MagLength = 1.06,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_waffle_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_waffle_03")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_waffle_04")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_waffle_05")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_waffle_01")) end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_05")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_04")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_07")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_06")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_03")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_02")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_055")) end},
            {Time = 1.833, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_03")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_05")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.267, Callback = function(self) self:EnableGrip() end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_01")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_04")) end},
        }
    },

    ["Reload_DrumMag"] = {
        Sequences = {"reload_drummag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_01")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_03")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_02")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_05")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_04")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_06")) end},
            {Time = 1.867, Callback = function(self) self:EnableGrip() end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_drum_055")) end},
        }
    },

    ["Reload_DrumMag_Fast"] = {
        Sequences = {"reload_drummag_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_drum_03")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_drum_05")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_drum_02")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_drum_04")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_fast_drum_01")) end},
            {Time = 1.267, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.4,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_02")) end},
            {Time = 2.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_065")) end},
            {Time = 2.867, Callback = function(self) self:EnableGrip() end},
            {Time = 2.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_08")) end},
            {Time = 1.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_05")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_04")) end},
            {Time = 2.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_07")) end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_06")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_01")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_03")) end},
         }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.10, Callback = function(self) self:DisableGrip() end},
            {Time = 1.6, Callback = function(self) self:EnableGrip() end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_07")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_06")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_05")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_04")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_03")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_01")) end},
        }
    },

    ["Reload_Empty_ARmag"] = {
        Sequences = {"reload_empty_armag"},
        Length = 3.4,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_04")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_05")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_06")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_07")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_02")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_03")) end},
            {Time = 2.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_08")) end},
            {Time = 2.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_09")) end},
            {Time = 2.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_waffle_075")) end},
            {Time = 2.967, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_ARmag_Fast"] = {
        Sequences = {"reload_empty_armag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_02")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_03")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_01")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_06")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_07")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_waffle_05")) end},
            {Time = 1.6, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 3.4,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_02")) end},
            {Time = 2.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_065")) end},
            {Time = 2.867, Callback = function(self) self:EnableGrip() end},
            {Time = 2.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_08")) end},
            {Time = 1.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_05")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_04")) end},
            {Time = 2.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_07")) end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_06")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_01")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_03")) end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.10, Callback = function(self) self:DisableGrip() end},
            {Time = 1.6, Callback = function(self) self:EnableGrip() end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_07")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_06")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_05")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_04")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_03")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_01")) end},
        }
    },

    ["Reload_Empty_DrumMag"] = {
        Sequences = {"reload_empty_drummag"},
        Length = 3.4,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 2.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_09")) end},
            {Time = 2.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_08")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_05")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_04")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_06")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_01")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_02")) end},
            {Time = 2.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_drum_07")) end},
            {Time = 2.967, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_DrumMag_Fast"] = {
        Sequences = {"reload_empty_drummag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_01")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_06")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_05")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_reload_empty_fast_drum_04")) end},
            {Time = 1.667, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.ads.down")) end}
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
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.selector.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.augolf.selector.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 4.366,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_inspect_03")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_inspect_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_inspect_01")) end},
            {Time = 4.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_inspect_05")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 3.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_augolf_inspect_04")) end},
            {Time = 2.533, Callback = function(self) self:EnableGrip() end},
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