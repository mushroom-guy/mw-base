AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.dpapa12.fire.s")
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
    {"att_perk", "attachment_vm_sh_dpapa12_perk_soh", "att_perk_hip"}, 

    {"attachment_vm_sh_dpapa12_barrel", "attachment_vm_sh_dpapa12_barlong", "attachment_vm_sh_dpapa12_barmid",
    "attachment_vm_sh_dpapa12_barshort"},

    {"attachment_vm_sh_dpapa12_pump", "attachment_vm_sh_dpapa12_pump_tactical", "attachment_vm_sh_dpapa12_pump_stable",
    "attachment_vm_sh_dpapa12_pump_light"},

    {"att_ammo", "att_ammo_db", "att_ammo_flechette",
    "att_ammo_he", "att_ammo_slugs"},

    {"att_muzzle", "attachment_vm_sh_dpapa12_choke", 
    "attachment_vm_sh_dpapa12_flashhider", "attachment_vm_sh_dpapa12_muzzlebrake", 
    "attachment_vm_sh_dpapa12_muzzlemelee", "attachment_vm_sh_dpapa12_silencer01", 
    "attachment_vm_sh_dpapa12_silencer02", "attachment_vm_sh_dpapa12_silencer03"},

    {"att_sight", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_reflex_west04", 
    "att_vm_hybrid_west03", "att_vm_4x_east01_tall",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall",
    "att_vm_scope_mike14", "att_vm_scope_vz"},

    {"att_laser", "attachment_vm_sh_dpapa12_laser01", "attachment_vm_sh_dpapa12_laser02", "attachment_vm_sh_dpapa12_laser03"},

    {"attachment_vm_sh_dpapa12_grip"},
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
--                 self.Animations.Reload_Start.Fps = self.Animations.Reload_Start.Fps * 1.25
--                 self.Animations.Reload_Start_Onebullet.Fps = self.Animations.Reload_Start_Onebullet.Fps * 1.25
--                 self.Animations.Reload_Loop.Fps = self.Animations.Reload_Loop.Fps * 1.25
--                 self.Animations.Reload_End.Fps = self.Animations.Reload_End.Fps * 1.25
--                 self.Animations.Reload_End_Empty.Fps = self.Animations.Reload_End_Empty.Fps * 1.25
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
--                 self.Projectile = nil
--                 self.Primary.TrailingSound = nil
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
--             Key = "attachment_vm_sh_dpapa12_barrel",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_barmid",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_barlong",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_barshort",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Muzzle"] = {
--         Slot = 4,
--         {
--             Key = "no_muzzle"
--         },                                          
--         {
--             Key = "attachment_vm_sh_dpapa12_choke",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_comp",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_muzzlebrake",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_muzzlemelee",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_flashhider",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_silencer01",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_silencer02",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },             
--         {
--             Key = "attachment_vm_sh_dpapa12_silencer03",
--             Bodygroups = {
--                 ["tag_tip"] = 1,
--             },
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Barrel"] = {
--                         [2] = {Vector(0, 1, 0), Angle()},
--                         [3] = {Vector(0, 1, 0), Angle()},
--                         [4] = {Vector(0, 1, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },             
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.25)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0) --i know you tell me not to fuck with this but the dot being actually centered on the glass demands it xoxo
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.3)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west02",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.15)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.25)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.1, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_east02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.05)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_west04",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.1)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },  
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.15)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.167, 0.035, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_4x_east_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.11, 0, -0.07)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.185)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02_tall",
--             Bodygroups = {
--                 ["tag_sight"] = 1,
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.08)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.01)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_hybrid",
--             Bodygroups = {
--                 ["tag_sight"] = 2,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.41)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--                 self.HybridAimAngles = Angle(0, 0, -45)
--                 self.HybridAimPos = Vector(-1.75, 2.5, 0.9)
--             end
--         }, 
--         {
--             Key = "attachment_vm_thermal_west_01",
--             Bodygroups = {
--                 ["tag_sight"] = 2,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.43)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west",
--             Bodygroups = {
--                 ["tag_sight"] = 2,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.275)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.035, 0)
--                 self.HybridAimAngles = Angle(-0.01, 0.02, 0)
--                 self.HybridAimPos = Vector(0,1.5,-0.9)
--             end
--         }, 
--         {
--             Key = "attachment_vm_hybrid_west03",
--             Bodygroups = {
--                 ["tag_sight"] = 2,
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
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 0, 0.355)
--                 self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, -0.012, 0)
--                 self.Zoom.Blur.EyeFocusDistance = 1.5
--                 self.HybridAimAngles = Angle(0, 0, -45)
--                 self.HybridAimPos = Vector(-1.55, 2.5, 1.17)
--             end
--         }, 
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
--                     }
--                 }
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
--                     }
--                 }
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
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.LaserAimAngles = Angle(-0.3, 0.2, -45)
--                 self.LaserAimPos = Vector(-2, 0, 0)
--             end
--         }
--     },

--     ["Pump"] = {
--         Slot = 7,
--         {
--             Key = "attachment_vm_sh_dpapa12_pump",
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_pump_light",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_pump_stable",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_sh_dpapa12_pump_tactical",
--             Stats = function(self)
--             end
--         },
--     },

--     ["Grip"] = {
--         Slot = 8,
--         {
--             Key = "attachment_vm_sh_dpapa12_grip",
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby02_dpapa12",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_vertgrip_stubby04_dpapa12",
--             Stats = function(self)
--             end
--         }
--     },
-- }