AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.45,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.25,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MW19_P320.Raise_Open")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("MW19_P320.Raise_Clse")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_P320.Raise_First_End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End")) end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End")) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 1.5,
        Fps = 30,
        MagLength = 1.03,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End")) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.53,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Xmag_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Xmag_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Xmag_Fast")) end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.53,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Xmag_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Xmag_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Xmag_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Xmag_Fast")) end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.53,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Xmag_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Xmag_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Xmag_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Xmag_Fast")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert_Empty")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty_Xmag")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty_Xmag")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert_Empty_Xmag")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty_Xmag")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty_Xmag")) end}
        }
    },

    ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 2,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty_Xmag")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty_Xmag")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("MW19_P320.Maginsert_Empty_Xmag")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty_Xmag")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty_Xmag")) end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty_Fast")) end}
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty_Xmag_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty_Xmag_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge_Xmag_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty_Xmag_Fast")) end}
        }
    },

    ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_Start_Empty_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_P320.Magout_Empty_Xmag_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_P320.Magin_Empty_Xmag_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_P320.Charge_Xmag_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_P320.Reload_End_Empty_Xmag_Fast")) end}
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
            }
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Lastshot")) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.ADS_Up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.ADS_Down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 30
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 26,
        NextSequence = "Sprint_Loop" --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_P320.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_P320.Inspect03")) end},
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_off"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Selectfire")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_on"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_P320.Selectfire")) end}
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle"
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle"
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle"
    },

    ["Melee"] = {
        Sequences = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Small")) end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Small")) end}
        }
    },
}