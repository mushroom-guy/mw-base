AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_tango21", "VGUI/entities/mg_tango21", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_tango21")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_vertpro_offset"}

SWEP.PrintName = "RAM-7"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_tango21.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_tango21.mdl")
SWEP.Trigger = {
    PressedSound = Sound("mw19.tango21.fire.first"),
    ReleasedSound = Sound("mw19.tango21.disconnector"),
    Time = 0.025
}

SWEP.Slot = 2
SWEP.HoldType = "TinyGun"

SWEP.Primary.Sound = Sound("mw19.tango21.fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 855  
SWEP.CanChamberRound = true  
  
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_rifle",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_AR3.Outside"),
            Reflection = Sound("Reflection_AR.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_AR.Inside"),
            Reflection = Sound("Reflection_AR.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Full Auto",
        OnSet = function()
            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = "Semi Auto",
        OnSet = function(self)
            self.Primary.Automatic = false
            --self.Primary.RPM = 450

            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.39, --accuracy while hip
    Ads = 0.021, --accuracy while aiming
    Increase = 0.065, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.095, --multiply the increase value by this amount while aiming
    Max = 1.35, --the cone size will not go beyond this size
    Decrease = 0.24, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 98796 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {1, 2.5}, --random value between the 2
    Horizontal = {-1.75, 2.75}, --random value between the 2
    Shake = 1.15, --camera shake
    AdsMultiplier = 0.17, --multiply the values by this amount while aiming
    Seed = 8778456, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 1
}

SWEP.Bullet = {
    Damage = {23, 12}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 16, --in meters, damage will start dropping off after this range
    EffectiveRange = 38, --in meters, damage scales within this distance
    Range = 180,
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.74, --how much damaged is multipled by when leaving a surface.
        MaxCount = 4, --how many times the bullet can penetrate.
        Thickness = 10, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 6.5
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0, 95, -90),
    Pos = Vector(-5,-3,7)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, -0.025, 0),
        Pos = Vector(-0.02, -0.35, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 3, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 1.5), Angles = Angle(10, -20, 0)}
        }
    },
    
    RecoilMultiplier = 0.3,
    KickMultiplier = 0.25,
    AimKickMultiplier = 0.75
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_shell_ar_lod0.mdl"),
    Scale = 0.7,
    Force = 100,
    Sound = Sound("MW_Casings.556")
}

DEFINE_BASECLASS("mg_base")