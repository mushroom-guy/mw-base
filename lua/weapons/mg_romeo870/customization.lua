AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.romeo870.fire.s")
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
--     local bSup5 = self:HasAttachment("attachment_vm_ar_mike4_barsil")
--     local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_mag_v5")

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
--     local bSup5 = self:HasAttachment("attachment_vm_ar_mike4_barsil")
--     local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_mag_v5")

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
    {"att_perk", "attachment_vm_sh_romeo870_perk_soh", "att_perk_fmj"}, 

    {"attachment_vm_sh_romeo870_barrel", "attachment_vm_sh_romeo870_barrel_v2", "attachment_vm_sh_romeo870_heatguard_mp", "attachment_vm_sh_romeo870_barrel_long",
    "attachment_vm_sh_romeo870_barrel_sawn"},

    {"attachment_vm_sh_romeo870_pump", "attachment_vm_sh_romeo870_pumpalt", "attachment_vm_sh_romeo870_pump_v2", "attachment_vm_sh_romeo870_pump_wood", "attachment_vm_sh_romeo870_pump_custom"},

    {"att_magazine", "attachment_vm_sh_romeo870_mag"},

    {"att_ammo_default", "att_ammo_db", "att_ammo_flechette",
    "att_ammo_he", "att_ammo_slugs"},

    {"att_stock", "attachment_vm_sh_romeo870_stock_wood", 
    "attachment_vm_sh_romeo870_stock_pistolgrip", "att_vm_romeo870_stock_heavy01", 
    "att_vm_romeo870_stock_heavy02", "att_vm_romeo870_stock_light01", "att_vm_romeo870_stock_medium01"},

    {"att_muzzle", "att_vm_compensator_shgn01", "att_vm_compensator_shgn02", "att_vm_flashhider01_shgn", "att_vm_muzzlebrake_shgn01", 
    "att_vm_breacher02_shgn", "attachment_vm_sh_romeo870_shtgnsilencer", "attachment_vm_sh_romeo870_silencer02", 
    "attachment_vm_sh_romeo870_silencer03"},

    {"att_sight", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_reflex_west04", "att_vm_2x_west01",
    "att_vm_4x_east01_tall", "att_vm_4x_west01_tall", "att_vm_4x_west02_tall",
    "att_vm_scope_mike14", "att_vm_scope_vz"},
    
    {"attachment_vm_sh_romeo870_receiver", "attachment_vm_sh_romeo870_receiver_v2"},

    {"att_laser", "attachment_vm_sh_romeo870_laser01", "attachment_vm_sh_romeo870_laser02", "attachment_vm_sh_romeo870_laser03"},
    
    {"att_grip", "attachment_vm_sh_romeo870_angledgrip01", "attachment_vm_sh_romeo870_angledgrip02", "attachment_vm_sh_romeo870_stubbygrip01", 
    "attachment_vm_sh_romeo870_stubbygrip02", "attachment_vm_sh_romeo870_vertgrip01", "attachment_vm_sh_romeo870_vertgrip02", 
    "attachment_vm_sh_romeo870_vertgrip03"},
}

