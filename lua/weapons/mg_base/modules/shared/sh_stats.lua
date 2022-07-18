AddCSLuaFile()

SWEP.StatDefinitions = {
    ["SWEP.Primary.ClipSize"] = "ClipSize",
    ["SWEP.Primary.RPM"] = "RPM",
    ["SWEP.Animations.Ads_Out.Fps"] = "AimSpeed",
    ["SWEP.Animations.Ads_In.Fps"] = "AimSpeed",
    ["SWEP.Animations.Sprint_Out.Fps"] = "SprintSpeed",
    ["SWEP.Animations.Rechamber.Fps"] = "RechamberSpeed",
    ["SWEP.Cone.Ads"] = "Accuracy",
    ["SWEP.Cone.Hip"] = "Accuracy",
    ["SWEP.Cone.Increase"] = "ConeIncrease",
    --["SWEP.Animations.Reload.Length"] = "ReloadLength",
   -- ["SWEP.Animations.Reload_Empty.Length"] = "ReloadLength", --too confusing for people
    ["SWEP.Animations.Reload.Fps"] = "ReloadSpeed",
    ["SWEP.Animations.Reload_Empty.Fps"] = "ReloadSpeed",
    ["SWEP.Animations.Reload_Start.Fps"] = "ReloadSpeed",
    ["SWEP.Animations.Draw.Fps"] = "SwitchSpeed",
    ["SWEP.Animations.Holster.Fps"] = "SwitchSpeed",
    ["SWEP.Bullet.Damage.1"] = "DamageClose",
    ["SWEP.Bullet.Damage.2"] = "DamageRange",
    ["SWEP.Bullet.HeadshotMultiplier"] = "HeadshotMultiplier",
    ["SWEP.Bullet.EffectiveRange"] = "EffectiveRange",
    ["SWEP.Bullet.Penetration.Thickness"] = "PenetrationThickness",
    ["SWEP.Recoil.Vertical.1"] = "VerticalRecoil",
    ["SWEP.Recoil.AdsMultiplier"] = "Recoil",
    ["SWEP.Recoil.Vertical.2"] = "VerticalRecoil",
    ["SWEP.Recoil.Horizontal.1"] = "HorizontalRecoil",
    ["SWEP.Recoil.Horizontal.2"] = "HorizontalRecoil",
    ["SWEP.Recoil.Shake"] = "Shake",
    ["SWEP.Animations.Melee_Hit.Length"] = "MeleeSpeed",
    ["SWEP.Animations.Melee.Length"] = "MeleeSpeed",
    ["SWEP.Animations.Melee_Hit.Damage"] = "MeleeDamage",
    ["SWEP.Projectile.Speed"] = "ProjectileSpeed",
    ["SWEP.Projectile.Gravity"] = "ProjectileGravity",
    ["SWEP.Bullet.NumBullets"] = "Bullets"
}

SWEP.StatInfo = {
    ["Shake"] = {
        Name = "Aim Stability",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["HeadshotMultiplier"] = {
        Name = "Headshot Damage",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["ProjectileSpeed"] = {
        Name = "Projectile Velocity",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["ProjectileGravity"] = {
        Name = "Projectile Stability",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["ClipSize"] = {
        Name = "Magazine Size",
        ProIfMore = true,
        ShowPercentage = false
    },
    ["RPM"] = {
        Name = "Rounds Per Minute",
        ProIfMore = true,
        ShowPercentage = false
    },
    ["AimSpeed"] = {
        Name = "ADS Speed",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["SprintSpeed"] = {
        Name = "Sprint-to-Fire Speed",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["AimLength"] = {
        Name = "ADS Time",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["RechamberSpeed"] = {
        Name = "Rechamber Speed",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["AimAccuracy"] = {
        Name = "ADS Spread",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["ConeIncrease"] = {
        Name = "Firing Inaccuracy",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["Accuracy"] = {
        Name = "Spread",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["ReloadSpeed"] = {
        Name = "Reload Speed",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["SwitchSpeed"] = {
        Name = "Handling Speed",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["DrawLength"] = {
        Name = "Draw Time",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["HolsterLength"] = {
        Name = "Holster Time",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["ReloadLength"] = {
        Name = "Reload Time",
        ProIfMore = false,
        ShowPercentage = false
    },
    ["DamageClose"] = {
        Name = "Damage Close",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["DamageRange"] = {
        Name = "Damage Range",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["EffectiveRange"] = {
        Name = "Effective Range",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["MaxRange"] = {
        Name = "Max Range",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["PenetrationThickness"] = {
        Name = "Penetration Power",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["HorizontalRecoil"] = {
        Name = "Recoil Horizontal",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["Recoil"] = {
        Name = "Recoil Kick",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["VerticalRecoil"] = {
        Name = "Recoil Vertical",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["MeleeSpeed"] = {
        Name = "Melee Recovery",
        ProIfMore = false,
        ShowPercentage = true
    },
    ["MeleeDamage"] = {
        Name = "Damage Melee",
        ProIfMore = true,
        ShowPercentage = true
    },
    ["Bullets"] = {
        Name = "Number Of Pellets",
        ProIfMore = true,
        ShowPercentage = false
    },
    ["SprintLength"] = {
        Name = "Sprint-to-Fire Time",
        ProIfMore = false,
        ShowPercentage = false
    },
}