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
        Length = 0.4,
        Fps = 30,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.6,
        Fps = 40,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_raise_first_01")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_raise_first_03")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_raise_first_02")) end},
            {Time = 0.0, Callback = function(self) self:EnableGrip() end},
            {Time = 0.767, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.75,
        Fps = 30,
        MagLength = 2,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_02")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_03")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_04")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_05")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_06")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_07")) end},
            {Time = 2.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_08")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 2.533, Callback = function(self) self:EnableGrip() end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_055")) end},
            -- {Time = 1, Callback = function(self) 
            --     self:ResetBullets(self:GetAttachmentModels("Magazine"), self.BulletList)
            --  end},
        }
    },

   ["Reload_Fast"] = {
        Sequences = {"reload_fast"}, 
        Length = 2.3,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_08")) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_04")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_05")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_01")) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_03")) end},
            {Time = 1.867, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_055")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_fast_06")) end},
            -- {Time = 1, Callback = function(self) 
            --     self:ResetBullets(self:GetAttachmentModels("Magazine"), self.BulletList)
            -- end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.3,
        Fps = 30,
        MagLength = 2.13,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 2.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_08")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_055")) end},
            {Time = 2.933, Callback = function(self) self:EnableGrip() end},
            {Time = 3.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_09")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_02")) end},
            {Time = 0.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_03")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_04")) end},
            {Time = 1.6, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_05")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_06")) end},
            {Time = 2.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_07")) end},
            -- {Time = 1, Callback = function(self) 
            --     self:ResetBullets(self:GetAttachmentModels("Magazine"), self.BulletList) 
            -- end},
         }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.46,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_045")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 2.2, Callback = function(self) self:EnableGrip() end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_01")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_04")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_06")) end},
            {Time = 2.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_07")) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_02")) end},
            {Time = 1.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_reload_empty_fast_03")) end},
            -- {Time = 1, Callback = function(self) 
            --     self:ResetBullets(self:GetAttachmentModels("Magazine"), self.BulletList)
            -- end},
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

        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.ads.down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {

        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {

        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 39,
        NextSequence = "Idle",
        Events = {

        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.selector.on")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {

            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.papa90.selector.off")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 4.366,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DisableGrip() end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_inspect_01")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_inspect_02")) end},
            {Time = 2.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_inspect_03")) end},
            {Time = 3.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_inspect_04")) end},
            {Time = 4.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sm_papa90_inspect_05")) end},
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
        Sequences = {"melee_miss_01", "melee_miss_02"},
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
        Sequences = {"melee_hit_01", "melee_hit_02"},
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