AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_mike26_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sh_mike26_barheavy"] = {
    Name = "VLK Czar",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barheavy.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_barheavy.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.7
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.7
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_barlong"] = {
    Name = "16 Warlord",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_barlong.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
        weapon.Bullet.EffectiveRange =  weapon.Bullet.EffectiveRange * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_barshort"] = {
    Name = "6 Revolt",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_barshort.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Cone.Hip =  weapon.Cone.Hip * 1.5
        weapon.Cone.Ads =  weapon.Cone.Ads * 1.5
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_mag.mdl"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

-- MW_ATT_KEYS["attachment_vm_sh_mike26_slugmag"] = {
--     Name = "Default Magazine",
--     Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_slugmag.mdl"),
--     Stats = function(weapon)
--         weapon.Animations.Reload = weapon.Animations.Reload
--         weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
--     end
-- }

-- MW_ATT_KEYS["attachment_vm_sh_mike26_dbmag"] = {
--     Name = "Default Magazine",
--     Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_dbmag.mdl"),
--     Stats = function(weapon)
--         weapon.Animations.Reload = weapon.Animations.Reload
--         weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
--     end
-- }

MW_ATT_KEYS["attachment_vm_sh_mike26_smag"] = {
    Name = "4 Round Mags",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_smag.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_smag.vmt"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.reload_smag
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_smag
        weapon.Primary.ClipSize = 4
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_xmag"] = {
    Name = "12 Round Mags",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_xmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_xmag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 12
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Reload = weapon.Animations.reload_xmag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_stock.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_pumphandle"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_pumphandle.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_pumpl"] = {
    Name = "XRK Race Grip",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_pumpl.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_pumpl.vmt"),
    Stats = function(weapon)
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 1.25
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    end
}

MW_ATT_KEYS["attachment_vm_sh_mike26_pumph"] = {
    Name = "VLK Prime Pump Grip",
    Model = Model("models/viper/mw/attachments/mike26/attachment_vm_sh_mike26_pumph.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike26/icon_attachment_sh_mike26_pumph.vmt"),
    Stats = function(weapon)
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.8
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    end
}