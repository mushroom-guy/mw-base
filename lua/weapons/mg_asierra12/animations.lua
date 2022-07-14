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
        Length = 0.7,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.75,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.6,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("mw19.asierra12.raise.first.1")) end},
            {Time = 0.65, Callback = function(self) self:DoSound(Sound("mw19.asierra12.raise.first.2")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("mw19.asierra12.raise.first.3")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.95,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DisableGrip() end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_01")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_02")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_03")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_04")) end},
            {Time = 1.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_045")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_05")) end},
            {Time = 2.34, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_01")) end},
            {Time = 0.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_02")) end},
            {Time = 0.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_04")) end},
            {Time = 1.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_045")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_fast_05")) end},
            {Time = 1.37, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.4,
        Fps = 30,
        MagLength = 1.95,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AK.Metal"), Vector(20, 10, 40)) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_05")) end},
            {Time = 1.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_055")) end},
            {Time = 2.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_06")) end},
            {Time = 2.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_07")) end},
            {Time = 2.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_08")) end},
            {Time = 3.15, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.16,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_03")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_04")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AK.Metal"), Vector(15, 10, 40)) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_045")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_05")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_06")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_asierra12_reload_empty_fast_07")) end},
            {Time = 1.7, Callback = function(self) end},
            {Time = 2.15, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.ads.down")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.selector.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.selector.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.asierra12.inspect.01")) end},
            {Time = 0.06, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19.asierra12.inspect.02")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19.asierra12.inspect.03")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19.asierra12.inspect.04")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19.asierra12.inspect.05")) end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
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
}