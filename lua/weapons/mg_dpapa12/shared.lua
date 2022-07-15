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
    killicon.Add( "mg_dpapa12", "VGUI/entities/mg_dpapa12", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_sh_dpapa12")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset"}

SWEP.PrintName = "R9-0"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/viper/mw/weapons/v_dpapa12.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_dpapa12.mdl")
SWEP.Trigger = {
    PressedSound = Sound("mw19.aalpha12.fire.first"),
    ReleasedSound = Sound("mw19.aalpha12.disconnector"),
    Time = 0.025
}

SWEP.Slot = 3
SWEP.HoldType = "RifleWithVerticalGrip"

SWEP.Primary.Sound = Sound("mw19.dpapa12.fire")
SWEP.Primary.Ammo = "Buckshot"
SWEP.Primary.ClipSize = 14
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 600  
SWEP.CanChamberRound = true  
SWEP.CanDisableAimReload = false
  
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
    Hip = 1, --accuracy while hip
    Ads = 1, --accuracy while aiming
    Increase = 0.085, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 2.5, --the cone size will not go beyond this size
    Decrease = 0.24, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 6974 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {4, 6.5}, --random value between the 2
    Horizontal = {-1.75, 2.75}, --random value between the 2
    Shake = 3, --camera shake
    AdsMultiplier = 0.35, --multiply the values by this amount while aiming
    Seed = 1159, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 0.56
}
SWEP.Bullet = {
    Damage = {95, 35}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 15, --in meters, damage scales within this distance
    DropOffStartRange = 12,
    Range = 40, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 6, --the amount of bullets to fire
    PhysicsMultiplier = 1.7, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.9, --how much damaged is multipled by when leaving a surface.
        MaxCount = 12, --how many times the bullet can penetrate.
        Thickness = 16, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Angles = Angle(5,97,-90),
    Pos = Vector(8,-5.35,-1.5)
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
    
    RecoilMultiplier = 2.75,
    KickMultiplier = 1.3,
    AimKickMultiplier = 0.45
}

SWEP.Shell = {
    Model = Model("models/viper/mw/shells/vfx_sgcaldb_shell.mdl"),
    Scale = 0.35,
    Force = 150,
    SpinForce = 250,
    Sound = Sound("MW_Casings.Shotgun")
}

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)

    if (clip != self:Clip1()) then
        self:SetBarrel(self:GetBarrel() + 1)

        if (self:GetBarrel() >= 2 && self:Clip1() > 0) then
            self:SetHasPumped(true)
            self:SetBarrel(0)
        else
            self:SetHasPumped(false)
        end
    end
end

function SWEP:EndReload()
    if (self:Clip1() <= 0) then --dont want to cancel reload if im out of ammo
        return
    end

    if (self:Clip1() == 1) then
        self:SetBarrel(0)
    end

    weapons.Get(self.Base).EndReload(self)
end

function SWEP:ChooseReloadAnim()
    local maxClip = self.Primary.ClipSize
    
    if (self:GetHasPumped()) then
        maxClip = self:GetMaxClip1WithChamber()
    end

    if (self:Clip1() == maxClip - 2 || self:Ammo1() == 2) then
        return "Reload_Start"
    end 
 
    if (self:Clip1() % 2 != 0 || self:Ammo1() == 1 || self:Clip1() == maxClip - 1) then
        return "Reload_Start_Onebullet" 
    end
 
    return "Reload_Start" 
end

function SWEP:Initialize()
    weapons.Get(self.Base).Initialize(self)
    self:SetBarrel(2)
end


function SWEP:GetMaxClip1WithChamber()
    if (self.CanChamberRound && self:GetHasPumped()) then
        return self:GetMaxClip1() + 2
    end

    return self:GetMaxClip1()
end

function SWEP:Reload(fromFallback)
    local bWasReloading = self:GetIsReloading()
    weapons.Get(self.Base).Reload(self, fromFallback)

    if (self:GetIsReloading() && !bWasReloading) then
        local anim = self:ChooseReloadAnim()  
        self:SetNextMagTime(CurTime() + self:GetAnimLength(anim, self.Animations[anim].MagLength))
        self:SetHasFilledMag(false)
    
        if (self.Animations[anim].MagLength2 != nil) then 
            self:SetNextMagTime2(CurTime() + self:GetAnimLength(anim, self.Animations[anim].MagLength2))
            self:SetHasFilledMag2(false)
        else
            self:SetHasFilledMag2(true)
        end
    end
end

function SWEP:SetupDataTables()
    weapons.Get(self.Base).SetupDataTables(self)

    self:NetworkVar("Float", "22", "NextMagTime2")
    self:NetworkVar("Bool", "25", "HasFilledMag2")
    self:NetworkVar("Int", "5", "Barrel")
end

function SWEP:ReloadBehaviourModule()
    if (self:GetIsReloading()) then
        local maxClip = self.Primary.ClipSize
    
        if (self:GetHasPumped() && self.CanChamberRound) then
            maxClip = self:GetMaxClip1WithChamber()
        end

        if (CurTime() > self:GetNextMagTime() && !self:GetHasFilledMag()) then
            self:SetClip1(self:Clip1() + 1)
            self:GetOwner():SetAmmo(self:Ammo1() - 1, self:GetPrimaryAmmoType())
     
            self:SetHasFilledMag(true)

            if ((self:Clip1() >= maxClip || self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) <= 0) && !self:GetHasFilledMag2()) then
                self:EndReload()
                return 
            end
        end

        if (CurTime() > self:GetNextMagTime2() && !self:GetHasFilledMag2()) then
            self:SetClip1(self:Clip1() + 1)
            self:GetOwner():SetAmmo(self:Ammo1() - 1, self:GetPrimaryAmmoType())
    
            self:SetHasFilledMag2(true)
        end
    
        if (CurTime() > self:GetNextReloadTime()) then
            if (self:Clip1() >= maxClip || self:GetOwner():GetAmmoCount(self:GetPrimaryAmmoType()) <= 0) then
                self:EndReload()
                return
            end
    
            if (IsFirstTimePredicted()) then self:PlayViewModelAnimation("Reload_Loop") end
    
            self:SetNextReloadTime(CurTime() + self:GetAnimLength("Reload_Loop"))
            self:SetNextMagTime(CurTime() + self:GetAnimLength("Reload_Loop", self.Animations["Reload_Loop"].MagLength))
            self:SetNextMagTime2(CurTime() + self:GetAnimLength("Reload_Loop", self.Animations["Reload_Loop"].MagLength2))
            self:SetHasFilledMag(false)
            self:SetHasFilledMag2(false)
    
            self:PlayerGesture(GESTURE_SLOT_ATTACK_AND_RELOAD, self.HoldTypes[self.HoldType].Reload)
        end
    end
end