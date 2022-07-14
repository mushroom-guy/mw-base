AddCSLuaFile()

local function fillMagBeforeMagin(self)
    local am = math.min(self:Clip1() + self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()), self:GetMaxClip1())
    self:UpdateMagPoseParam(self:GetMaxClip1() - am) 
end

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}
        }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.55,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_mcharlie.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.6,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_mcharlie.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(true) end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.166,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_raise_first_01")) end},
            {Time = 0.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_raise_first_02")) end},
            {Time = 0.466, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_raise_first_03")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_raise_first_04")) end},
            {Time = 0.9, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_02")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_04")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_045")) end},
            {Time = 0.4, Callback = function(self)  end},
            {Time = 1.33, Callback = function(self) end},
            {Time = 1.33, Callback = function(self) end},
            {Time = 1.9, Callback = function(self) self:EnableGrip() end}
        }
    },

   ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.96,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() end},
            {Time = 0.267, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_01")) end},
            {Time = 0.266, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_02")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_03")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_045")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_05")) end},
            {Time = 1.167, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.33,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_01")) end},
            {Time = 0.63, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_02")) end},
            {Time = 0.766, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_03")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_04")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_045")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_05")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 1.9, Callback = function(self) self:EnableGrip() end}
        }
    },

   ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.96,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.267, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_01")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_02")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_03")) fillMagBeforeMagin(self) end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_045")) end},
            {Time = 0.966, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_05")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_fast_06")) end},
            {Time = 1.1, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.367,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.15, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_01")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_02")) end},
            {Time = 0.766, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_03")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_04")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_045")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_05")) end},
            {Time = 1.9, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.93,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_01")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_02")) end},
            {Time = 0.6, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_03")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_045")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_fast_05")) end},
            {Time = 1.1, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.467,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.066, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_02")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_04")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_045")) end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_05")) end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_06")) end},
            {Time = 2.15, Callback = function(self) self:EnableGrip() end},
            {Time = 2, Callback = function(self) end},
            {Time = 2, Callback = function(self) end},
            {Time = 2, Callback = function(self) end}
         }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.7,
        Fps = 30,
        MagLength = 0.933,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_01")) end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_02")) end},
            {Time = 0.566, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_03")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_035")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_reload_empty_fast_05")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("")) end},
            {Time = 1.5, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.5,
        Fps = 30,
        MagLength = 1.467,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.1, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_01")) end},
            {Time = 0.766, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_02")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_03")) end},
            {Time = 1.466, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_035")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_04")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_05")) end},
            {Time = 2.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_06")) end},
            {Time = 2.15, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.7,
        Fps = 30,
        MagLength = 0.933,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_01")) end},
            {Time = 0.166, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_03")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_035")) end},
            {Time = 1.266, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_04")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_05")) end},
            {Time = 1.566, Callback = function(self) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end}
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.467,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 1.25, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_01")) end},
            {Time = 0.766, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_02")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_03")) end},
            {Time = 1.466, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_035")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_04")) end},
            {Time = 1.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_05")) end},
            {Time = 2.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_06")) end},
            {Time = 2.23, Callback = function(self) self:EnableGrip() end}
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.7,
        Fps = 30,
        MagLength = 0.93,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.067, Callback = function(self) self:DisableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Metal"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_01")) end},
            {Time = 0.166, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_03")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_035")) end},
            {Time = 1.266, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_04")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mcharlie_xmag_reload_empty_fast_05")) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end}
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
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_mcharlie.fire.last")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_mcharlie.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19_mcharlie.ads.down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("weap_ar_mcharlie_selector_off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("weap_ar_mcharlie_selector_on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 4.366,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.13, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0.133, Callback = function(self) self:DoSound(Sound("wfoly_ar_mcharlie_inspect_01")) end},
            {Time = 1.366, Callback = function(self) self:DoSound(Sound("wfoly_ar_mcharlie_inspect_02")) end},
            {Time = 2.466, Callback = function(self) self:DoSound(Sound("wfoly_ar_mcharlie_inspect_03")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("wfoly_ar_mcharlie_inspect_04")) end},
            {Time = 4.233, Callback = function(self) self:DoSound(Sound("wfoly_ar_mcharlie_inspect_05")) end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end}
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
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}   
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
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["HybridOn"] = {
        Sequences = {"hybrid_toggle_on"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.15, Callback = function(self) self:DoSound(Sound("Flipsight.Up")) end}
        }
    },

    ["HybridOff"] = {
        Sequences = {"hybrid_toggle_off"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0.767, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("Flipsight.Down")) end}
        }
    },
}