AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_secho_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_mag.mdl"),
    Stats = function(self)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_smags"] = {
    Name = "9mm Hollow Point 12-R Mags",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_smags.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_smags.vmt"),
    Stats = function(self)
        weapon.Firemodes[1].Name = "3rnd Burst"
        weapon.Primary.Automatic = false
        weapon.Primary.BurstRounds = 3
        weapon.Primary.BurstDelay = 0.1
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Inspect = weapon.Animations.Inspect_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.25
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_xmags"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_xmags.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 30
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_drummags"] = {
    Name = "50 Round Drums",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_drummags.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_drummags.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 60
        weapon.Animations.Reload = weapon.Animations.Reload_Drum
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
        weapon.Animations.Inspect = weapon.Animations.Inspect_Drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_secho_barlong"] = {
    Name = "CX-38",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barlong.vmt"),
    Stats = function(self)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_barshort"] = {
    Name = "CX-23",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barshort.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.92
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.92
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.12
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.12
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_barsillong"] = {
    Name = "CX-38S",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barsillong.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barsillong.vmt"),
    Stats = function(self)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
        weapon.Cone.Increase = weapon.Cone.Increase * 0.7
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_barsilshort"] = {
    Name = "CX-23S",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barsilshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barsilshort.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.94
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_barxlong"] = {
    Name = "CX-38E",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_barxlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_barxlong.vmt"),
    Stats = function(self)
        weapon.HoldType = "Rifle"
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.18
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.18
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.81
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.81
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_stockh"] = {
    Name = "CX-MM",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_stockh.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.74
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.74
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_stockno"] = {
    Name = "CX-FR",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_stockno.vmt"),
    Stats = function(self)
        weapon.Recoil.AdsMultiplier = 0.65
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
    end
}

MW_ATT_KEYS["attachment_vm_sm_secho_stockskel"] = {
    Name = "CX-FA",
    Model = Model("models/viper/mw/attachments/secho/attachment_vm_sm_secho_stockskel.mdl"),
    Icon = Material("viper/mw/attachments/icons/secho/icon_attachment_sm_secho_stockskel.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.81
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.81
    end
}