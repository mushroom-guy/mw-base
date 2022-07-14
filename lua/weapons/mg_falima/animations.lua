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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.falima.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.75,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.falima.drop")) end},
            {Time = 0, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.56,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("mw19.falima.equip.1")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("mw19.falima.equip.2")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("mw19.falima.equip.3")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("mw19.falima.equip.4")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("mw19.falima.equip.5")) end},
            {Time = 1.2, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_05")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_055")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_06")) end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
            {Time = 2.4, Callback = function(self) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_mmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_05")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_055")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_06")) end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
            {Time = 2.4, Callback = function(self) end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmag"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_03")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_05")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_055")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_06")) end},
            {Time = 2.4, Callback = function(self) self:EnableGrip() end},
            {Time = 2.4, Callback = function(self) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_02")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_03")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_045")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_05")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_mmag_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_02")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_03")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_045")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_05")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_01")) end},
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_02")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_03")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_04")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_045")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_fast_05")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.45,
        Fps = 30,
        MagLength = 2.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_01")) end},
            {Time = 0.5, Callback = function(self) self:DisableGrip() end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(-20, 10, 40)) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_05")) end},
            {Time = 1.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_06")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_07")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_08")) end},
            {Time = 2.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_09")) end},
            {Time = 2.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_10")) end},
            {Time = 2.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_11")) end},
            {Time = 3.23, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 3.45,
        Fps = 30,
        MagLength = 2.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_01")) end},
            {Time = 0.5, Callback = function(self) self:DisableGrip() end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_02")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(-20, 10, 40)) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_05")) end},
            {Time = 1.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_06")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_07")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_08")) end},
            {Time = 2.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_09")) end},
            {Time = 2.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_10")) end},
            {Time = 2.96, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_11")) end},
            {Time = 3.23, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0,  Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_01")) end},
            {Time = 0.47, Callback = function(self) self:DisableGrip() end},
            {Time = 0.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_03")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_04")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_05")) end},
            {Time = 1.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(-15, 10, 40)) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_06")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_07")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_08")) end},
            {Time = 2.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_09")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_10")) end},
            {Time = 2.46, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0,  Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_01")) end},
            {Time = 0.47, Callback = function(self) self:DisableGrip() end},
            {Time = 0.43, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_03")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_04")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_05")) end},
            {Time = 1.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(-15, 10, 40)) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_06")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_07")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_08")) end},
            {Time = 2.16, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_09")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_falima_reload_empty_fast_10")) end},
            {Time = 2.46, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.falima.fire.last")) end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.falima.inspect.01")) end},
            {Time = 0.13, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19.falima.inspect.02")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19.falima.inspect.03")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19.falima.inspect.04")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19.falima.inspect.05")) end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end}
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