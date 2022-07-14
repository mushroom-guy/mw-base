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
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.raise")) end},
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.9,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.oscar12.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_raise_first_01")) end},
            {Time = 0.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_raise_first_03")) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_raise_first_02")) end},
            {Time = 1.0, Callback = function(self) self:EnableGrip() end}, 
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.6,
        NextSequence = "Idle",
        Events = {
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_04")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_05")) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_06")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_01")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_02")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
            -- {Time = 1, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.8,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_04")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.567, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_01")) end},
            {Time = 0.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_02")) end},
            -- {Time = 0.5, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },

    ["reload_drum"] = {
        Sequences = {"reload_drum"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.8,
        NextSequence = "Idle",
        Events = {
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_06")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.367, Callback = function(self) self:EnableGrip() end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_04")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_05")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_02")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_drum_01")) end},
            -- {Time = 1, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },
    
    ["reload_drum_fast"] = {
        Sequences = {"reload_drum_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_drum_05")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_drum_02")) end},
            {Time = 1.733, Callback = function(self) self:EnableGrip() end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_drum_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_drum_01")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_fast_drum_04")) end},
            -- {Time = 0.5, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.1,
        Fps = 30,
        MagLength = 1.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_03")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.9, Callback = function(self) self:EnableGrip() end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_02")) end},
            {Time = 2.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_04")) end},
            {Time = 2.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_05")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_01")) end},
            -- {Time = 1.4, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_01")) end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 2.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_05")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_03")) end},
            -- {Time = 0.6, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },

    ["reload_empty_drum"] = {
        Sequences = {"reload_empty_drum"},
        Length = 3.3,
        Fps = 30,
        MagLength = 2.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 3.067, Callback = function(self) self:EnableGrip() end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_02")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_05")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_03")) end},
            {Time = 3.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_drum_06")) end},
            -- {Time = 1.4, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
        }
    },

    ["reload_drum_empty_fast"] = {
        Sequences = {"reload_empty_drum_fast"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_02")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.433, Callback = function(self) self:EnableGrip() end},
            {Time = 2.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_06")) end},
            {Time = 2.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_07")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_04")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_05")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_01")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_reload_empty_fast_drum_03")) end},
            -- {Time = 0.6, Callback = function(self) self:ResetBullets(self:GetAttachmentModels("Mag"), self.BulletList) end},
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
                    self:DoEjection("shell_eject")
                    self:DoParticle("MuzzleFlash", "muzzle")
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.aalpha12.ads.up")) end},
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.aalpha12.ads.down")) end},
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
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.667, Callback = function(self) self:EnableGrip() end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_05")) end},
            {Time = 3.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_06")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_01")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_02")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_03")) end},    
        }
    },

    ["inspect_drum"] = {
        Sequences = {"inspect_drum"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_01")) end},
            {Time = 3.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_06")) end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_04")) end},
            {Time = 2.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_05")) end},
            {Time = 2.767, Callback = function(self) self:EnableGrip() end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_aalpha12_inspect_drum_03")) end},
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