AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_anovember94", "VGUI/entities/mg_anovember94", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_anovember94")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_vertbutawesome_offset"}

SWEP.PrintName = "AN-94"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_anovember94.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_anovember94.mdl")
SWEP.Trigger = {
    PressedSound = Sound("mw19.anovember94.fire.first"),
    ReleasedSound = Sound("mw19.anovember94.disconnector"),
    Time = 0.025
}

SWEP.Slot = 2
SWEP.HoldType = "Rifle"

SWEP.Primary.Sound = Sound("mw19.anovember94.fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 560  
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
            Layer = Sound("Atmo_AR5.Outside"),
            Reflection = Sound("Reflection_AR.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_AR.Inside"),
            Reflection = Sound("Reflection_Shotgun.Inside")
        }
    }
}

local hyperRPM = 1000

SWEP.Firemodes = {
    [1] = {
        Name = "Full Auto",
        OnSet = function()
            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = "2rnd Burst",
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.RPM = hyperRPM
            self.Primary.BurstRounds = 2
            self.Primary.BurstDelay = 0.2
            --self.Recoil.Shake = 2.5
            --self.ViewModelOffsets.KickMultiplier = 3
            --self.ViewModelOffsets.AdsKickMultiplier = 0

            return "Firemode_Semi"
        end
    },

}

SWEP.DisableCantedReload = false

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.53, --accuracy while hip
    Ads = 0.035, --accuracy while aiming
    Increase = 0.085, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 1.7, --the cone size will not go beyond this size
    Decrease = 0.24, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 56487 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {1, 1.5}, --random value between the 2
    Horizontal = {-1.75, 1.75}, --random value between the 2
    Shake = 1.15, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 8778456, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 1
}
SWEP.Bullet = {
    Damage = {25, 14}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 18, --in meters, damage will start dropping off after this range
    EffectiveRange = 45, --in meters, damage scales within this distance
    Range = 180, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.86, --how much damaged is multipled by when leaving a surface.
        MaxCount = 5, --how many times the bullet can penetrate.
        Thickness = 14, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Angles = Angle(0, 100, -90),
    Pos = Vector(4,-3,-2)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0.02)
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
    
    RecoilMultiplier = 0.5,
    KickMultiplier = 0.35,
    AimKickMultiplier = 1
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_shell_ar_lod0.mdl"),
    Scale = 0.85,
    Force = 100,
    Sound = Sound("MW_Casings.556")
}

DEFINE_BASECLASS("mg_base")
SWEP.bEnableMagPoseParam = true

function SWEP:PostDrawViewModel(vm, weapon, ply)
    BaseClass.PostDrawViewModel(self, vm, weapon, ply)
    
    if (self.bEnableMagPoseParam) then
        self:UpdateMagPoseParam(self:GetMaxClip1() - self:Clip1())
    end
end

function SWEP:AllowRuntimeMagPoseParam(allow)
    self.bEnableMagPoseParam = allow
end

local tiny = Vector(0.01, 0.01, 0.01)
local normal = Vector(1, 1, 1)

function SWEP:UpdateMagPoseParam(val)
    self.m_ViewModel:SetPoseParameter("bullets_offset", val)

    for b = 1, 30, 1 do
        local bone = "j_bullet0"..b

        -- if (b < 10) then
        --     bone = "j_bullet_0"..b
        -- end

        local bId = self:LookupBoneCached(self.m_ViewModel, bone)
        
        if (bId != nil) then
            self.m_ViewModel:ManipulateBoneScale(bId, self:GetMaxClip1() - (val + 1) < b && tiny || normal)
        end
    end
end

function SWEP:PrimaryAttack(fromFallback)
    if (self:GetFiremode() == 1) then
        if (self:GetSprayRounds() < 1) then
            self.Primary.RPM = hyperRPM
            --self.Recoil.Shake = 2.5
        else
            local original = weapons.GetStored(self:GetClass())
            self.Primary.RPM = original.Primary.RPM
            --self.Recoil.Shake = original.Recoil.Shake
        end
    end

    BaseClass.PrimaryAttack(self, fromFallback)
end