AddCSLuaFile()

local function fillMagBeforeMagin(self)
    local am = math.min(self:Clip1() + self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()), self:GetMaxClip1())
    self:UpdateMagPoseParam(self:GetMaxClip1() - am) 
end

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}       
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.raise")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.5,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_03")) end},
            {Time = 1.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_01")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_02")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_04")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_raise_first_05")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_045")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_05")) end},
            {Time = 0.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_03")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_02")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_01")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_06")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_04")) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_05")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_04")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_01")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.433, Callback = function(self) self:EnableGrip() end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_045")) end},
        }
    },

    ["reload_xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 2.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_06")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_04")) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_05")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_02")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmags_045")) end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
        }
    },
        
    ["reload_xmag_fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmags_03")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmags_04")) end},
            {Time = 1.433, Callback = function(self) self:EnableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmags_02")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmags_035")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmags_01")) end},
        }
    },

    ["reload_xmaglrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.7,
        NextSequence = "Idle",
        Events = {
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_04")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_05")) end},
            {Time = 2.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_06")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_xmagslrg_055")) end},
        }
    },

    ["reload_xmaglrg_fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmagslrg_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmagslrg_035")) end},
            {Time = 1.433, Callback = function(self) self:EnableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmagslrg_03")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmagslrg_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_fast_xmagslrg_01")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.65,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_03")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_01")) end},
            {Time = 2.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_07")) end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_06")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_05")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_045")) end},
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
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_01")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_03")) end},
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_02")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_05")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_04")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_035")) end},
        }
    },

    ["reload_empty_xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_03")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_045")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_01")) end},
            {Time = 2.11, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_06")) end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_07")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_04")) end},
            {Time = 1.95, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmags_05")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["reload_empty_xmag_fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_01")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_03")) end},
            {Time = 0.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_04")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_05")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_07")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmags_045")) end},
        }
    },

    ["reload_empty_xmaglrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_01")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_02")) end},
            {Time = 0.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_03")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_04")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_05")) end},
            {Time = 2.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_07")) end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_xmagslrg_045")) end},
        }
    },

    ["reload_empty_xmaglrg_fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_045")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_05")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_03")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_07")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_01")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_reload_empty_fast_xmagslrg_04")) end},
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
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}  
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
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.ads.up")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.ads.down")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} ,
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}  
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.fire.switch.off")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.anovember94.fire.switch.on")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end} 
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_inspect_01")) end},
            {Time = 2.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_inspect_03")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_inspect_02")) end},
            {Time = 4.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_anovember94_inspect_05")) end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}  
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}  
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}  
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
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end}  
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
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(true) end} 
        }
    },
}