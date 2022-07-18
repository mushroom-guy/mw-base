AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_shotgun")
PrecacheParticleSystem("AC_muzzle_shotgun_db")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
PrecacheParticleSystem("AC_muzzle_minigun_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_charlie725", "VGUI/entities/mg_charlie725", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_sh_charlie725")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset"}

SWEP.PrintName = "725"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_charlie725.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_charlie725.mdl")
SWEP.Trigger = {
    PressedSound = Sound("mw19.charlie725.fire.first"),
    ReleasedSound = Sound("mw19.charlie725.disconnector"),
    Time = 0.025
}

SWEP.Slot = 3 
SWEP.HoldType = "Rifle"

SWEP.Primary.Sound = Sound("mw19.charlie725.fire")
SWEP.Primary.Ammo = "Buckshot"
SWEP.Primary.ClipSize = 2
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 560  
SWEP.CanChamberRound = false  
SWEP.CanDisableAimReload = true
  
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
        Name = "Break-Action",
        OnSet = function(self)
            self.Primary.Automatic = false
            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_minigun_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 75,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.5, --accuracy while hip
    Ads = 0.5, --accuracy while aiming
    Increase = 0.085, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 1.7, --the cone size will not go beyond this size
    Decrease = 0.24, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 9879 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {4, 6.5}, --random value between the 2
    Horizontal = {-1.75, 2.75}, --random value between the 2
    Shake = 7, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 79852, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 1.75
}
SWEP.Bullet = {
    Damage = {132, 51}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 20, --in meters, damage scales within this distance
    DropOffStartRange = 20,
    Range = 40, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 6, --the amount of bullets to fire
    PhysicsMultiplier = 1.7, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.97, --how much damaged is multipled by when leaving a surface.
        MaxCount = 0, --how many times the bullet can penetrate.
        Thickness = 16, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Bone = "tag_sling",
    Angles = Angle(0,100,-90),
    Pos = Vector(7,-2,-9)
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
            [0] = {Pos = Vector(0, 3, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 1.5), Angles = Angle(10, -20, 0)}
        }
    },
    
    RecoilMultiplier = 6.16,
    KickMultiplier = 3.5,
    AimKickMultiplier = 0.45
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_sgcaldb_shell.mdl"),
    Scale = 0.35,
    Force = 25,
    SpinForce = 0,
    Sound = Sound("MW_Casings.Shotgun")
}

DEFINE_BASECLASS("mg_base")

SWEP.bShowShell1 = true
SWEP.bShowShell2 = true

function SWEP:Reload(fromFallback)
    local bWasReloading = self:GetIsReloading()
    BaseClass.Reload(self, fromFallback)
    
    if ((SERVER && !game.SinglePlayer()) || !IsFirstTimePredicted()) then
        return
    end

    if (self:GetIsReloading() && !bWasReloading) then
        self:ShellRemove()
    end
end

local normal = Vector(1, 1, 1)
local tiny = Vector(0.001, 0.001, 0.001)

function SWEP:ShellRemove()
    if (CLIENT) then
        local shell1 = self:LookupBoneCached(self.m_ViewModel, "j_shell1_fired")
        local shell2 = self:LookupBoneCached(self.m_ViewModel, "j_shell2_fired")

        self.m_ViewModel:ManipulateBoneScale(shell1, self.bShowShell1 && normal || tiny)
        self.m_ViewModel:ManipulateBoneScale(shell2, self.bShowShell2 && normal || tiny)
    end

    if (SERVER) then
        self:CallOnClient("ShellRemove")
    end
end

function SWEP:PostDrawViewModel(vm, weapon, ply)
    BaseClass.PostDrawViewModel(self, vm, weapon, ply)

    if (self:Clip1() > 1) then
        self.bShowShell1 = true
    end

    if (self:Clip1() > 0) then
        self.bShowShell2 = true
    end
end