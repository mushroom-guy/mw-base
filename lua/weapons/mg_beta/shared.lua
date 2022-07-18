AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_beta", "VGUI/entities/mg_beta", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_sm_beta")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_xmag_offset"}

SWEP.PrintName = "PP19 Bizon"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Submachine Guns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_beta.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_beta.mdl")

SWEP.Slot = 2
SWEP.HoldType = "Rifle"
SWEP.Trigger = {
    PressedSound = Sound("mw19.beta.prefire"),
    ReleasedSound = Sound("mw19.beta.disconnector"),
    Time = 0.015
}

SWEP.Primary.Sound = Sound("mw19.beta.fire")
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 64
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 659  
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
            Layer = Sound("Atmo_SMG.Outside"),
            Reflection = Sound("Reflection_Pistol.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_SMG.Inside"),
            Reflection = Sound("Reflection_Pistol.Inside")
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
    Hip = 0.1, --accuracy while hip
    Ads = 0.033, --accuracy while aiming
    Increase = 0.032, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.09, --multiply the increase value by this amount while aiming
    Max = 1.15, --the cone size will not go beyond this size
    Decrease = 0.75, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 6215 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.4, 0.5}, --random value between the 2
    Horizontal = {-0.3, 0.5}, --random value between the 2
    Shake = 0.95, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 77777 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {19, 11}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 35, --in meters, damage scales within this distance
    DropOffStartRange = 10, --in meters, damage will start dropping off after this range
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.5, --how much damaged is multipled by when leaving a surface.
        MaxCount = 2, --how many times the bullet can penetrate.
        Thickness = 10, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 7.5
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0,100,-90),
    Pos = Vector(3,-2.5,-2)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 3, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(-5, 0, 0), Angles = Angle(40, 0, 0)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(0, 0, 1.5), Angles = Angle(10, 0, 0)}
        }
    },

    RecoilMultiplier = 0.25,
    KickMultiplier = 0.2,
    AimKickMultiplier = 0.75
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl"),
    Scale = 0.8,
    Force = 100,
    Sound = Sound("MW_Casings.9mm"),
    Offset = Vector(-2, 0, 0)
}


DEFINE_BASECLASS("mg_base")