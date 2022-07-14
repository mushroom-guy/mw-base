AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("MW19_M1911.Fire_S")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_Pistol_Mag_Sup.Outside"),
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

    {"att_perk", "att_vm_pi_mike1911_soh", "att_perk_fmj"},

    {"att_receiver", "attachment_vm_pi_mike1911_receiver_v5"},

    {"attachment_vm_pi_mike1911_v1_mag", "attachment_vm_pi_mike1911_mag_v5", "attachment_vm_pi_mike1911_mmags", "attachment_vm_pi_mike1911_xmags"},
    
    {"att_muzzle", "att_vm_flashhider01_pstl", "att_vm_compensator01_pstl", "att_vm_muzzlebrake01_pstl", "attachment_vm_pi_mike1911_muzzlebrake",
    "att_vm_silencer01_pstl", "att_vm_silencer02_pstl", "att_vm_silencer04_pstl", "att_vm_oil_filter_suppressor"},

    {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03"},

    {"attachment_vm_pi_mike1911_v1_slide", "attachment_vm_pi_mike1911_slide_v5", 
    "attachment_vm_pi_mike1911_barshort_v21",
    "attachment_vm_pi_mike1911_barshort", "attachment_vm_pi_mike1911_barlong", 
    "attachment_vm_pi_mike1911_v2_slide", "attachment_vm_pi_mike1911_barshort_v23"},

    {"att_laser", "att_vm_pi_mike1911_laser01", "att_vm_pi_mike1911_laser02", "att_vm_pi_mike1911_laser03"}
}

-- SWEP.Customization = {
--     ["Slide"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_pi_mike1911_v1_slide",
--             Bodygroups = {
--                 ["sights"] = 0
--             },
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_barlong",
--             Bodygroups = {
--                 ["sights"] = 2
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_barshort",
--             Bodygroups = {
--                 ["sights"] = 4
--             },
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_pi_mike1911_v2_slide",
--             Bodygroups = {
--                 ["sights"] = 6
--             },
--             Stats = function(self)
--             end
--         }
--     },

--     ["Laser"] = {
--         Slot = 6,
--         {
--             Key = "no_laser",
--         },
--         {
--             Key = "attachment_vm_laser_pstl",
--               Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_pstl03",
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_pstl04",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Optic"] = {
--         Slot = 4,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot01",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--             end
--         },  
--     },

--     ["Muzzle"] = {
--         Slot = 3,
--         {
--             Key = "no_muzzle"
--         },
--         {
--             Key = "attachment_vm_flashhider_psl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_pi_mike1911_muzzlebrake",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_compensator_pstl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },   
--         {
--             Key = "attachment_vm_oil_filter_suppressor",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },      
          
--         {
--             Key = "attachment_vm_silencer_pstl_02",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },        
--         {
--             Key = "attachment_vm_silencerpstl03",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--         {
--             Key = "attachment_vm_silencerpstl",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
    
--     ["Magazine"] = {
--         Slot = 5,
--         {
--             Key = "attachment_vm_pi_mike1911_v1_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_mmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_xmags",
--             Stats = function(self)
--             end
--         }
--     },

--     -- ["Camo"] = {
--     --     Slot = 7,
--     --     {
--     --         Key = "no_camo",
--     --     },
--     --     {
--     --         Key = "camo_jermasus",
--     --         Stats = function(self)
--     --         end
--     --     },
--     --     {
--     --         Key = "camo_digital",
--     --         Stats = function(self)
--     --         end
--     --     }
--     -- },
-- }