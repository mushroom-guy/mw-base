AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        {Time = 0, Callback = function(self) self:EnableGrip() end}       
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie725.raise")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.925,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie725.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.25,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_raise_first_03")) end},
            {Time = 0.733, Callback = function(self) self:EnableGrip() end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_raise_first_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_raise_first_01")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_02")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_06")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_04")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_05")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_01")) end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["reload_scope"] = {
        Sequences = {"reload_scope"},
        Length = 2.45,
        Fps = 30,
        MagLength = 1.35,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_02")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_06")) end},
            {Time = 1.267, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_04")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_05")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_01")) end},
            {Time = 2.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.75,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 20, 0)) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.367, Callback = function(self) self:EnableGrip() end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_03")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_01")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_06")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_04")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_05")) end},
        }
    },
    
    ["reload_scope_fast"] = {
        Sequences = {"reload_scope_fast"},
        Length = 1.75,
        Fps = 30,
        MagLength = 1,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 20, 0)) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.367, Callback = function(self) self:EnableGrip() end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_03")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_01")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_06")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_04")) end},
            {Time = 1.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_fast_05")) end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {
                Time = 0.35, 
                Callback = function(self) 
                    if (self.bShowShell2) then
                        self:DoParticle("Overheating", "shell_eject2")
                    end
                    self.bShowShell2 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_045")) end},
            {Time = 2.367, Callback = function(self) self:EnableGrip() end},
            {Time = 2.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_06")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_05")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_01")) end},
        }
    },

    ["reload_empty_scope"] = {
        Sequences = {"reload_empty_scope"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {
                Time = 0.35, 
                Callback = function(self) 
                    if (self.bShowShell2) then
                        self:DoParticle("Overheating", "shell_eject2")
                    end
                    self.bShowShell2 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_045")) end},
            {Time = 2.367, Callback = function(self) self:EnableGrip() end},
            {Time = 2.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_06")) end},
            {Time = 1.167, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_05")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_01")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.15, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell2) then
                        self:DoParticle("Overheating", "shell_eject2")
                    end
                    self.bShowShell2 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.433, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_01")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_06")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_04")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_05")) end},
        }
    },

    ["reload_empty_scope_fast"] = {
        Sequences = {"reload_empty_scope_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0.15, 
                Callback = function(self) 
                    if (self.bShowShell1) then
                        self:DoParticle("Overheating", "shell_eject1")
                    end
                    self.bShowShell1 = false
                end
            },
            {
                Time = 0.25, 
                Callback = function(self) 
                    if (self.bShowShell2) then
                        self:DoParticle("Overheating", "shell_eject2")
                    end
                    self.bShowShell2 = false
                end
            },
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 1, Callback = function(self) self:DoSpatialSound(Sound("MW_Casings.Shotgun"), Vector(35, 90, 0)) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.433, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_02")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_01")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_06")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_04")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_reload_empty_fast_05")) end},
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
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie725.ads.up")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.charlie725.ads.down")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} ,
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end} 
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
            {Time = 3.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_04")) end},
            {Time = 4.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_05")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_02")) end},
            {Time = 2.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_01")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.467, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["inspect_scope"] = {
        Sequences = {"inspect_scope"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 3.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_04")) end},
            {Time = 4.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_05")) end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_02")) end},
            {Time = 2.5, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_sh_charlie725_inspect_01")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.467, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },
}