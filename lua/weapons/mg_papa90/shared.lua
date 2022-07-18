AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_papa90", "VGUI/entities/mg_papa90", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_sm_papa90")
end

-- SWEP.BulletList = {[28] = "j_bullets_022", [27] = "j_bullets_021", [26] = "j_bullets_020", [25] = "j_bullets_019", [24] = "j_bullets_018", [23] = "j_bullets_017", [22] = "j_bullets_016",
-- [21] = "j_bullets_015", [20] = "j_bullets_014", [19] = "j_bullets_013", [18] = "j_bullets_012", [17] = "j_bullets_011",
-- [16] = "j_bullets_010", [15] = "j_bullets_09", [14] = "j_bullets_08", [13] = "j_bullets_07", [12] = "j_bullets_06",
-- [11] = "j_bullets_05", [10] = "j_bullets_04", [9] = "j_bullets_03", [8] = "j_bullets_02", [7] = "j_bullets_01",
-- [6] = "j_bullet_06", [5] = "j_bullet_05", [4] = "j_bullet_04", [3] = "j_bullet_03", [2] = "j_bullet_02", [1] = "j_bullet_01"}

SWEP.Base = "mg_base"

SWEP.PrintName = "P90"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Submachine Guns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_papa90.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_papa90.mdl")

SWEP.Slot = 2
SWEP.HoldType = "TinyGun"
SWEP.Trigger = {
    PressedSound = Sound("mw19.papa90.fire.first"),
    ReleasedSound = Sound("mw19.papa90.disconnector"),
    Time = 0.025
}
 
SWEP.Primary.Sound = Sound("mw19.papa90.Fire")
SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 50
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 895.5223880597015  
SWEP.CanChamberRound = true  
SWEP.CanDisableAimReload = true

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
    Hip = 0.15, --accuracy while hip
    Ads = 0.025, --accuracy while aiming
    Increase = 0.05, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.075, --multiply the increase value by this amount while aiming
    Max = 1, --the cone size will not go beyond this size
    Decrease = 0.75, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 987654321 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.85, 1.15}, --random value between the 2
    Horizontal = {-1.15, 1.15}, --random value between the 2
    Shake = 1, --camera shake
    AdsMultiplier = 0.25, --multiply the values by this amount while aiming
    Seed = 6589132 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {22, 13}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 38, --in meters, damage scales within this distance`
    DropOffStartRange = 13,
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
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
        EyeFocusDistance = 7.5
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0,105,-90),
    Pos = Vector(-3.5,-0.5,8)
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
            [0] = {Pos = Vector(0, 0, 2), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(10, -20, 0)}
        }
    },

    RecoilMultiplier = 0.3,
    KickMultiplier = 0.4,
    AimKickMultiplier = 3.2
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_shell_ar_lod0.mdl"),
    Scale = 0.7,
    Force = 100,
    Sound = Sound("MW_Casings.556")
}


DEFINE_BASECLASS("mg_base") 

-- SWEP.magSpringDelta = 1
-- local small = Vector(0, 0, 0)
-- local normal = Vector(1, 1, 1)

-- function SWEP:ResetBullets(model, bones)
--     for i, bone in pairs(bones) do
--         local bId = self:LookupBoneCached(model, bone)
--         if (bId != nil) then
--             if (i > 6) then
--                 if ((self:Clip1() + self:Ammo1()) * 0.5 + 3 >= i) then
--                     model:ManipulateBoneScale(self:LookupBoneCached(model, bone), normal)
--                 end
--             else
--                 if (self:Clip1() + self:Ammo1() >= i) then
--                     model:ManipulateBoneScale(self:LookupBoneCached(model, bone), normal)
--                 end
--             end
--         end
--     end

--     self.magSpringDelta = 1 - math.min(math.max(self:Clip1() + self:Ammo1(), 4) / self:GetMaxClip1(), 1)
-- end

-- function SWEP:RemoveBulletsBasedOnClip(model, bones)
--     if (IsValid(model) && self:GetIsReloading()) then
--         return
--     end

--     for i, bone in pairs(bones) do
--         local bId = self:LookupBoneCached(model, bone)
--         if (bId != nil) then
--             if (i > 6) then
--                 model:ManipulateBoneScale(self:LookupBoneCached(model, bone), (self:Clip1() * 0.5) + 3 <= i && small || normal)
--             else
--                 model:ManipulateBoneScale(self:LookupBoneCached(model, bone), self:Clip1() <= i && small || normal)
--             end
--         end
--     end

--     self.magSpringDelta = 1 - math.min(math.max(self:Clip1(), 4) / self:GetMaxClip1(), 1)
-- end

-- function SWEP:PostDrawViewModel(vm, weapon, ply)
--     BaseClass.PostDrawViewModel(self, vm, weapon, ply)

--     local model = self:GetAttachmentModels("Magazines")
--     self:RemoveBulletsBasedOnClip(model, self.BulletList)

--     local springId = self:LookupBoneCached(model, "j_mag_spring")
--     local pusherId = self:LookupBoneCached(model, "j_mag_pusher")
--     model:ManipulateBonePosition(pusherId, Vector(self.magSpringDelta * -7, 0, 0))
--     model:ManipulateBoneScale(springId, Vector(self.magSpringDelta * -2.5, 1, 1))
-- end