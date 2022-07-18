AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_pistol")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_makarov", "VGUI/entities/mg_makarov", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_pi_mike")
end

SWEP.Base = "mg_base"

SWEP.PrintName = "Sykov"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_makarov.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_makarov.mdl")
SWEP.Trigger = {
    PressedSound = Sound("MW19_M1911.Fire.First"),
    ReleasedSound = Sound("MW19_M1911.Fire.Disconnector"),
    Time = 0.025
}
SWEP.Slot = 1
SWEP.HoldType = "Pistol"

SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_pistol",
    ["MuzzleFlash_Suppressor"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection",
}

SWEP.Primary.Sound = Sound("MW19_Makarov.Fire")
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.ClipSize = 12
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
    Hip = 0.25, --accuracy while hip
    Ads = 0.075, --accuracy while aiming
    Increase = 0.15, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.17, --multiply the increase value by this amount while aiming
    Max = 0.85, --the cone size will not go beyond this size
    Decrease = 0.43, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 5555 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0, 0.1}, --random value between the 2
    Horizontal = {-1, 2}, --random value between the 2
    Shake = 1.6, --camera shake
    AdsMultiplier = 0.75, --multiply the values by this amount while aiming
    Seed = 6954 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {25, 15}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 8,
    EffectiveRange = 25, --in meters, damage scales within this distance
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.6, --how much damaged is multipled by when leaving a surface.
        MaxCount = 3, --how many times the bullet can penetrate.
        Thickness = 5, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 13
    } 
}
 
SWEP.WorldModelOffsets = { 
    Bone = "tag_pistol_offset",
    Angles = Angle(0, 90, -90),
    Pos = Vector(3, -3, -1.5)
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
            [0] = {Pos = Vector(-2, 2, 0), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(-1, 0, 0), Angles = Angle(0, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, -30, 0)},
            [1] = {Pos = Vector(0, 0, 1), Angles = Angle(0, 30, 0)}
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


DEFINE_BASECLASS("mg_base")

-- function SWEP:PostDrawViewModel(vm, weapon, ply)
--     BaseClass.PostDrawViewModel(self, vm, weapon, ply)
  
--     if (!IsValid(self.Customization["Magazine"].m_Model)) then
--         return
--     end
    
--     local mag = self.Customization["Magazine"].m_Model
--     local max = 10
--     local clip = math.min(max, self:Clip1() + self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()))
--     mag:SetBodygroup(2, max - clip)

--     local cycle = 0.7

--     if (self:GetMaxClip1() > 20) then
--         cycle = 0.3
--     end

--     local bInReloadAnimation = string.find(string.lower(self.m_seqIndex), "reload") || false

--     if (!bInReloadAnimation || (bInReloadAnimation && self.m_ViewModel:GetCycle() > cycle)) then
--         mag:SetBodygroup(1, math.min(max - self:Clip1() + 1, 10))

--         if (bInReloadAnimation) then
--             mag:SetBodygroup(1, max - clip)
--         end
--     end
-- end