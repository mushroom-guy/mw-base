AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_papa90_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_mag.mdl"),
    Stats = function(self)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_barrel.mdl")
}

MW_ATT_KEYS["attachment_vm_sm_papa90_longbarrel"] = {
    Name = "FSS 10.6 Pro",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_longbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_longbarrel.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.05
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.05
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_custombarrel"] = {
    Name = "FORGE TAC Retribution",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_custombarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_custombarrel.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.94
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_reddotscope"] = {
    Name = "FSS Ring Sight",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_reddotscope.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_reddotscope.vmt"),
    Reticle = {
        Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
        Size = 140,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
    },
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_stock_tactical"] = {
    Name = "FORGE TAC CQB Comb",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_stock_tactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_stock_tactical.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.99
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.91
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.91
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.91
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_stockl"] = {
    Name = "Fly Strap",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_stockl.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.18
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.18
        weapon.Animations.Sprint_Out.Fps = weapon.Animations.Sprint_Out.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sm_papa90_stocks"] = {
    Name = "FSS Heavy Stock Pro",
    Model = Model("models/viper/mw/attachments/papa90/attachment_vm_sm_papa90_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/papa90/icon_attachment_sm_papa90_stocks.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    end
}