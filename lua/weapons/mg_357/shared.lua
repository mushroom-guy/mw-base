AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_pistol")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

require("mw_utils")
mw_utils.LoadInjectors(SWEP)  

if CLIENT then
    killicon.Add( "mg_357", "VGUI/entities/mg_357", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_pi_cpapa")
end

SWEP.Base = "mg_base"
 
SWEP.PrintName = ".357"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_357.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_357.mdl")


SWEP.Slot = 1
SWEP.HoldType = "Revolver"

SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_pistol",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
}

SWEP.Trigger = {
    PressedSound = Sound("MW19_357.Charge"),
    PressedAnimation = "Charge",
    Time = 0.075
}

SWEP.Primary.Sound = Sound("MW19_357.Fire")
SWEP.Primary.Ammo = "357"
SWEP.Primary.ClipSize = 6
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 150
SWEP.CanChamberRound = false
SWEP.CanDisableAimReload = true

SWEP.Reverb = {
    RoomScale = 50000, --(cubic hu)    
    --how big should an area be before it is categorized as 'outside'?
 
    Sounds = {  
        Outside = {  
            Layer = Sound("Atmo_Pistol_Mag.Outside"),
            Reflection = Sound("Reflection_Pistol.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_Shotgun.Inside"),
            Reflection = Sound("Reflection_Shotgun.Inside")
        }
    }
}
SWEP.Firemodes = {
    [1] = {
        Name = "Semi Auto",
        OnSet = function()
            return nil
        end
    },
}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 100,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}
  
SWEP.Cone = {
    Hip = 0.3, --accuracy while hip
    Ads = 0.085, --accuracy while aiming
    Increase = 0.08, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.25, --multiply the increase value by this amount while aiming
    Max = 2, --the cone size will not go beyond this size
    Decrease = 2, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 61543 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.2, 0.4}, --random value between the 2
    Horizontal = {-0.4, 0.4}, --random value between the 2
    Shake = 2.4, --camera shake
    AdsMultiplier = 4, --multiply the values by this amount while aiming
    Seed = 610312 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {100, 28}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 35, --in meters, damage scales within this distance
    DropOffStartRange = 12, --in meters, damage scales within this distance
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 0.5, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.95, --how much damaged is multipled by when leaving a surface.
        MaxCount = 6, --how many times the bullet can penetrate.
        Thickness = 14, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 15
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_pistol_offset",
    Angles = Angle(0, 90, -90),
    Pos = Vector(4.5, -3, -2.5)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, -4, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_pistol_offset",
        X = {
            [0] = {Pos = Vector(0, 2, -2), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(0, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(2, 0, 0), Angles = Angle(-30, -30, 0)},
            [1] = {Pos = Vector(-4, 0, 0), Angles = Angle(0, 30, 0)}
        }
    },
    
    RecoilMultiplier = 1,
    KickMultiplier = 1
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl"),
    Scale = 0.75,
    Force = 100,
    Sound = Sound("MW_Casings.9mm")
}