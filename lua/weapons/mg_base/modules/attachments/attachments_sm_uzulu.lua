AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_uzulu_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_mag.mdl"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_xmag2"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_xmag2.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_xmag2.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 50
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
        weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_magcalcust9mm"] = {
    Name = "9x19mm 32-Round Mags",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_mag.vmt"),
    Stats = function(weapon)
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.89
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.99
        weapon.Primary.ClipSize = 32
        weapon.Primary.RPM = 960
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_magcalcust"] = {
    Name = ".41 AE 32-Round Mags",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_magcalcust.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_mag_clip.vmt"),
    Stats = function(weapon)
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.15
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.15
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Primary.ClipSize = 32
        weapon.Primary.RPM = 500
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_xmags"] = {
    Name = "40 Round Mags",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_xmags.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 40
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
        weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_suppressor"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_suppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_suppressor.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_barcust"] = {
    Name = "FSS Carbine Pro",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barcust.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_barrel_v13.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_barlong"] = {
    Name = "16.5 Factory Carbine",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_barlong.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.07
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.96
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.96
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_barmid"] = {
    Name = "13.1 First Responder",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barmid.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_barmid.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_barshort"] = {
    Name = "8.5 Factory Mini",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_barshort.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.92
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.92 
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1 
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_stock.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_stock_folded"] = {
    Name = "Folded Stock",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_stock_folded.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_stock.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.25
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.25
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2
    end
}

MW_ATT_KEYS["attachment_vm_sm_uzulu_stockh"] = {
    Name = "Standard-Issue Wood Stock",
    Model = Model("models/viper/mw/attachments/uzulu/attachment_vm_sm_uzulu_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/uzulu/icon_attachment_sm_uzulu_stockh.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.82
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.82
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Recoil.AdsMultiplier = 0
    end
}