AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_charlie9_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_mag.mdl"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_drummag"] = {
    Name = "50 Round Drums",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_drummag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 50
        weapon.Animations.Reload = weapon.Animations.Reload_Drum
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.82
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.82
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_xmag"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_xmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_xmag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 30
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_barsil"] = {
    Name = "FSS Nightshade",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_barsil.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_barsil.vmt"),
    Stats = function(weapon)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.7
        weapon.Cone.Hip = weapon.Cone.Hip * 0.83
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_longbarrel"] = {
    Name = "FSS Revolution",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_longbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_longbarrel.vmt"),
    Stats = function(weapon)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.09
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.09
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
        weapon.Cone.Hip = weapon.Cone.Hip * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_medbarrel"] = {
    Name = "FTAC 225mm Dominator",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_medbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_medbarrel_v1.vmt"),
    Stats = function(weapon)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.03
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.03
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_shortbarrel"] = {
    Name = "ISO 140mm CQB",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_shortbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_shortbarrel.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.94
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.03
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.03
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.09
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.09
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_stock.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_fullstock"] = {
    Name = "FTAC Vagrant",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_fullstock.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_fullstock.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.89
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.89
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_sm_charlie9_nostock"] = {
    Name = "ISO Collapsible",
    Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_nostock.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_nostock.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = 0.5
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
    end
}