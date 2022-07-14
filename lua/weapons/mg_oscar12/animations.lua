AddCSLuaFile()

-- local function fillMagBeforeMagin(self)
--     local am = math.min(self:Clip1() + self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()), self:GetMaxClip1())
--     self:UpdateMagPoseParam(self:GetMaxClip1() - am) 
-- end

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.raise")) end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.6,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end},  
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_01")) end},
            {Time = 0.74    , Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Equip_Drum"] = {
        Sequences = {"draw_First_drum"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end},  
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_01")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_raise_first_04")) end},    
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_01")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_05")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_04")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_03")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_045")) end},
            {Time = 2, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.575, Callback = function(self) self:EnableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_02")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_01")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_04")) end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_01")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_05")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_04")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_03")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_045")) end},
            {Time = 1.97, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.575, Callback = function(self) self:EnableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_02")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_01")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_04")) end},
        }
    },

    ["reload_drum"] = {
        Sequences = {"reload_drum"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_drum_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_drum_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_drum_03")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_drum_04")) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_drum_05")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.967, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["reload_drum_fast"] = {
        Sequences = {"reload_drum_fast"},
        Length = 1.9,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.6, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_drum_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_drum_02")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_drum_04")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_drum_03")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_fast_drum_05")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_045")) end},
            {Time = 1.95, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_02")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_01")) end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_06")) end},
            {Time = 2.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_07")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_04")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_05")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DisableGrip() end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_01")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_06")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_04")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_05")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_045")) end},
            {Time = 1.65, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["reload_empty_drum"] = {
        Sequences = {"reload_empty_drum"},
        Length = 3,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 2.033, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_01")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_03")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_04")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_05")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_06")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_07")) end},
            {Time = 2.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_drum_08")) end},
        }
    },

    ["reload_drum_empty_fast"] = {
        Sequences = {"reload_empty_drum_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_01")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_03")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_04")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_05")) end},
            {Time = 1.633, Callback = function(self) self:EnableGrip() end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_drum_06")) end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 3,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_045")) end},
            {Time = 1.95, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_02")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_01")) end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_06")) end},
            {Time = 2.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_07")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_04")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_05")) end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DisableGrip() end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_01")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_06")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_04")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_05")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_reload_empty_fast_045")) end},
            {Time = 1.65, Callback = function(self) self:EnableGrip() end},
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
                    self:DoEjection("shell_eject")
                    self:DoParticle("MuzzleFlash", "muzzle")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
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
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.ads.up")) end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.ads.down")) end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
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
        -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_inspect_02")) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_inspect_01")) end},
            {Time = 3.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_inspect_04")) end},
            {Time = 2.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_inspect_03")) end},
            {Time = 4.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_oscar12_inspect_05")) end},
            {Time = 4.43, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
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
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
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
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Melee_Queer"] = {
        Sequences = {"melee_miss_03", "melee_miss_03", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },

    ["Melee_Hit_Queer"] = {
        Sequences = {"melee_hit_03", "melee_hit_03", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            -- {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}      
        }
    },
}