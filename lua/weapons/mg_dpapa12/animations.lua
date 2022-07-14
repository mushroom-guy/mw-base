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
        Length = 0.65,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.raise")) end},
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.6,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.25,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_raise_first_01")) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_empty_end_02")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_raise_first_02")) end},
        }
    },

    ["Reload_Start"] = {
        Sequences = {"reload_start"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.8,
        MagLength2 = 1.2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_01")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_02")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_03")) end},
        
        }
    },

    ["Reload_Start_Onebullet"] = {
        Sequences = {"reload_start_onebullet"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_01")) end},
            {Time = 0.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_02")) end},
            --{Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_start_03")) end},
        
        }
    },

    ["Reload_Loop"] = {
        Sequences = {"reload_loop"},
        Length = 0.83,
        Fps = 30,
        MagLength = 0.4,
        MagLength2 = 0.83,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_loop_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_loop_01")) end},
        
        }
    },

    ["Reload_End"] = {
        Sequences = {"reload_end"},
        Length = 0.63,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_end_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_end_02")) end}        
        }
    },

    ["Reload_End_Empty"] = {
        Sequences = {"reload_end_empty"},
        Length = 0.86,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_empty_end_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_reload_empty_end_02")) end}        
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
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Rechamber"] = {
        Sequences = {"rechamber"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.1, 
                Callback = function(self) 
                    self:DoEjection("shell_eject")
                    self:DoParticle("Ejection", "shell_eject")
                end
            },
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_rechamber_02")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_sh_dpapa12_rechamber_025")) end},
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
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.ads.up")) end},
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.ads.down")) end},
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

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 3.36, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_inspect_04")) end},
            {Time = 4.23, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_inspect_05")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_inspect_02")) end},
            {Time = 2.43, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_inspect_03")) end},
            {Time = 0.167, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_dpapa12_inspect_01")) end},
            {Time = 4.433, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
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
        }
    },
}