-- SWEP.Customization = {
--     ["Perk"] = {
--         Slot = 1,
--         {
--             Key = "no_perk",
--         },
--         {
--             Key = "perk_soh",
--             Stats = function(self)
--                 self.Animations.Reload_Start = self.Animations.reload_start_fast
--                 self.Animations.Reload_Loop = self.Animations.reload_loop_fast
--                 self.Animations.Reload_End = self.Animations.reload_end_fast
--                 self.Animations.Reload_End_Empty = self.Animations.reload_end_empty_fast
--                 self.Animations.Reload = self.Animations.reload_fast
--                 self.Animations.Reload_Empty = self.Animations.reload_empty_fast
--                 self.DisableCantedReload = true
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

--     ["Mag"] = {
--         Slot = 3,
--         {
--             Key = "no_perk",
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_mag",
--             Bodygroups = {
--                 ["tag_mag_attach"] = 1
--             },
--             ExcludedAttachments = {
--                 ["Barrel"] = {2,3,4}
--             },
--             Stats = function(self)
--                 self.DisableCantedReload = false
--                 self.EmptyReloadRechambers = true
--             end,
--             PostProcess = function(self)
--                 self.Animations.Reload_Start = nil
--                 self.Animations.Reload_Loop = nil
--                 self.Animations.Reload_End = nil
--                 self.Animations.Reload_EndEmpty = nil
--             end,
--         },
--     },

--     ["Barrel"] = {
--         Slot = 4,
--         {
--             Key = "attachment_vm_sh_romeo870_barrel",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_heatguard_mp",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_barrel_long",
--             Bodygroups = {
--                 ["tag_fsight"] = 7,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_barrel_sawn",
--             Bodygroups = {
--                 ["tag_fsight"] = 4,
--                 ["tag_laser"] = 8,
--             },
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
--             Key = "attachment_vm_sh_romeo870_choke",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_compensator_shgn01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_flashhider_shtgn01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },             
--         {
--             Key = "attachment_vm_muzzlebrake_shgn01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_muzzlemelee_shgn01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },        
--         {
--             Key = "attachment_vm_sh_romeo870_shtgnsilencer",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },                               
--         {
--             Key = "attachment_vm_sh_romeo870_silencer03",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },       
--         {
--             Key = "attachment_vm_sh_romeo870_silencer02",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 6, 0), Angle()},
--                         [4] = {Vector(0, -2.8, 0), Angle()}
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
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.75)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0.1, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.65)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.65)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.8)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.73)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.95)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.85)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.9)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.1, 0.1, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.8)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.1, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.135, 1, -1.091)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.1, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -1.195)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -1.085)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--             end
--         },
--         {
--             Key = "attachment_vm_thermal_east_tall",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 1, -1.04)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 1, -0.6)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--                 self.HybridAimAngles = Angle(0.15, 0, -45)
--                 self.HybridAimPos = Vector(-1.65, 0, -0.05)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 1, -0.59)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 1, -0.745)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--                 self.HybridAimAngles = Angle(0.1, 0.1, 0)
--                 self.HybridAimPos = Vector(0.05,1.5, -1.85)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_fsight"] = 1,
--                 ["tag_bsight"] = 1,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.02, 1, -0.67)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 1.5
--                 self.HybridAimAngles = Angle(0.15, 0, -45)
--                 self.HybridAimPos = Vector(-1.5, 1, 0.2)
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

--     ["Stock"] = {
--         Slot = 9,
--         {
--             Key = "attachment_vm_sh_romeo870_stock",
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_stock_wood",
--             Stats = function(self)
--                 self:SetGripPoseParameter2("grip_stockh_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_stock_heavy02",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_light01",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_stock_heavy",
--             Bodygroups = {
--                 ["tag_stock_adapter"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_stock_pistolgrip",
--             Stats = function(self)
--                 self.Animations.Melee = self.Animations.melee_nostock
--                 self.Animations.Melee_Hit = self.Animations.melee_hit_nostock
--             end
--         },
--     },

--     ["Underbarrel"] = {
--         Slot = 8,
--         {
--             Key = "no_underbarrel",
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_pump_custom",
--             Bodygroups = {
--                 ["pump"] = 1,
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_romeo870_pump_wood",
--             Bodygroups = {
--                 ["pump"] = 1,
--             },
--             Stats = function(self)
--                 self:SetGripPoseParameter("grip_wood_offset")
--             end
--         },
--         {
--             Key = "attachment_vm_angledgrip_lod0",
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--             Bodygroups = {
--                 ["pump"] = 2,
--             },
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
--                 self:SetGripPoseParameter("grip_ang_offset")
--             end
--         },
--     },
-- }