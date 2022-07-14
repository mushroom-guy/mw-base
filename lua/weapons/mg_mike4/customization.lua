AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.mike4.fire.s")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_AR_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_AR_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

function SWEP:doSocomConversionStats()
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")
    local bSup4 = self:HasAttachment("attachment_vm_silencer05")
    local bSup4 = self:HasAttachment("attachment_vm_silencer06")
    local bSup5 = self:HasAttachment("attachment_vm_ar_mike4_barsil")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_mag_v5")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_barrel_v7")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
        self.Reverb = {
            RoomScale = 50000,
            Sounds = {
                Outside = {
                    Layer = Sound("Atmo_LMG.Outside"),
                    Reflection = Sound("Reflection_AR.Outside")
                },
        
                Inside = { 
                    Layer = Sound("Atmo_LMG.Inside"),
                    Reflection = Sound("Reflection_AR.Inside")
                }
            }
        }
    end

    self.Shell.Model = Model("models/viper/mw/shells/vfx_9x39_shell.mdl")
    self.Shell.Scale = 0.35
end

function SWEP:doCalConversionStats()
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")
    local bSup5 = self:HasAttachment("attachment_vm_ar_mike4_barsil")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_mag_v5")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_barrel_v7")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
        self.Primary.Sound = Sound("mw19_mcharlie.fire.cal")
        self.Reverb = {
            RoomScale = 50000,
            Sounds = {
                Outside = {
                    Layer = Sound("Atmo_SMG.Outside"),
                    Reflection = Sound("Reflection_AR.Outside")
                },
        
                Inside = { 
                    Layer = Sound("Atmo_SMG.Inside"),
                    Reflection = Sound("Reflection_AR.Inside")
                }
            }
        }
    end

    self.Primary.Ammo = "SMG1"
    self.Shell.Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl")
    self.Shell.Scale = 0.5
    self.Shell.Sound = Sound("MW_Casings.9mm")
end

SWEP.Customization = {
    {"att_perk", "attachment_vm_ar_mike4_perk_soh", "att_perk_fmj"}, 

    {"attachment_vm_ar_mike4_barrel", "attachment_vm_ar_mike4_barrel_v2", "attachment_vm_ar_mike4_barrel_v27","attachment_vm_ar_mike4_barrel_v15", "attachment_vm_ar_mike4_barrel_v7", 
    "attachment_vm_ar_mike4_barrel_v3_alt", "attachment_vm_ar_mike4_barsil", "attachment_vm_ar_mike4_custombarrel",
    "attachment_vm_ar_mike4_mike203barrel", "attachment_vm_ar_mike4_shortbarrel"},

    {"attachment_vm_ar_mike4_stock", "attachment_vm_ar_mike4_stock_v2", "attachment_vm_ar_mike4_stock_v27", "attachment_vm_ar_mike4_stock_v15","attachment_vm_ar_mike4_customstock", "attachment_vm_ar_mike4_stockno", "att_vm_stock_heavy01", 
    "att_vm_stock_heavy02", "att_vm_stock_light01", "att_vm_stock_medium01"},

    {"attachment_vm_ar_mike4_mag", "attachment_vm_ar_mike4_mag_v15", "attachment_vm_ar_mike4_mag_v27", "attachment_vm_ar_mike4_xmags", "attachment_vm_ar_mike4_xmags2", "attachment_vm_ar_mike4_mag_v5", 
    "attachment_vm_ar_mike4_calsmg"},

    {"attachment_vm_ar_mike4_receiver", "attachment_vm_ar_mike4_receiver_v7", "attachment_vm_ar_mike4_receiver_v27", "attachment_vm_ar_mike4_receiver_v2", "attachment_vm_ar_mike4_receiver_v15"},

    {"att_muzzle", "att_vm_breacher01", "att_vm_breacher02", "att_vm_compensator01", 
    "att_vm_compensator02", "att_vm_flashhider01", "att_vm_flashhider02", 
    "att_vm_flashhider03", "att_vm_flashhider04", "att_vm_muzzlebrake01",
    "att_vm_muzzlebrake02", "att_vm_muzzlebrake03",
    "att_vm_silencer01", "att_vm_silencer02", "att_vm_silencer03",
    "att_vm_silencer04", "att_vm_silencer05", "att_vm_silencer06"},

    {"att_sight", "attachment_vm_ar_mike4_carryhandle", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_hybrid_west02", "att_vm_hybrid_west02_thermal", "att_vm_reflex_west04", "att_vm_2x_west01",
    "att_vm_hybrid_west03", "att_vm_4x_east01_tall",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall",
    "att_vm_scope_mike14", "att_vm_scope_vz"},

    {"att_laser", "attachment_vm_ar_mike4_laser01", "attachment_vm_ar_mike4_laser02", "attachment_vm_ar_mike4_laser03"},
    
    {"att_grip", "attachment_vm_ar_mike4_angledgrip01", "attachment_vm_ar_mike4_angledgrip02", "attachment_vm_ar_mike4_stubbygrip01", 
    "attachment_vm_ar_mike4_stubbygrip02", "attachment_vm_ar_mike4_vertgrip01", "attachment_vm_ar_mike4_vertgrip02", 
    "attachment_vm_ar_mike4_vertgrip03"},
}

