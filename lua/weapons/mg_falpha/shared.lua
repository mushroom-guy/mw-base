AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_falpha", "VGUI/entities/mg_falpha", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_falpha")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_vert_good_offset"}

SWEP.PrintName = "FR 5.56"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_falpha.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_falpha.mdl")

SWEP.Slot = 2
SWEP.HoldType = "Rifle"
SWEP.Trigger = {
    PressedSound = Sound("mw19.falpha.fire.first"),
    ReleasedSound = Sound("mw19.falpha.fire.disconnector"),
    Time = 0.025
}

SWEP.Primary.Sound = Sound("mw19.falpha.fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 1100  
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
            Layer = Sound("Atmo_AR.Outside"),
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
        Name = "Automatic",
        OnSet = function(self)
            self.Primary.Automatic = true

            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = "3rnd Burst",
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.BurstRounds = 3
            self.Primary.BurstDelay = 0.15

            return "Firemode_Auto"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 45,
    TemperatureThreshold = 125, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.31, --accuracy while hip
    Ads = 0.09, --accuracy while aiming
    Increase = 0.055, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.21, --multiply the increase value by this amount while aiming
    Max = 1.15, --the cone size will not go beyond this size
    Decrease = 0.7, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 48765 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.4, 0.85}, --random value between the 2
    Horizontal = {-0.8, 1.3}, --random value between the 2
    Shake = 0.75, --camera shake
    AdsMultiplier = 0.25, --multiply the values by this amount while aiming
    Seed = 489765, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 1
}

SWEP.Bullet = {
    Damage = {21, 12}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 15, --in meters, damage will start dropping off after this range
    EffectiveRange = 35, --in meters, damage scales within this distance
    Range = 180,
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.7, --how much damaged is multipled by when leaving a surface.
        MaxCount = 3, --how many times the bullet can penetrate.
        Thickness = 14, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Pos = Vector(-1.5,-7,-1)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 1, 1.55)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 2, 2), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(3, 0, 3), Angles = Angle(10, -20, 0)}
        }
    },

    RecoilMultiplier = 0.1,
    KickMultiplier = 0.2,
    AimKickMultiplier = 0.3
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_shell_ar_lod0.mdl"),
    Scale = 1.1,
    Force = 200,
    Sound = Sound("MW_Casings.338")
}

