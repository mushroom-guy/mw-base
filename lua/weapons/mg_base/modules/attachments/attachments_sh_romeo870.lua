AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_romeo870_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_heatguard_mp"] = {
    Name = "XRK 18.0 Liberator",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_heatguard_mp.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_heatguard.vmt"),
    Stats = function(weapon)
        weapon.Cone.Hip =  weapon.Cone.Hip * 1.2
        weapon.Cone.Ads =  weapon.Cone.Ads * 1.2
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_barrel_long"] = {
    Name = "XRK 30.0 Sport",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_barrel_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_barrel_long.vmt"),
    Stats = function(weapon)
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
        weapon.Primary.ClipSize = 10
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_barrel_sawn"] = {
    Name = "XRK 14.0 SWAT",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_barrel_sawn.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_barrel_sawn.vmt"),
    Stats = function(weapon)
        weapon.Cone.Hip =  weapon.Cone.Hip * 1.5
        weapon.Cone.Ads =  weapon.Cone.Ads * 1.5
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Primary.ClipSize = 5
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_shtgnsilencer"] = {
    Name = "Lightweight Suppressor",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_shtgnsilencer.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_shtgnsilencer.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_silencer02"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_silencer03.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_silencer03.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_silencer03"] = {
    Name = "Tactical Suppressor",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_silencer02.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_silencer02.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04 
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_pump_custom"] = {
    Name = "XRK Truegrip Tactical",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_pump_custom.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_pump_custom.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_pump_wood"] = {
    Name = "Lockwood Precision Series",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_pump_wood.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_pump_wood.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_stock.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_stock_pistolgrip"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_stock_pistolgrip.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_stock_pistolgrip.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = 0.75
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_stock_wood"] = {
    Name = "Lockwood Precision Series",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_stock_wood.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_stock_wood.vmt"),
    Stats = function(weapon)
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_mag"] = {
    Name = "6-R Mags",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_mag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 6
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_romeo870_6rbar"] = {
    Name = "XKX Eagle's Claw",
    Model = Model("models/viper/mw/attachments/romeo870/attachment_vm_sh_romeo870_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_foreendlight"),
    Stats = function(weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
    end
}