-- SWEP.Customization = {
--     ["Barrel"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_ar_mike4_barrel",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_mike203barrel",
--             Bodygroups = {
--                 ["barrel_tip"] = 4,
--                 ["tag_sight_barrel"] = 6,
--                 ["tag_grip_hide"] = 1
--             },
--             ExcludedAttachments = {
--                 ["Laser"] = {2,3,4}
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_m203_offset")
--             end,
--             UsingM203Barrel = true
--         },
--         {
--             Key = "attachment_vm_ar_mike4_shortbarrel",
--             Bodygroups = {
--                 ["barrel_tip"] = 8,
--                 ["tag_sight_barrel"] = 8,
--                 ["tag_grip_hide"] = 1
--             },
--             Stats = function(self)
--             end,
--             UsingShortBarrel = true
--         },
--         {
--             Key = "attachment_vm_ar_mike4_custombarrel",
--             Bodygroups = {
--                 ["barrel_tip"] = 4,
--                 ["tag_sight_barrel"] = 4,
--                 ["tag_laser_hide"] = 0,
--                 ["tag_grip_hide"] = 0
--             },
--             Stats = function(self)
--             end,
--             UsingLongBarrel = true
--         },
--         {
--             Key = "attachment_vm_ar_mike4_barrel_v3_alt",
--             Bodygroups = {
--                 ["barrel_tip"] = 0,
--                 ["tag_sight_barrel"] = 2,
--                 ["tag_grip_hide"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_barsil",
--             Bodygroups = {
--                 ["barrel_tip"] = 8,
--                 ["tag_sight_barrel"] = 2,
--                 ["tag_grip_hide"] = 1
--             },
--             ExcludedAttachments = {
--                 ["Muzzle"] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end
--         }
--     },

--     ["Laser"] = {
--         Slot = 6,
--         {
--             Key = "no_laser"
--         },
--         {
--             Key = "attachment_vm_laser01",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -4, 0), Angle()}
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser_hide"] = 2
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_laser02",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -4, 0), Angle()}
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser_hide"] = 2
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.4, 0.265, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser03",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -4, 0), Angle()}
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser_hide"] = 2
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         }
--     },

--     ["Optic"] = {
--         Slot = 4,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_ar_mike4_carryhandle",
--             Bodygroups = {
--                 ["tag_sight"] = 2
--             },
--             Stats = function(self)
--                 self.Zoom.Blur.EyeFocusDistance = 10
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.26)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.32)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.01, 0.02, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, 0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.046, 0.013, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 0, 0.265)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.046, 0.013, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.04, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 2, 0)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 2, 0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.013, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 2, 0)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, 0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.017, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.12, 1, -0.06)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.003, 1, -0.165)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0035, 1.5, -0.0565)
--             end
--         },
--         {
--             Key = "attachment_vm_thermal_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             VElement = {
--                 Bone = "tag_reflex",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 0, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.008, 1, 0.008)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             VElement = {
--                 Bone = "tag_reflex",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 0, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.007, 1, 0.434)
--                 self.HybridAimAngles = Angle(-0.04, 0.02, -45)
--                 self.HybridAimPos = Vector(-1.78, 0, 0.9)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             VElement = {
--                 Bone = "tag_reflex",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 0, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.004, 1.5, 0.452)
--             end
--         }, 
--         {
--             Key = "weapon_vm_scope_mike14_alt",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.002, 3, 0.062)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_scope_vz",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.005, 2, 0.13)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             VElement = {
--                 Bone = "tag_reflex",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 0, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0065, 1, 0.296)
--                 self.HybridAimAngles = Angle(-0.01, 0.02, 0)
--                 self.HybridAimPos = Vector(0,0,-0.93)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west02",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.0125, 0, 0.03)
--                 self.HybridAimAngles = Angle(-0.04, 0.03, 0)
--                 self.HybridAimPos = Vector(0, 0, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         },
--         {
--             Key = "attachment_vm_hybrid_west02_thermal",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.0125, 0, 0.03)
--                 self.HybridAimAngles = Angle(-0.04, 0.03, 0)
--                 self.HybridAimPos = Vector(0, 0, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         },  
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_sight_barrel"] = 1
--             },
--             VElement = {
--                 Bone = "tag_reflex",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 0, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.003, 1, 0.366)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--                 self.HybridAimAngles = Angle(-0.03, 0.015, -45)
--                 self.HybridAimPos = Vector(-1.58, 0, 1.16)
--             end
--         }, 
--     },

