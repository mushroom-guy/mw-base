AddCSLuaFile()

local function fillMagBeforeMagin(self)
    local am = math.min(self:Clip1() + self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()), self:GetMaxClip1())
    self:UpdateMagPoseParam(1 - am / self:GetMaxClip1()) 
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
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.6,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.drop")) self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.raise.first.1")) end},
            {Time = 0.85, Callback = function(self) self:DoSound(Sound("mw19.mike4.raise.first.2")) end},
            {Time = 0.95, Callback = function(self) self:DoSound(Sound("mw19.mike4.raise.first.3")) end},
            {Time = 1.25, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.2,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_05")) end},
            {Time = 2, Callback = function(self) self:EnableGrip() end}
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_05")) end},
            {Time = 1.16, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Calsmg"] = {
        Sequences = {"reload_calsmg"},
        Length = 2.2,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_03")) end},
            {Time = 1.25, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_05")) end},
            {Time = 2, Callback = function(self) self:EnableGrip() end}
        }
    },
        
    ["Reload_Calsmg_Fast"] = {
        Sequences = {"reload_calsmg_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_01")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_05")) end},
            {Time = 1.167, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.2,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_05")) end},
            {Time = 2, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_01")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_03")) end},
            {Time = 0.93, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_04")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_05")) end},
            {Time = 1.16, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 2.2,
        Fps = 30,
        MagLength = 1.3,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_02")) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_03")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_05")) end},
            {Time = 2, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0.066, Callback = function(self) self:DisableGrip() self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_01")) end},
            {Time = 0.36, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_02")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_03")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_fast_05")) end},
            {Time = 1.167, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_01")) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_05")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_06")) end},
            {Time = 2.06, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_02")) end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_04")) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_05")) end},
        }
    },

    ["Reload_Empty_Calsmg"] = {
        Sequences = {"reload_empty_calsmg"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_01")) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.033, Callback = function(self) self:DisableGrip() end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 1.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_05")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_06")) end},
            {Time = 2.06, Callback = function(self) self:EnableGrip() end},
        }
    },
    
    ["Reload_Empty_Calsmg_Fast"] = {
        Sequences = {"reload_empty_calsmg_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_02")) end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_smg_04")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_04")) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_05")) end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_01")) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_05")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_06")) end},
            {Time = 2.06, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_02")) end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_04")) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_05")) end},
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 2.3,
        Fps = 30,
        MagLength = 1.4,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_01")) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0.06, Callback = function(self) self:DisableGrip() end},
            {Time = 0.35, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_02")) end},
            {Time = 0.8, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_xmag_03")) end},
            {Time = 1.33, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_04")) end},
            {Time = 1.76, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_05")) end},
            {Time = 2.13, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_06")) end},
            {Time = 2.06, Callback = function(self) self:EnableGrip() end},
            {Time = 2.06, Callback = function(self) end},
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_empty_xmaglrg_fast"},
        Length = 1.6,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:AllowRuntimeMagPoseParam(false) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_02")) end},
            {Time = 0.75, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.AR.Poly"), Vector(0, 0, 40)) fillMagBeforeMagin(self) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_03")) end},
            {Time = 1.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_04")) end},
            {Time = 1.4, Callback = function(self) self:EnableGrip() end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_ar_mike4_reload_empty_fast_05")) end},
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.fire.last")) self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.ads.down")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.semi.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.semi.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.inspect.1")) self:AllowRuntimeMagPoseParam(true) end},
            {Time = 0.13, Callback = function(self) self:DisableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("mw19.mike4.inspect.2")) end},
            {Time = 2.36, Callback = function(self) self:DoSound(Sound("mw19.mike4.inspect.3")) end},
            {Time = 3.6, Callback = function(self) self:DoSound(Sound("mw19.mike4.inspect.4")) end},
            {Time = 4.26, Callback = function(self) self:DoSound(Sound("mw19.mike4.inspect.5")) end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
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
            {Time = 0.15, Callback = function(self) self:DoSound(Sound("Flipsight.Up")) self:AllowRuntimeMagPoseParam(true) end}
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