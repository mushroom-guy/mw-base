AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_shotgun")
PrecacheParticleSystem("AC_muzzle_shotgun_db")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
PrecacheParticleSystem("AC_muzzle_minigun_smoke_barrel")

SWEP.BulletList = {"j_shell_12ga_01", "j_shell_12ga_02"}

include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_romeo870", "VGUI/entities/mg_romeo870", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_sh_romeo870")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_wood_offset"}
SWEP.GripPoseParameters2 = {"grip_stockh_offset"}

SWEP.PrintName = "Model 680"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_romeo870.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_romeo870.mdl")
--[[SWEP.Trigger = {
    PressedSound = Sound(""),
    ReleasedSound = Sound(""),
    Time = 0.025
}]]

SWEP.DisableCantedReload = false
SWEP.Slot = 3
SWEP.HoldType = "Rifle"

SWEP.Primary.Sound = Sound("mw19.romeo870.fire")
SWEP.Primary.Ammo = "Buckshot"
SWEP.Primary.ClipSize = 8
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 175  
SWEP.CanChamberRound = true  
SWEP.CanDisableAimReload = false
SWEP.EmptyReloadRechambers = false
  
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_shotgun",
    ["MuzzleFlash_DB"] = "AC_muzzle_shotgun_db",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
    ["Overheating"] = "AC_muzzle_pistol_smoke_barrel", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_Shotgun.Outside"),
            Reflection = Sound("Reflection_Shotgun.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_Shotgun.Inside"),
            Reflection = Sound("Reflection_Shotgun.Inside")
        }
    }
}

SWEP.Firemodes = {

    [1] = {
        Name = "Pump-Action",
        OnSet = function(self)
            self.Primary.Automatic = false
            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_minigun_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 65,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 65 --degrees per second
}

SWEP.Cone = {
    Hip = 0.45, --accuracy while hip
    Ads = 0.45, --accuracy while aiming
    Increase = 0.085, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 2.5, --the cone size will not go beyond this size
    Decrease = 0.24, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 3658 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {4, 6.5}, --random value between the 2
    Horizontal = {-1.75, 2.75}, --random value between the 2
    Shake = 4, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 65947, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 0.56
}

SWEP.Bullet = {
    Damage = {110, 40}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 20, --in meters, damage scales within this distance
    DropOffStartRange = 15,
    Range = 40, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 6, --the amount of bullets to fire
    PhysicsMultiplier = 1.7, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.86, --how much damaged is multipled by when leaving a surface.
        MaxCount = 13, --how many times the bullet can penetrate.
        Thickness = 18, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 10
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0,100,-90),
    Pos = Vector(10,-1,-5)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0.03, 0, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 3, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(-3, -1, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, -2, 1.5), Angles = Angle(10, -10, 0)}
        }
    },
    
    RecoilMultiplier = 2.75,
    KickMultiplier = 1.3,
    AimKickMultiplier = 0.5 
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_sgcaldb_shell.mdl"),
    Scale = 0.35,
    Force = 150,
    SpinForce = 250,
    Sound = Sound("MW_Casings.Shotgun")
}

DEFINE_BASECLASS("mg_base")
-- function SWEP:PostDrawViewModel(vm, weapon, ply)
--     BaseClass.PostDrawViewModel(self, vm, weapon, ply)
    
--     local magModel = self:GetAttachmentModels("Mag")
--     if (IsValid(magModel)) then
--         self:RemoveBulletsBasedOnClip(magModel, self.BulletList)
--     end
-- end