--     ["Muzzle"] = {
--         Slot = 3,
--         {
--             Key = "no_muzzle"
--         },
--         {
--             Key = "attachment_vm_flashhider01",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_flashhider02",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_flashhider03",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_flashhider05",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },                          
--         {
--             Key = "attachment_vm_muzzlebrake01",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake02",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake03",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake04",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_compensator01",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },   
--         {
--             Key = "attachment_vm_compensator02",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },      
--         {
--             Key = "attachment_vm_muzzlemelee01",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },   
--         {
--             Key = "attachment_vm_muzzlemelee02",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },      
--         {
--             Key = "attachment_vm_silencer_east01",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },        
--         {
--             Key = "attachment_vm_silencer02",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--         {
--             Key = "attachment_vm_silencer03",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--         {
--             Key = "attachment_vm_silencer04",
--             Bodygroups = {
--                 ["barrel_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 7.5, 0), Angle()},
--                         [3] = {Vector(0, -2.76, 0), Angle()},
--                         [4] = {Vector(0, 6.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--     },

--     ["Perk"] = {
--         Slot = 1,
--         {
--             Key = "no_perk",
--         },
--         {
--             Key = "perk_soh",
--             Stats = function(self)
--                 self.Animations.Reload = self.Animations.Reload_Fast
--                 self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
--                 self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
--                 self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
--                 self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
--                 self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
--                 self.Animations.Reload_Calsmg = self.Animations.Reload_Calsmg_Fast
--                 self.Animations.Reload_Empty_Calsmg = self.Animations.Reload_Empty_Calsmg_Fast
--             end
--         },
--         {
--             Key = "perk_fastmelee",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "perk_heavymelee",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "perk_fmj",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Stock"] = {
--         Slot = 7,
--         {
--             Key = "attachment_vm_ar_mike4_stock",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_customstock",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_light01",
--             Bodygroups = {
--                 ["stock_hide"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_medium01",
--             Bodygroups = {
--                 ["stock_hide"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_stockno",
--             Bodygroups = {
--                 ["stock_hide"] = 1
--             },
--             Stats = function(self)
--                 --self:RemoveValue("LaserAimAngles")
--                 --self:RemoveValue("LaserAimPos")
--             end
--         }
--     },

--     ["Underbarrel"] = {
--         Slot = 8,
--         {
--             Key = "no_underbarrel",
--         },
--         {
--             Key = "attachment_vm_angledgrip_lod0",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripang_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripang_offset")
--                         break
--                     end

--                     if (att.UsingLongBarrel != nil && att.UsingLongBarrel == true) then
--                         self:SetGripPoseParameter("grip_barlong_gripang_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripang_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_angledgrip04",
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [1] = {Vector(0, -1.5, 0), Angle()},
--                         [2] = {Vector(0, -1.5, 0), Angle()},
--                         [3] = {Vector(0, -1.5, 0), Angle()},
--                         [4] = {Vector(0, -1.5, -0.175), Angle()},
--                         [5] = {Vector(0, -1.5, 0), Angle()},
--                         [6] = {Vector(0, -1.5, 0), Angle()}
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripang_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripang_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripang_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip02_lod0",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripvert_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripvert_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripvert_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip03",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripvert_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripvert_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripvert_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby02",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripvert_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripvert_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripvert_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby01",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripvert_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripvert_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripvert_offset")
--                         break
--                     end
--                 end
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby04",
--             Bodygroups = {
--                 ["tag_grip_hide"] = 1
--             },
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [4] = {Vector(0, 0, -0.175), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_gripvert_offset")

--                 for name, attachments in pairs(self.Customization) do
--                     local att = self.Customization[name][self.Customization[name].m_Index]

--                     if (att.UsingShortBarrel != nil && att.UsingShortBarrel == true) then
--                         self:SetGripPoseParameter("grip_barshort_gripvert_offset")
--                         break
--                     end

--                     if (att.UsingM203Barrel != nil && att.UsingM203Barrel == true) then
--                         self:SetGripPoseParameter("grip_m203_gripvert_offset")
--                         break
--                     end
--                 end
--             end
--         },
--     },
    
--     ["Magazine"] = {
--         Slot = 5,
--         {
--             Key = "attachment_vm_ar_mike4_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_calsmg",
--             Bodygroups = {
--                 ["ejection_cover"] = 1,
--                 ["tag_mag_show"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_xmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_xmags2",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_ar_mike4_mag_v5",
--             Stats = function(self)
--             end
--         }
--     },

-- }