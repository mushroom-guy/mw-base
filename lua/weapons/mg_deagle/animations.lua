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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.3,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_First_Up")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_Safety")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_First_End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Fast")) end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Xmag")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Xmag")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Xmag")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag")) end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Xmag")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Xmag")) end},
            {Time = 1.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Xmag")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.7,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Xmag_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Xmag_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Xmag_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Fast")) end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1,
        Fps = 30,
        MagLength = 0.7,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Xmag_Fast")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Xmag_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Xmag_Fast")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Fast")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty")) end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Xmag")) end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty_Xmag")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty_Xmag")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty_Xmag")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge_Xmag")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Xmag")) end}
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
        }
    },

   ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Xmag")) end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty_Xmag")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty_Xmag")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty_Xmag")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge_Xmag")) end},
            {Time = 1.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Xmag")) end}
        }
    },

   ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.25,
        Fps = 30,
        MagLength = 0.6,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magout_Empty_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Charge_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Lastshot")) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.ADS_Up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.ADS_Down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop" --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.35,
        Fps = 24,
        NextSequence = "Idle",
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
            {Time = 2.06, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 3.76, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 24,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end}
        }
    },
}