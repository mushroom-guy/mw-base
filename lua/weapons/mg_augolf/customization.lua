AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.augolf.fire.9mm.s")
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
    self.Primary.Sound = Sound("mw19.augolf.fire.s")
    end
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

function SWEP:doCalConversionStats()
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")
    local bSup4 = self:HasAttachment("attachment_vm_silencer05")
    local bSup4 = self:HasAttachment("attachment_vm_silencer06")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
    self.Primary.Sound = Sound("mw19.augolf.fire")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_AR.Outside"),
                Reflection = Sound("Reflection_AR.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_AR.Inside"),
                Reflection = Sound("Reflection_AR.Inside")
            }
        }
    }
    self.Primary.Ammo = "AR2"
    self.Shell.Model = "models/viper/mw/shells/vfx_shell_ar_lod0.mdl"
    self.Shell.Sound = Sound("MW_Casings.556")
    end
end

function SWEP:fivefivesixConversion()
    weapon.Primary.RPM = 680
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.195
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.195
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
end

SWEP.Customization = {
    {"att_perk", "attachment_vm_sm_augolf_perk_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_rof"}, 

    {"att_stock", "attachment_vm_sm_augolf_stock_tactical", "attachment_vm_sm_augolf_stockl", "attachment_vm_sm_augolf_stocks"},

    {"attachment_vm_sm_augolf_mag", "attachment_vm_sm_augolf_drummag", "attachment_vm_sm_augolf_smg_xmag",
    "attachment_vm_sm_augolf_armag"},

    {"attachment_vm_sm_augolf_smgbarrel", "attachment_vm_sm_augolf_lmgbarrel", "attachment_vm_sm_augolf_arbarrel"},

    {"att_rail", "attachment_vm_sm_augolf_arrail"},

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
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall", "att_vm_reflex_west04",
     "attachment_vm_sm_augolf_lmgrail"},

    {"att_laser", "attachment_vm_sm_augolf_laser01_cylinder", "attachment_vm_sm_augolf_laser02_cylinder", 
    "attachment_vm_sm_augolf_laser03_cylinder"},

    {"att_grip", "attachment_vm_sm_augolf_angledgrip01", "attachment_vm_sm_augolf_angledgrip02", "attachment_vm_sm_augolf_stubbygrip01", 
    "attachment_vm_sm_augolf_stubbygrip02", "attachment_vm_sm_augolf_vertgrip01", "attachment_vm_sm_augolf_vertgrip02", 
    "attachment_vm_sm_augolf_vertgrip03"},
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
--     ["Barrel"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_sm_augolf_smgbarrel",
--             Bodygroups = {
--                 ["tag_tip"] = 0
--             }
--         },
--         {
--             Key = "attachment_vm_sm_augolf_arbarrel",
--             Bodygroups = {
--                 ["tag_tip"] = 2
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_lmgbarrel",
--             Bodygroups = {
--                 ["tag_tip"] = 4
--             },
--             Stats = function(self)
--             end
--         }
--     },

--     ["Rail"] = {
--         Slot = 3,
--         {
--             Key = "no_attachment",
--         },
--         {
--             Key = "attachment_vm_sm_augolf_arrail",
--             Bodygroups = {
--                 ["tag_sight"] = 2,
--                 ["tag_rail"] = 2
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_lmgrail",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--                 ["tag_rail"] = 1
--             },
--             ExcludedAttachments = {
--                 ["Optic"] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22}
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.515)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },
--     },

--     ["Laser"] = {
--         Slot = 7,
--         {
--             Key = "no_laser"
--         },
--         {
--             Key = "attachment_vm_laser_cylinder01",
--             Bodygroups = {
--                 ["tag_laser"] = 1,
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
--                 ["tag_laser"] = 1,
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
--                 ["tag_laser"] = 1,
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
--         Slot = 5,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.2)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.01, 0.02, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.2)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.035, 0.02, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.4)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.034, 0.018, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.015, 0, -0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.034, 0.018, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.55)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.05, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.5)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.45)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.013, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.5)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.017, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.11, 1, -0.62)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.007, 0, -0.725)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.008, 0, -0.615)
--             end
--         },
--         {
--             Key = "attachment_vm_thermal_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.002, 0, -0.55)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.00, 0, -0.12)
--                 self.HybridAimAngles = Angle(-0.02, 0.02, -45)
--                 self.HybridAimPos = Vector(-1.75, 0, 0.4)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, 0, -0.11)
--             end
--         }, 
--         {
--             Key = "weapon_vm_scope_mike14_alt",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.008, 2, -0.5)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_scope_vz",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, 2, -0.435)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.005, 0, -0.26)
--                 self.HybridAimAngles = Angle(-0.02, 0.02, 0)
--                 self.HybridAimPos = Vector(0,2,-1.45)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, 0.5, -0.191)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--                 self.HybridAimAngles = Angle(0, 0.015, -45)
--                 self.HybridAimPos = Vector(-1.55, 3, 0.65)
--             end
--         }, 
--     },

--     ["Muzzle"] = {
--         Slot = 4,
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                 ["tag_tip"] = 1
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 3.85, 0), Angle()},
--                         [3] = {Vector(0, 10.7, 0), Angle()},
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
--                 self.Animations.Reload_ARmag = self.Animations.Reload_ARmag_Fast
--                 self.Animations.Reload_Empty_ARmag = self.Animations.Reload_Empty_ARmag_Fast
--                 self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
--                 self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
--                 self.Animations.Reload_DrumMag = self.Animations.Reload_DrumMag_Fast
--                 self.Animations.Reload_Empty_DrumMag = self.Animations.Reload_Empty_DrumMag_Fast
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
--         Slot = 8,
--         {
--             Key = "no_attachment",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_stock_tactical",
--             Bodygroups = {
--                 ["tag_stock_attach"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_stockl",
--             Bodygroups = {
--                 ["tag_stock_attach"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_stocks",
--             Stats = function(self)
--             end
--         },
--     },

--     ["Underbarrel"] = {
--         Slot = 9,
--         {
--             Key = "no_underbarrel",
--         },
--         {
--             Key = "attachment_vm_angledgrip_lod0",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_angledgrip04",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip02_lod0",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, -5, 0),
--                 Angles = Angle(),
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
--             Key = "attachment_vm_vertgrip03",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, -5, 0),
--                 Angles = Angle(),
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
--             Key = "attachment_vm_vertgrip_stubby02",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, -5, 0),
--                 Angles = Angle(),
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
--             Key = "attachment_vm_vertgrip_stubby01",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, -5, 0),
--                 Angles = Angle(),
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
--             Key = "attachment_vm_vertgrip_stubby04",
--             Bodygroups = {
--                 ["tag_grip_attach"] = 1,
--                 ["tag_ub_rail"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, -5, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_vert_offset")
--             end
--         },
--     },
    
--     ["Magazine"] = {
--         Slot = 6,
--         {
--             Key = "attachment_vm_sm_augolf_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_armag",
--             Stats = function(self)
--                 doCalConversionStats(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_smg_xmag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sm_augolf_drummag",
--             Stats = function(self)
--                 doCalConversionStats(self)
--             end
--         }
--     },
-- }