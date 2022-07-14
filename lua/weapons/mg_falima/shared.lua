AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_falima", "VGUI/entities/mg_falima", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_falima")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset"}

SWEP.PrintName = "FAL"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_falima.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_falima.mdl")

SWEP.Slot = 2
SWEP.HoldType = "Rifle"
SWEP.Trigger = {
    PressedSound = Sound("mw19.falima.fire.first"),
    ReleasedSound = Sound("mw19.falima.fire.disconnector"),
    Time = 0.025
}

SWEP.Primary.Sound = Sound("mw19.falima.fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 20
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 650  
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
            Layer = Sound("Atmo_br1.Outside"),
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
        Name = "Semi Auto",
        OnSet = function(self)
            return "Firemode_Semi"
        end
    },

    [2] = {
        Name = "3rnd Burst",
        OnSet = function(self)
            self.Primary.BurstRounds = 3
            self.Primary.BurstDelay = 0.2

            return "Firemode_Auto"
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
    Hip = 0.57, --accuracy while hip
    Ads = 0.03, --accuracy while aiming
    Increase = 0.12, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.075, --multiply the increase value by this amount while aiming
    Max = 2.2, --the cone size will not go beyond this size
    Decrease = 0.8, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 95235 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {1, 3.5}, --random value between the 2
    Horizontal = {-2, 2}, --random value between the 2
    Shake = 1, --camera shake
    AdsMultiplier = 0.25, --multiply the values by this amount while aiming
    Seed = 67498 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {50, 20}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 20, --in meters, damage will start dropping off after this range
    EffectiveRange = 65, --in meters, damage scales within this distance
    Range = 180, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.95, --how much damaged is multipled by when leaving a surface.
        MaxCount = 6, --how many times the bullet can penetrate.
        Thickness = 30, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 7
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0, 95, -90),
    Pos = Vector(3,-5,-3)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 0, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(3, 0, 0), Angles = Angle(10, -20, 0)}
        }
    },

    RecoilMultiplier = 1.15,
    KickMultiplier = 2,
    AimKickMultiplier = 0.15
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_shell_ar_lod0.mdl"),
    Scale = 1.1,
    Force = 200,
    Sound = Sound("MW_Casings.338"),
    Offset = Vector(0, 1, 0)
}

