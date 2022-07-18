AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.charlie725.fire.s")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_Shotgun2.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Reflection_ARSUP.Inside"),
                Reflection = Sound("Reflection_ShotgunSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

function SWEP:doDBStats()
    self.Primary.TrailingSound = Sound("wpn_shotgun_fire_lyr")
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_shotgun_db"
end

-- local function doCalConversionStats(self)
--     local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
--     local bSup2 = self:HasAttachment("attachment_vm_silencer02")
--     local bSup3 = self:HasAttachment("attachment_vm_silencer03")
--     local bSup4 = self:HasAttachment("attachment_vm_silencer04")
--     local bSup5 = self:HasAttachment("attachment_vm_sh_charlie725_barsil")
--     local bSup6 = self:HasAttachment("attachment_vm_sh_charlie725_mag_v5")

--     if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
--         self.Primary.Sound = Sound("mw19_mcharlie.fire.cal")
--         self.Reverb = {
--             RoomScale = 50000,
--             Sounds = {
--                 Outside = {
--                     Layer = Sound("Atmo_SMG.Outside"),
--                     Reflection = Sound("Reflection_AR.Outside")
--                 },
        
--                 Inside = { 
--                     Layer = Sound("Atmo_SMG.Inside"),
--                     Reflection = Sound("Reflection_AR.Inside")
--                 }
--             }
--         }
--     end

--     self.Primary.Ammo = "SMG1"
--     self.Shell.Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl")
--     self.Shell.Scale = 0.5
--     self.Shell.Sound = Sound("MW_Casings.9mm")
-- end


-- local function doSocomConversionStats(self)
--     local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
--     local bSup2 = self:HasAttachment("attachment_vm_silencer02")
--     local bSup3 = self:HasAttachment("attachment_vm_silencer03")
--     local bSup4 = self:HasAttachment("attachment_vm_silencer04")
--     local bSup5 = self:HasAttachment("attachment_vm_sh_charlie725_barsil")
--     local bSup6 = self:HasAttachment("attachment_vm_sh_charlie725_mag_v5")

--     if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
--     self.Reverb = {
--         RoomScale = 50000,
--         Sounds = {
--             Outside = {
--                 Layer = Sound("Atmo_LMG.Outside"),
--                 Reflection = Sound("Reflection_AR.Outside")
--             },
    
--             Inside = { 
--                 Layer = Sound("Atmo_LMG.Inside"),
--                 Reflection = Sound("Reflection_AR.Inside")
--             }
--         }
--     }
-- end

--     self.Shell.Model = Model("models/viper/mw/shells/vfx_9x39_shell.mdl")
--     self.Shell.Scale = 0.35
-- end

SWEP.Customization = {
    {"att_perk", "attachment_vm_sh_charlie725_perk_soh", "att_perk_hip"}, 

    {"attachment_vm_sh_charlie725_barrel", "attachment_vm_sh_charlie725_barrel_sawnoff", "attachment_vm_sh_charlie725_barrel_mid",
    "attachment_vm_sh_charlie725_barrel_long"},

    {"attachment_vm_sh_charlie725_guard", "attachment_vm_sh_charlie725_forendtactical", "attachment_vm_sh_charlie725_forendstable",
    "attachment_vm_sh_charlie725_foreendlight"},

    {"att_ammo_default", "att_ammo_db", "att_ammo_flechette",
    "att_ammo_he", "att_ammo_slugs"},

    {"attachment_vm_sh_charlie725_stock", "attachment_vm_sh_charlie725_stock_sawnoff", "attachment_vm_sh_charlie725_stocklight", 
    "attachment_vm_sh_charlie725_stockstable","attachment_vm_sh_charlie725_stocktactical"},

    {"att_muzzle", "attachment_vm_sh_charlie725_comp", "attachment_vm_sh_charlie725_flashhider", "attachment_vm_sh_charlie725_muzzlebrake", 
    "attachment_vm_sh_charlie725_muzzlemelee", "attachment_vm_sh_charlie725_silencer01", "attachment_vm_sh_charlie725_silencer02", 
    "attachment_vm_sh_charlie725_silencer03"},

    {"att_sight", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_reflex_west04", "att_vm_charlie725_2x_west01",
    "att_vm_hybrid_west03", "att_vm_4x_east01_tall",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall",
    "att_vm_charlie725_scope_mike14", "att_vm_charlie725_scope_vz"},

    {"att_laser", "attachment_vm_sh_charlie725_laser01", "attachment_vm_sh_charlie725_laser02", "attachment_vm_sh_charlie725_laser03"},
    
    {"att_grip", "attachment_vm_sh_charlie725_angledgrip01", "attachment_vm_sh_charlie725_angledgrip02", "attachment_vm_sh_charlie725_stubbygrip01", 
    "attachment_vm_sh_charlie725_stubbygrip02", "attachment_vm_sh_charlie725_vertgrip01", "attachment_vm_sh_charlie725_vertgrip02", 
    "attachment_vm_sh_charlie725_vertgrip03"},
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
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
--                 self.Animations.reload_scope = self.Animations.reload_scope_fast
--                 self.Animations.reload_empty_scope = self.Animations.reload_empty_scope_fast
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
--         --[[{
--             Key = "perk_fmj",
--             Stats = function(self)
--             end
--         }]]
--     },
    
--     ["Ammo"] = {
--         Slot = 2,
--         {
--             Key = "no_perk",
--             PostProcess = function(self)
--                 self.Primary.TrailingSound = nil
--                 self.Projectile = nil
--             end,
--         },
--         {
--             Key = "sh_slugs",
--             Stats = function(self)
--             end,
--             PostProcess = function(self)
--                 self.Primary.TrailingSound = nil
--             end,
--         },
--         {
--             Key = "sh_db",
--             Stats = function(self)
--                 doDBStats(self)
--             end
--         },
--         {
--             Key = "sh_flechette",
--             Stats = function(self)
--             end,
--             PostProcess = function(self)
--                 self.Primary.TrailingSound = nil
--             end,
--         },
--         {
--             Key = "sh_he",
--             Stats = function(self)
--             end,
--             PostProcess = function(self)
--                 self.Primary.TrailingSound = nil
--             end,
--         },
--     },

--     ["Barrel"] = {
--         Slot = 3,
--         {
--             Key = "attachment_vm_sh_charlie725_barrel",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_barrel_long",
--             -- Bodygroups = {
--             --     ["tag_tip"] = 2,
--             --     ["tag_sight_barrel"] = 1,
--             --     ["tag_barrel_hide"] = 1,
--             -- },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_barrel_mid",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_barrel_sawnoff",
--             Stats = function(self)
--             end        
--         }
--     },

--     ["Guard"] = {
--         Slot = 4,
--         {
--             Key = "attachment_vm_sh_charlie725_guard",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_foreendlight",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_forendstable",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_forendtactical",
--             Stats = function(self)
--             end
--         },
--     },

--     ["Muzzle"] = {
--         Slot = 5,
--         {
--             Key = "no_muzzle"
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_choke",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },               
--         {
--             Key = "attachment_vm_sh_charlie725_comp",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },               
--         {
--             Key = "attachment_vm_sh_charlie725_muzzlebrake",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },               
--         {
--             Key = "attachment_vm_sh_charlie725_muzzlemelee",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },                          
--         {
--             Key = "attachment_vm_sh_charlie725_flashhider",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },         
--         {
--             Key = "attachment_vm_sh_charlie725_silencer01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },    
--         {
--             Key = "attachment_vm_sh_charlie725_silencer03",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },       
--         {
--             Key = "attachment_vm_sh_charlie725_silencer02",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1.2, 0), Angle()},
--                         [3] = {Vector(0, -3.4, 0), Angle()},
--                         [4] = {Vector(0, -14.65, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },                
--     },

--     ["Optic"] = {
--         Slot = 6,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.95)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0) --i know you tell me not to fuck with this but the dot being actually centered on the glass demands it xoxo
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.92)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.03, 0, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.93)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.03, 0, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -1.12)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.045, 0.015, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.004, 0, -0.95)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.046, 0.07, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.25)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.045, 0, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.2)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.2)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.04, 0.01, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.02, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.115, 0, -1.27)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.02, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.3715)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.022, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.264)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.018, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_thermal_east_tall",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.201)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.006, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.7735)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.0065, 0)
--                 self.HybridAimAngles = Angle(-0.04, 0.02, -45)
--                 self.HybridAimPos = Vector(-1.78, 0, -0.32)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.753)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.014, 0)
--             end
--         }, 
--         {
--             Key = "weapon_vm_scope_mike14_alt",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.Animations.Reload = self.Animations.reload_scope
--                 self.Animations.Reload_Empty = self.Animations.reload_empty_scope
--                 self.Animations.Inspect = self.Animations.inspect_scope
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3.5, -1.178)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.028, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_scope_vz",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
--             },
--             Stats = function(self)
--                 self.Animations.Reload = self.Animations.reload_scope
--                 self.Animations.Reload_Empty = self.Animations.reload_empty_scope
--                 self.Animations.Inspect = self.Animations.inspect_scope
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3.5, -1.109)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.017, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 3.5
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.91)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.01, 0)
--                 self.HybridAimAngles = Angle(-0.01, 0.02, 0)
--                 self.HybridAimPos = Vector(0,2,-2.15)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_rail"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 0, -0.84)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, -0.012, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 1.5
--                 self.HybridAimAngles = Angle(-0.04, 0.02, -45)
--                 self.HybridAimPos = Vector(-1.6, 0, -0.08)
--             end
--         }, 
--     },

--     ["Stock"] = {
--         Slot = 7,
--         {
--             Key = "attachment_vm_sh_charlie725_stock",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_stock_sawnoff",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_stocklight",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_stockstable",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_charlie725_stocktactical",
--             Stats = function(self)
--             end
--         },
--     },
    
--     ["Laser"] = {
--         Slot = 8,
--         {
--             Key = "no_laser"
--         },
--         {
--             Key = "attachment_vm_laser_cylinder01",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_cylinder02",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.4, 0.265, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_cylinder03",
--             VElement = {
--                 Bone = "tag_laser_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Bodygroups = {
--                 ["tag_laser"] = 1
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         }
--     },

--     ["Underbarrel"] = {
--         Slot = 9,
--         {
--             Key = "no_underbarrel",
--         },
--         {
--             Key = "attachment_vm_angledgrip_lod0",
--             VElement = {
--                 Bone = "tag_grip_attach",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
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
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip02_lod0",
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
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
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
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
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
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
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
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
--             VElement = {
--                 Bone = "tag_folding_grip",
--                 Position = Vector(0, 0, 0),
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
-- }