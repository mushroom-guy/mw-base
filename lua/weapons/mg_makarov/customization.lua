AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("MW19_Makarov.Fire_S")
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

    {"att_perk", "att_vm_pi_mike_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_fastswap"},

    {"att_stock", "attachment_vm_pi_mike_stockl", "attachment_vm_pi_mike_stockh"},

    {"attachment_vm_pi_mike_mag", "attachment_vm_pi_mike_xmags", "attachment_vm_pi_mike_drummag"},
    
    {"attachment_vm_pi_mike_grip", "attachment_vm_pi_mike_pistolgrip01", 
    "attachment_vm_pi_mike_pistolgrip02", "attachment_vm_pi_mike_pistolgrip03"},

    {"att_muzzle", "att_vm_flashhider01_pstl", "att_vm_compensator01_pstl", "att_vm_muzzlebrake01_pstl", 
    "att_vm_silencer01_pstl", "att_vm_silencer02_pstl", "att_vm_silencer04_pstl", "att_vm_oil_filter_suppressor"},

    {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03"},

    {"attachment_vm_pi_mike_barrel", "attachment_vm_pi_mike_barsil", "attachment_vm_pi_mike_barlight", "attachment_vm_pi_mike_barauto"},

    {"att_laser", "att_vm_pi_mike_laser01", "att_vm_pi_mike_laser02", "att_vm_pi_mike_laser03"}
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
--     ["Slide"] = {
--         Slot = 3,
--         {
--             Key = "attachment_vm_pi_mike_barrel",
--         },
--         {
--             Key = "attachment_vm_pi_mike_barlight",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_barsil",
--             ExcludedAttachments = {
--                 ["Muzzle"] = {2,3,4,5,6,7,8}
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end
--         },      
--         {
--             Key = "attachment_vm_pi_mike_barauto",
--             Stats = function(self)
--             end
--         } 
--     },

--     ["Laser"] = {
--         Slot = 8,
--         {
--             Key = "no_laser",
--         },
--         {
--             Key = "attachment_vm_laser_pstl",
--             -- ExcludedAttachments = {
--             --     ["Foregrip"] = {2}
--             -- },
--             Bodygroups = {
--                 ["laserrail"] = 1
--             },
--               Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_pstl03",
--             -- ExcludedAttachments = {
--             --     ["Foregrip"] = {2}
--             -- },
--             Bodygroups = {
--                 ["laserrail"] = 1
--             },
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_pstl04",
--             -- ExcludedAttachments = {
--             --     ["Foregrip"] = {2}
--             -- },
--             Bodygroups = {
--                 ["laserrail"] = 1
--             },
--             Stats = function(self)
--             end
--         }
--     },

--     ["Optic"] = {
--         Slot = 7,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot01",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.5)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.5)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.5)
--             end
--         },  
--     },

--     ["Muzzle"] = {
--         Slot = 6,
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0, 0), Angle()},
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [4] = {Vector(0, 1.55, 0), Angle()}
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
--                         [4] = {Vector(0, 1.55, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },      
--     },

--     ["Pistol Grip"] = {
--         Slot = 5,
--         {
--             Key = "attachment_vm_pi_mike_grip",
--         },
--         {
--             Key = "attachment_vm_pi_mike_pistolgrip01",
--             Stats = function(self)
--             end
--         },        
--         {
--             Key = "attachment_vm_pi_mike_pistolgrip02",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_pistolgrip03",
--             Stats = function(self)
--             end
--         }
--     },
    
--     ["Magazine"] = {
--         Slot = 4,
--         {
--             Key = "attachment_vm_pi_mike_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_xmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_drummag",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Stock"] = {
--         Slot = 2,
--         {
--             Key = "no_stock",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_stockl",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike_stockh",
--             Stats = function(self)
--             end
--         }
--     },

-- ["Perk"] = {
--     Slot = 1,
--     {
--         Key = "no_perk",
--     },
--     {
--         Key = "perk_soh",
--         Stats = function(self)
--             self.Animations.Reload = self.Animations.Reload_Fast
--             self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
--             self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
--             self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
--             self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
--             self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
--         end
--     },
--     {
--         Key = "perk_fastmelee",
--         Stats = function(self)
--         end
--     },
--     {
--         Key = "perk_heavymelee",
--         Stats = function(self)
--         end
--     },
--     {
--         Key = "perk_fmj",
--         Stats = function(self)
--         end
--     }
-- }
-- }