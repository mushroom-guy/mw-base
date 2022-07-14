AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_pistol")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua") 
include("customization.lua")

require("mw_utils")
mw_utils.LoadInjectors(SWEP)   
    
if CLIENT then
    killicon.Add( "mg_glock", "VGUI/entities/mg_glock", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_pi_golf21")
end
 
SWEP.Base = "mg_base"

SWEP.PrintName = "X16" 
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true 
SWEP.VModel = Model("models/viper/mw/weapons/v_glock.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_glock.mdl")
SWEP.Trigger = {
    PressedSound = Sound("MW19_GLOCK.Fire.First"),
    ReleasedSound = Sound("MW19_GLOCK.Fire.Disconnector"),
    Time = 0.025
}
SWEP.Slot = 1
SWEP.HoldType = "Pistol"

SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_pistol",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection",
}

SWEP.Primary.Sound = Sound("MW19_GLOCK.Fire")
SWEP.Primary.Ammo = "Pistol" 
SWEP.Primary.ClipSize = 13
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 600
SWEP.CanChamberRound = true

SWEP.Reverb = {
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_Pistol.Outside"),
            Reflection = Sound("Reflection_Pistol.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_Pistol.Inside"),
            Reflection = Sound("Reflection_Pistol.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Semi Auto",
        OnSet = function()
            return nil
        end
    }
}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 20,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 40 --degrees per second
}

SWEP.Cone = {
    Hip = 0.1,--accuracy while hip
    Ads = 0.045, --accuracy while aiming
    Increase = 0.06, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.13, --multiply the increase value by this amount while aiming
    Max = 0.8, --the cone size will not go beyond this size
    Decrease = 0.75, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 3475 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.2, 0.7}, --random value between the 2
    Horizontal = {-0.1, 0.2}, --random value between the 2
    Shake = 2, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 610312 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {31, 14}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 22, --in meters, damage scales within this distance
    DropOffStartRange = 7,
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.6, --how much damaged is multipled by when leaving a surface.
        MaxCount = 3, --how many times the bullet can penetrate.
        Thickness = 6, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Angles = Angle(0, 0, 180),
    Pos = Vector(12, -1.5, -3)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0.15, 0, 0)
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
            [0] = {Pos = Vector(2, -3, 0), Angles = Angle(-30, -60, 0)},
            [1] = {Pos = Vector(-4, 0, 0), Angles = Angle(0, 30, 0)}
        }
    },
    RecoilMultiplier = 1,
    KickMultiplier = 1
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl"),
    Scale = 0.75,
    Force = 150,
    Sound = Sound("MW_Casings.9mm")
}