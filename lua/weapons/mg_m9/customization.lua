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

    {"att_perk", "att_vm_pi_mike9_soh", "att_perk_fmj"},

    {"att_receiver", "attachment_vm_pi_mike9_receiver_v2"},

    {"attachment_vm_pi_mike9_mag", "attachment_vm_pi_mike9_xmags", "attachment_vm_pi_mike9_xmagslrg", "attachment_vm_pi_mike9_xmagslrg_v2"},
    
    {"attachment_vm_pi_mike9_pgrip", "attachment_vm_pi_mike9_pgrip_v2", "attachment_vm_pi_mike9_pstlgrpcust_v2",
     "attachment_vm_pi_mike9_pstlgrpcust", "attachment_vm_pi_mike9_pstlgrplght"},

    {"att_grip", "attachment_vm_pi_mike9_gripvert"},

    {"att_stock", "attachment_vm_pi_mike9_stock"},

    {"att_muzzle", "att_vm_flashhider01_pstl", "att_vm_compensator01_pstl", "att_vm_muzzlebrake01_pstl", "attachment_vm_pi_mike9_compensator",
    "att_vm_silencer01_pstl", "att_vm_silencer02_pstl", "att_vm_silencer04_pstl", "att_vm_oil_filter_suppressor"},

    {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_4x_east01_tall", "att_vm_4x_west01_tall", "attachment_vm_pi_mike9_scope"},

    {"attachment_vm_pi_mike9_barrel", "attachment_vm_pi_mike9_barrel_black", 
    "attachment_vm_pi_mike9_barlong" , "attachment_vm_pi_mike9_barlight",
    "attachment_vm_pi_mike9_barauto", "attachment_vm_pi_mike9_barauto_v2"},

    {"att_laser", "att_vm_pi_mike9_laser01", "att_vm_pi_mike9_laser02", "att_vm_pi_mike9_laser03"}
}


-- SWEP.Customization = {
--     ["Slide"] = {
--         Slot = 3,
--         {
--             Key = "attachment_vm_pi_mike9_barrel",
--         },
--         {
--             Key = "attachment_vm_pi_mike9_barauto",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_barlight",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_barlong",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_barrel_black",
--             Stats = function(self)
--             end
--         }
--     },
    
--     ["Stock"] = {
--         Slot = 1,
--         {
--             Key = "no_stock",
--         },
--         {
--             Key = "attachment_vm_pi_mike9_stock",
--             Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_stock.mdl"),
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = Vector(0.15, 0, 0)
--             end
--         },
--     },
    
--     ["Laser"] = {
--         Slot = 9,
--         {
--             Key = "no_laser",
--         },
--         {
--             Key = "attachment_vm_laser_pstl",
--             ExcludedAttachments = {
--                 ["Foregrip"] = {2}
--             },
--               Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_pstl03",
--             ExcludedAttachments = {
--                 ["Foregrip"] = {2}
--             },
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_pstl04",
--             ExcludedAttachments = {
--                 ["Foregrip"] = {2}
--             },
--             Stats = function(self)
--             end
--         }
--     },

--     ["Pistol Grip"] = {
--         Slot = 4,
--         {
--             Key = "no_pistgrip",
--         },
--         {
--             Key = "attachment_vm_pi_mike9_pstlgrpcust",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_pstlgrplght",
--             Stats = function(self)
--             end
--         }
--     },    

--     ["Foregrip"] = {
--         Slot = 6,
--         {
--             Key = "no_fgrip",
--         },
--         {
--             Key = "attachment_vm_pi_mike9_gripvert",
--             Stats = function(self)
--                 self.Recoil.Shake = 0.45

--                 if (!self:HasAttachment("attachment_vm_pi_mike9_stock")) then
--                     self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.15, 0, 0)
--                 end
--             end
--         },
--     },

--     ["Optic"] = {
--         Slot = 5,
--         {
--             Key = "no_optic",
--         },
--         {
--             Key = "attachment_vm_minireddot01",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--             self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.95)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.9)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.95)
--             end
--         }, 
--         {
--             Key = "attachment_vm_reflex_west02_lod0",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.15)
--             end
--         },         
--         {
--             Key = "attachment_vm_holo_west_lod0",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             VElement = {
--                 Bone = "tag_scope",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.6)
--             end
--         },         
--         {
--             Key = "attachment_vm_holo_east",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             VElement = {
--                 Bone = "tag_scope",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.015, 0, -1.48)
--             end
--         },         
--         {
--             Key = "attachment_vm_reflex_east02_lod0",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.2)
--             end
--         },         
--         {
--             Key = "attachment_vm_reflex_east",
--             Bodygroups = {
--                 ["rail"] = 1
--             },   
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.5)
--             end
--         },     
--         {
--             Key = "attachment_vm_4x_east",
--             Bodygroups = {
--                 ["rail"] = 1
--             },
--             VElement = {
--                 Bone = "tag_scope",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                     }
--                 }
--             },   
--              Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.11, 0, -1.38)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west",
--             Bodygroups = {
--                 ["rail"] = 1
--             }, 
--             VElement = {
--                 Bone = "tag_scope",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                     }
--                 }
--             },  
--              Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 0, -1.48)
--             end
--         },        
--         {
--             Key = "attachment_vm_4x_west02",
--             Bodygroups = {
--                 ["rail"] = 1
--             },
--             VElement = {
--                 Bone = "tag_scope",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                     }
--                 }
--             },   
--              Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.01, 0, -1.37)
--             end
--         }
--     },

--     ["Muzzle"] = {
--         Slot = 7,
--                 {
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_muzzlebrake_pstl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },         
--         {
--             Key = "attachment_vm_pi_mike9_compensator",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.75, 0), Angle()}
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.4, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self) 
--             end 
--         },     
--     },

--     ["Perk"] = {
--         Slot = 2,
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
--         Slot = 8,
--         {
--             Key = "attachment_vm_pi_mike9_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_xmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike9_xmagslrg",
--             Stats = function(self)
--             end
--         }
--     },

--     -- ["Camo"] = {
--     --     Slot = 10,
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

