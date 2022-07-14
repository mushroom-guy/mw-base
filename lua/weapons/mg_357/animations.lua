AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.4,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Raise_First.Up")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("MW19_357.Raise_First.Open")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("MW19_357.Raise_First.Close")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MW19_357.Raise_First.End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 3,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_Start")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("MW19_357.Open")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("MW19_357.Ejectorrod")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_357.Shelleject")) end},
            {Time = 1.96, Callback = function(self) self:DoSound(Sound("MW19_357.Speedloader")) end},
            {Time = 2.56, Callback = function(self) self:DoSound(Sound("MW19_357.Close")) end},
            {Time = 2.7, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_End")) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_Start_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_357.Open_Fast")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("MW19_357.Ejectorrod_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_357.Shelleject_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_357.Speedloader_Fast")) end},
            {Time = 1.45, Callback = function(self) self:DoSound(Sound("MW19_357.Close_Fast")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_End_Fast")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload"},
        Length = 3,
        Fps = 30,
        MagLength = 2.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_Start")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("MW19_357.Open")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("MW19_357.Ejectorrod")) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_357.Shelleject")) end},
            {Time = 1.96, Callback = function(self) self:DoSound(Sound("MW19_357.Speedloader")) end},
            {Time = 2.56, Callback = function(self) self:DoSound(Sound("MW19_357.Close")) end},
            {Time = 2.7, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_End")) end}
        }
    },


    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_Start_Fast")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MW19_357.Open_Fast")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("MW19_357.Ejectorrod_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_357.Shelleject_Fast")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_357.Speedloader_Fast")) end},
            {Time = 1.45, Callback = function(self) self:DoSound(Sound("MW19_357.Close_Fast")) end},
            {Time = 1.66, Callback = function(self) self:DoSound(Sound("MW19_357.Reload_End_Fast")) end}
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
                end
            }
        }
    },

    ["Charge"] = {
        Sequences = {"charge"},
        Fps = 60,
        NextSequence = "Idle"
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_357.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_357.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_357.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_357.Inspect04")) end}
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
        Sequences = {"melee_miss_01", "melee_miss_02"},
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
        Sequences = {"melee_hit_01", "melee_hit_02"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Small")) end}
        }
    },
}