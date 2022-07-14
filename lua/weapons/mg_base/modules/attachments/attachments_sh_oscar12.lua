AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_oscar12_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_barrellong"] = {
    Name = "FORGE TAC Impaler",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_barrellong.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_barrellong.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.85
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_barrelmid"] = {
    Name = "FORGE TAC Precision",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_barrelmid.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_barrelmid.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_barrelshort"] = {
    Name = "FORGE TAC Wideshot",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_barrelshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_barrelshort.vmt"),
    Stats = function(weapon)
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_suppressor"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_suppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_suppressor.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_silencer02"] = {
    Name = "Tactical Suppressor",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_silencer03.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_silencer03.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04 

        
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_silencer03"] = {
    Name = "Lightweight Suppressor",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_silencer02.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_silencer02.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_mag.mdl"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_slug_mag"] = {
    Name = "8 Round Slug Mags", --not worth the hassle as it's just an elastic band with the word "SLUGS" on it
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_slug_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_slug_mag.vmt"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_drummag"] = {
    Name = "26 Round Drum Mags",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_drummag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 26
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.7
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.7
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.7
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.7
        weapon.Animations.Reload = weapon.Animations.reload_drum
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_drum
        weapon.Animations.Equip = weapon.Animations.Equip_Drum
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.8
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_xmags"] = {
    Name = "12 Round Mags",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_xmags.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Equip = weapon.Animations.Equip_Drum
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    end
}


MW_ATT_KEYS["attachment_vm_sh_oscar12_sidegrip"] = {
    Name = "attachment_vm_sh_oscar12_sidegrip",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_sidegrip.mdl"),
    Stats = function(weapon)
    end
}


MW_ATT_KEYS["attachment_vm_sh_oscar12_sidegrip_long"] = {
    Name = "Merc Foregrip",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_sidegrip_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_sidegrip_long.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_sidegripang"] = {
    Name = "Commando Foregrip",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_sidegripang.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_sidegripang.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.11
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.13
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.13
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_stock.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_stockhvy"] = {
    Name = "FTAC Hunter",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_stockhvy.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_stockhvy.vmt"),
    Stats = function(weapon)
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_stocklgt"] = {
    Name = "FORGE TAC Dart",
    Model = Model("models/viper/mw/attachments/oscar12/attachment_vm_sh_oscar12_stocklgt.mdl"),
    Icon = Material("viper/mw/attachments/icons/oscar12/icon_attachment_sh_oscar12_stocklgt.vmt"),
    Stats = function(weapon)
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.13
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.13
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.13
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.13
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_oscar12_stockno"] = {
    Name = "No Stock",
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_no.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = 0.75
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
    end
}