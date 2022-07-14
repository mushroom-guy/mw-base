AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.4,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Start")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magout")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magin")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.End")) end}
        }
    },

    ["Equip_Drum"] = {
        Sequences = {"draw_first_drum"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Start")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magout")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magin")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.End")) end}
        }
    },

    ["Equip_Drum"] = {
        Sequences = {"draw_first_drum"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Start")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magout")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.Magin")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.First_Raise.End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 1.66,
        Fps = 30,
        MagLength = 1.16,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin")) end},
            {Time = 1.36, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End")) end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 2.06,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Xmaglrg")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Xmaglrg")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Maginsert_Xmaglrg")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Xmaglrg")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Xmaglrg")) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 1.66,
        Fps = 30,
        MagLength = 1.16,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin")) end},
            {Time = 1.36, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End")) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.2,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Fast")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Fast")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Fast")) end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 1.26,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Fast_XmagLrg")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Fast_XmagLrg")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Maginsert_Fast_XmagLrg")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Fast_XmagLrg")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Fast_XmagLrg")) end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.2,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Fast")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Fast")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Fast")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.26,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Empty")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Maginsert_Empty")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Empty")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.26,
        Fps = 30,
        MagLength = 1.13,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Empty")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Maginsert_Empty")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Empty")) end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge")) end},
            {Time = 1.86, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 2.53,
        Fps = 30,
        MagLength = 1.63,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Empty_XmagLrg")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Empty_XmagLrg")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Maginsert_Empty_XmagLrg")) end},
            {Time = 1.53, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Empty_XmagLrg")) end},
            {Time = 1.73, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge_XmagLrg")) end},
            {Time = 2.33, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Empty_XmagLrg")) end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.36,
        Fps = 30,
        MagLength = 0.93,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Empty_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Empty_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Empty_Fast")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge_Fast")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Empty_Fast")) end}
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.36,
        Fps = 30,
        MagLength = 0.93,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_Empty_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_Empty_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_Empty_Fast")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge_Fast")) end},
            {Time = 1.43, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_Empty_Fast")) end}
        }
    },

    ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.26,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_Start_XmagLrg_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magout_XmagLrg_Fast")) end},
            {Time = 1.06, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Magin_XmagLrg_Fast")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Charge_XmagLrg_Fast")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Reload_End_XmagLrg_Fast")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Lastshot")) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.ADS_Up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.ADS_Down")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect01")) end},
            {Time = 1.16, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect02")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect03")) end},
            {Time = 3.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect04")) end}
        }
    },

    ["Inspect_Xmag"] = {
        Sequences = {"inspect_xmag"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect01")) end},
            {Time = 1.16, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect02")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect03")) end},
            {Time = 3.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect04")) end}
        }
    },

    ["Inspect_Drum"] = {
        Sequences = {"inspect_drum"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect01_Drum")) end},
            {Time = 1.16, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect02_Drum")) end},
            {Time = 1.63, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect03_Drum")) end},
            {Time = 3.1, Callback = function(self) self:DoSound(Sound("MW19_Makarov.Inspect04_Drum")) end}
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