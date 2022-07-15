AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        {Time = 0, Callback = function(self) self:EnableGrip2() end},
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
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.romeo870.raise")) end},
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.95,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.romeo870.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.25,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_raise_first_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_raise_first_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_raise_first_01")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_05")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_04")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_06")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_01")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_03")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo871_caldb_reload_02")) end},
            {Time = 2.27, Callback = function(self) self:EnableGrip() end}, 
            -- {Time = 1.2, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},       
        }
    },

    ["reload_fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.75,
        Fps = 30,
        MagLength = 1.25,
        NextSequence = "Idle",
        Events = {
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo874_caldb_reload_fast_04")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo874_caldb_reload_fast_05")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo874_caldb_reload_fast_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo874_caldb_reload_fast_02")) end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo874_caldb_reload_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.5, Callback = function(self) self:EnableGrip() end},        
            {Time = 0, Callback = function(self) end},        
            -- {Time = 0.6, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},       
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.2,
        Fps = 30,
        MagLength = 2.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self)
                if (self.bCanEjectOnReload) then
                    self:DoEjection("shell_eject")
                    self:DoParticle("Ejection", "shell_eject")
                end
                self.bCanEjectOnReload = false
            end},
            {Time = 0.4, Callback = function(self) self:DisableGrip() end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 3.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_08")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_02")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_01")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_06")) end},
            {Time = 2.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_07")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_04")) end},
            {Time = 1.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo872_caldb_reload_empty_05")) end},   
            -- {Time = 1.2, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},     
        }
    },

    ["reload_empty_fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.35,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) 
                if (self.bCanEjectOnReload) then
                    self:DoEjection("shell_eject")
                    self:DoParticle("Ejection", "shell_eject")
                end
                self.bCanEjectOnReload = false
            end},
            {Time = 0.233, Callback = function(self) self:DisableGrip() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_02")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_05")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_04")) end},
            {Time = 2.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_06")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_01")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo873_caldb_reload_empty_fast_03")) end},   
            -- {Time = 0.8, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},          
        }
    },

    ["Reload_Start"] = {
        Sequences = {"reload_start"},
        Length = 0.8,
        Fps = 30,
        MagLength = 0.76,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_start_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_start_02")) end},
        }
    },

    ["reload_start_fast"] = {
        Sequences = {"reload_start_fast"},
        Length = 0.8,
        Fps = 30,
        MagLength = 0.7,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.1, Callback = function(self) self:DisableGrip2() end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_start_fast_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_start_fast_01")) end},        
        }
    },

    ["Reload_Loop"] = {
        Sequences = {"reload_loop"},
        Length = 0.7,
        Fps = 30,
        MagLength = 0.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_loop_03")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_loop_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_loop_01")) end},
        
        }
    },

    ["reload_loop_fast"] = {
        Sequences = {"reload_loop_fast"},
        Length = 0.5,
        Fps = 30,
        MagLength = 0.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_loop_fast_01")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_loop_fast_02")) end},
        }
    },

    ["Reload_End"] = {
        Sequences = {"reload_end"},
        Length = 0.63,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.167, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_end_01")) end},   
        }
    },

    ["reload_end_fast"] = {
        Sequences = {"reload_end_fast"},
        Length = 0.63,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_end_fast_01")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_end_fast_02")) end},
            --{Time = 0.167, Callback = function(self) self:EnableGrip() end},
            {Time = 0.23, Callback = function(self) self:EnableGrip() end},      
            {Time = 0.2, Callback = function(self) self:EnableGrip2() end},      
        }
    },

    ["Reload_End_Empty"] = {
        Sequences = {"reload_end_empty"},
        Length = 0.86,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.4, 
                Callback = function(self) 
                    self:DoEjection("shell_eject")
                    self:DoParticle("Ejection", "shell_eject")
                end
            },
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_01")) end},
            {Time = 0.167, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_end_01")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_015")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_raise_first_03")) end},    
            {Time = 0, Callback = function(self) self:EnableGrip2() end}, 
        }
    },

    ["reload_end_empty_fast"] = {
        Sequences = {"reload_end_empty_fast"},
        Length = 0.86,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.4, 
                Callback = function(self) 
                    self:DoEjection("shell_eject")
                    self:DoParticle("Ejection", "shell_eject")
                end
            },
            {Time = 0.3, Callback = function(self) self:EnableGrip() end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_015")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_reload_end_fast_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_01")) end},  
            {Time = 0.0, Callback = function(self) end},  
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },


    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self.bCanEjectOnReload = true
                    self:DoParticle("MuzzleFlash", "muzzle")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
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
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_01"))
                    self.bCanEjectOnReload = true
                end
            },
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_romeo870_rechamber_015")) end},
            {Time = 0, Callback = function(self) self:EnableGrip2() self:EnableGrip() end},
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire_last"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.15,
        Fps = 25,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.ads.up")) end},
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.15,
        Fps = 25,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.dpapa12.ads.down")) end},
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
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
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 3.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_04")) end},
            {Time = 4.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_05")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_02")) end},
            {Time = 2.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_01")) end},
            {Time = 0.3, Callback = function(self) self:DisableGrip() end},
            {Time = 4.467, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
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

    ["melee_nostock"] = {
        Sequences = {"melee_miss_01_nostock", "melee_miss_02_nostock", "melee_miss_03_nostock"},
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

    ["melee_hit_nostock"] = {
        Sequences = {"melee_hit_01_nostock", "melee_hit_02_nostock", "melee_hit_03_nostock"},
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