AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.mpapa7.fire.s")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_SMG_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {
    {"att_perk", "attachment_vm_sm_mpapa7_perk_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_rof"}, 

    {"attachment_vm_sm_mpapa7_stock", "xrk_retractable_stock", 
    "att_vm_stock_heavy01", "att_vm_stock_heavy02", 
    "att_vm_stock_light01", "att_vm_stock_medium01", 
    "att_vm_stock_no"},

    {"attachment_vm_sm_mpapa7_mag", "attachment_vm_sm_mpapa7_mmags", "attachment_vm_sm_mpapa7_xmags"},

    {"attachment_vm_sm_mpapa7_barrel", "attachment_vm_sm_mpapa7_barlong2", 
    "attachment_vm_sm_mpapa7_barlong", "attachment_vm_sm_mpapa7_barlight"},

    {"att_muzzle", "att_vm_breacher01", "att_vm_breacher02", "att_vm_compensator01", 
    "att_vm_compensator02", "att_vm_flashhider01", "att_vm_flashhider02", 
    "att_vm_flashhider03", "att_vm_flashhider04", "att_vm_muzzlebrake01",
    "att_vm_muzzlebrake02", "att_vm_muzzlebrake03",
    "att_vm_silencer01", "att_vm_silencer02", "att_vm_silencer03",
    "att_vm_silencer04", "att_vm_silencer05", "att_vm_silencer06"},

    {"att_sight", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_hybrid_west01", "att_vm_hybrid_west03", "att_vm_4x_east01_tall", "att_vm_2x_west01",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall", "att_vm_reflex_west04"},

    {"att_laser", "attachment_vm_sm_mpapa7_laser01", "attachment_vm_sm_mpapa7_laser02", 
    "attachment_vm_sm_mpapa7_laser03"},

    {"att_grip", "attachment_vm_sm_mpapa7_angledgrip01", "attachment_vm_sm_mpapa7_angledgrip02", "attachment_vm_sm_mpapa7_stubbygrip01", 
    "attachment_vm_sm_mpapa7_stubbygrip02", "attachment_vm_sm_mpapa7_vertgrip01", "attachment_vm_sm_mpapa7_vertgrip02", 
    "attachment_vm_sm_mpapa7_vertgrip03", "fss_folding_grip"},
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
--     ["Barrel"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_sm_mpapa7_barrel",
--         },
--         {
--             Key = "attachment_vm_sm_mpapa7_barlight",
--             Bodygroups = {
--                 ["tag_tip"] = 2
--             },
--             -- ExcludedAttachments = {
--             --     ["Muzzle"] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18}
--             -- },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_mpapa7_barlong",
--             Bodygroups = {
--                 ["tag_tip"] = 4
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_mpapa7_barlong2",
--             Bodygroups = {
--                 ["tag_tip"] = 6
--             },
--             Stats = function(self)
--             end
--         }
--     },

--     ["Laser"] = {
--         Slot = 6,
--         {
--             Key = "no_laser"
--         },
--         {
--             Key = "attachment_vm_laser_cylinder01",
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_cylinder02",
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.4, 0.265, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_cylinder03",
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
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
--             Key = "attachment_vm_minireddot_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.15)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.25)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.135)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.1, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.4)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.05, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.013, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.015, 0, -0.35)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0, 0, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.25)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.1, 0.017, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.11, 3, -0.465)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.007, 3, -0.57)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.006, 3, -0.46)
--             end
--         },
--         {
--             Key = "attachment_vm_thermal_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.002, 3, -0.4)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_sight"] = 1
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.002, 3, 0.03)
--                 self.HybridAimAngles = Angle(-0.02, 0.02, -45)
--                 self.HybridAimPos = Vector(-1.75, 5, 0.5)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_sight"] = 1
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, 3, 0.045)
--             end
--         }, 
--         {
--             Key = "weapon_vm_scope_mike14_alt",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.008, 5, -0.35)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_scope_vz",
--             Bodygroups = {
--                 ["tag_sight"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, 5, -0.28)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_sight"] = 1
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.005, 3, -0.11)
--                 self.HybridAimAngles = Angle(-0.02, 0.02, 0)
--                 self.HybridAimPos = Vector(0,2,-1.3)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.0075, 3, -0.035)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--                 self.HybridAimAngles = Angle(0, 0.015, -45)
--                 self.HybridAimPos = Vector(-1.55, 5, 0.75)
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake02",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake03",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_muzzlebrake04",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_compensator01",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },   
--         {
--             Key = "attachment_vm_compensator02",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },      
--         {
--             Key = "attachment_vm_muzzlemelee01",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },   
--         {
--             Key = "attachment_vm_muzzlemelee02",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },            
--         {
--             Key = "attachment_vm_silencer_east01",
--             Bodygroups = {
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--         {
--             Key = "attachment_vm_silencer04",
--             VElement = {
--                 Bodygroups = {
--                     ["tag_tip"] = 1
--                 },
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, -0.35, 0), Angle()},
--                         [3] = {Vector(0, 2.5, 0), Angle()},
--                         [4] = {Vector(0, 2.5, 0), Angle()}
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
--                 self.Animations.Reload_Empty_Scope = self.Animations.Reload_Empty_Fast_Scope                
--                 self.Animations.Reload_Xmag2 = self.Animations.Reload_Xmag2_Fast
--                 self.Animations.Reload_Empty_Xmag2 = self.Animations.Reload_Empty_Xmag2_Fast
--                 self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
--                 self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
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
--             Key = "attachment_vm_sm_mpapa7_stock",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "xrk_retractable_stock",
--             VElement = {
--                 Bone = "tag_stock_attach",
--                 Position = Vector(-13, 0, -1),
--                 Angles = Angle(-90, 0, 0),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_light01",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_medium01",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_heavy",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1
--             },
--             Stats = function(self)
--             end
--         },
--     },

--     ["Underbarrel"] = {
--         Slot = 8,
--         {
--             Key = "no_underbarrel",
--         },
--         {
--             Key = "fss_folding_grip",
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(3, 0, 0.3),
--                 Angles = Angle(-90, 0, 0),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vert_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_angledgrip_lod0",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_angledgrip04",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip02_lod0",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vert_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip03",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vert_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby02",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vert_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby01",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vertpro_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby04",
--             Bodygroups = {
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vertpro_offset")
--             end
--         },
--     },
    
--     ["Magazine"] = {
--         Slot = 5,
--         {
--             Key = "attachment_vm_sm_mpapa7_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_mpapa7_mmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_mpapa7_xmags",
--             Stats = function(self)
--             end
--         }
--     },
-- }