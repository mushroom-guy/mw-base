AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("MW19_GLOCK.Fire_S")
    self.Reverb.Sounds.Outside.Layer = Sound("Atmo_Pistol_Mag_Sup.Outside")
    self.Reverb.Sounds.Outside.Reflection = Sound("Reflection_ARSUP.Outside")
    self.Reverb.Sounds.Inside.Layer = Sound("Atmo_Pistol_Sup.Inside")
    self.Reverb.Sounds.Inside.Reflection = Sound("Reflection_ARSUP.Inside")
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end 
 
SWEP.Customization = {
    {"att_perk", "att_vm_pi_golf21_soh", "att_perk_fmj"}, 

    {"att_stock", "att_vm_pi_golf21_stock"},

    {"att_receiver", "att_vm_pi_golf21_receiver_v2", "att_vm_pi_golf21_receiver_v3"},
    
    {"att_vm_pi_golf21_slide", "att_vm_pi_golf21_slide_v2", "att_vm_pi_golf21_slide_black", "att_vm_pi_golf21_slide_long", "att_vm_pi_golf21_slide_auto"},

    {"att_muzzle", "att_vm_flashhider01_pstl", "att_vm_compensator01_pstl", "att_vm_muzzlebrake01_pstl", "attachment_vm_pi_mike1911_muzzlebrake",
    "att_vm_silencer01_pstl", "att_vm_silencer02_pstl", "att_vm_silencer04_pstl", "att_vm_oil_filter_suppressor"},

    {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03"},

    {"att_vm_pi_golf21_mag", "att_vm_pi_golf21_mag_v2", "att_vm_pi_golf21_mag_xmags", "att_vm_pi_golf21_mag_xxmags"},

    {"att_laser", "att_vm_laser01_pstl", "att_vm_laser02_pstl", "att_vm_laser03_pstl"}
}

--[[SWEP.Customization = {
    ["Slide"] = {
        Slot = 3,
        {
            Key = "attachment_vm_pi_golf21_slide",
        },
        {
            Key = "attachment_vm_pi_golf21_slide_black",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_pi_golf21_slide_long",
            Stats = function(self)
            end
        },       
        {
            Key = "attachment_vm_pi_golf21_slide_auto",
            Stats = function(self)
            end
        }
    },

    ["Stock"] = {
        Slot = 2,
        {
            Key = "no_stock",
        },
        {
            Key = "attachment_vm_pi_golf21_stock",
            Stats = function(self)
            end
        },
    },  

    ["Optic"] = {
        Slot = 5,
        {
            Key = "no_sight",
        },
        {
            Key = "attachment_vm_minireddot01",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.45)
            end
        },
        {
            Key = "attachment_vm_minireddot02",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.45)
            end
        },      
        {
            Key = "attachment_vm_minireddot03",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.45)
            end
        },  
    },

    ["Laser"] = {
        Slot = 7,
        {
            Key = "no_laser",
        },
        {
            Key = "attachment_vm_laser_pstl",
              Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_laser_pstl03",
            Stats = function(self)
            end
        },       
        {
            Key = "attachment_vm_laser_pstl04",
            Stats = function(self)
            end
        }
    },

["Muzzle"] = {
    Slot = 4,
    {
        Key = "no_muzzle"
    },
    {
        Key = "attachment_vm_flashhider_psl01",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
            self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
        end 
    },              
    {
        Key = "attachment_vm_muzzlebrake_pstl01",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
        end 
    },        
    {
        Key = "attachment_vm_compensator_pstl01",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
        end 
    },     
    {
        Key = "attachment_vm_oil_filter_suppressor",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
            doSuppressorStats(self)
        end 
    },          
    {
        Key = "attachment_vm_silencer_pstl_02",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
            doSuppressorStats(self)
        end 
    },        
    {
        Key = "attachment_vm_silencerpstl03",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
            doSuppressorStats(self)
        end 
    },
    {
        Key = "attachment_vm_silencerpstl",
        VElement = {
            Bone = "tag_silencer",
            Position = Vector(0, 0, 0),
            Angles = Angle(),
            Offsets = { 
                ["Slide"] = {
                    [2] = {Vector(0, 0, 0), Angle()},
                    [3] = {Vector(0, 1, 0), Angle()},
                    [4] = {Vector(0, 0, 0), Angle()}
                }
            }
        },
        Stats = function(self)
            doSuppressorStats(self)
        end 
    },  
},

    ["Perk"] = {
        Slot = 1,
        {
            Key = "no_perk",
        },
        {
            Key = "perk_soh",
            Stats = function(self)
                self.Animations.Reload = self.Animations.Reload_Fast
                self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
                self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
                self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
                self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
                self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
            end
        },
        {
            Key = "perk_fastmelee",
            Stats = function(self)
            end
        },
        {
            Key = "perk_heavymelee",
            Stats = function(self)
            end
        },
        {
            Key = "perk_fmj",
            Stats = function(self)
            end
        }
    },
    
    ["Magazine"] = {
        Slot = 6,
        {
            Key = "attachment_vm_pi_golf21_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_pi_golf21_mag_xmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_pi_golf21_mag_xmags2",
            Stats = function(self)
            end
        }
    },

    -- ["Camo"] = {
    --     Slot = 8,
    --     {
    --         Key = "no_camo",
    --     },
    --     {
    --         Key = "camo_jermasus",
    --         Stats = function(self)
    --         end
    --     },
    --     {
    --         Key = "camo_digital",
    --         Stats = function(self)
    --         end
    --     }
    -- },
}
]]