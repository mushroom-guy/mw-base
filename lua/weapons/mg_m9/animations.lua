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
        Length = 0.2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.35,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 0.8,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Raise_First.Up")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("MW19_M9.Raise_First.Hammer")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_M9.Raise_First.End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.06,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("MW19_M9.Maginsert")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End")) end},
            {Time = 1.53, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.06,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_XmagLrg")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_XmagLrg")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_XmagLrg")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_XmagLrg")) end},
            {Time = 1.53, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.06,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Xmag")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Xmag")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Xmag")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Xmag")) end},
            {Time = 1.53, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Fast")) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Fast")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("MW19_M9.Maginsert_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Fast")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_XmagLrg_Fast")) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_XmagLrg_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_XmagLrg_Fast")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_XmagLrg_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Xmag_Fast")) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Xmag_Fast")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("MW19_M9.Maginsert_Xmag_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Xmag_Fast")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Xmag_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 1.8,
        Fps = 30,
        MagLength = 0.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty")) end},
            {Time = 1.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end}
        }
    }, 

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 1.8,
        Fps = 30,
        MagLength = 0.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty_Xmag")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty_Xmag")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty_Xmag")) end},
            {Time = 1.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge_Xmag")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 1.8,
        Fps = 30,
        MagLength = 0.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty_Xmag")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty_XmagLrg")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty_XmagLrg")) end},
            {Time = 1.26, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge_XmagLrg")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty")) end},
            {Time = 1.63, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty_Fast")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge_Fast")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty_Xmag_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty_Xmag_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty_Xmag_Fast")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge_Fast")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty_Xmag_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.1,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_Start_Empty_XmagLrg_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_M9.Magout_Empty_XmagLrg_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_M9.Magin_Empty_XmagLrg_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M9.Charge_Empty_XmagLrg_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_M9.Reload_End_Empty_XmagLrg_Fast")) end},
            {Time = 1, Callback = function(self) self:EnableGrip() end}
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
                self:EnableGrip() 
                end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Lastshot")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.ADS_Up")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.ADS_Down")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 30,
        --NextSequence = "Sprint_Loop",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 26,
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

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M9.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M9.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M9.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M9.Inspect04")) end},
            {Time = 3.9, Callback = function(self) self:EnableGrip() end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Small")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Small")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}
        }
    },
}