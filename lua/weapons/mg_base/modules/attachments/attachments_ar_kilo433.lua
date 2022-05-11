AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_kilo433_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_xmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 50
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.96
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.96
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_drum_mag"] = {
    Name = "100 Round Drums",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_drum_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_drum_mag.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 100
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Inspect = self.Animations.Inspect_Drum
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8

    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_barrel_tip"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_barrel_tip.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_pi_mike1911_muzzlebrake.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9 
        self.Cone.Hip =  self.Cone.Hip * 0.8
        self.Cone.Ads =  self.Cone.Ads * 1.03
    end 
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_barshort"] = {
    Name = "Singuard Arms 16.6 SOCOM",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_barshort.vmt"),
    Stats = function(self)
        --[[self.Bullet.Damage[1] = self.Bullet.Damage[1] * 1.263
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.263
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.93
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.93
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.93
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.93
        self.Cone.Hip =  self.Cone.Hip * 1.225]]
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
        self.Cone.Hip = self.Cone.Hip * 0.92
        self.Cone.Ads = self.Cone.Ads * 0.92
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_long_barrel"] = {
    Name = "Singuard Arms 19.8 Prowler",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_long_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_long_barrel.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
        self.Cone.Hip = self.Cone.Hip * 0.88
        self.Cone.Ads = self.Cone.Ads * 0.88
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_barsil"] = {
    Name = "Singuard Arms Whisper",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_barsil.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_barsil.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.06
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.06
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.99
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.99
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.99
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.99
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_stock_heavy"] = {
    Name = "Singuard Arms Sniper Pro",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_kilo433_stock_heavy.mdl"),
    Icon = Material("viper/mw/attachments/icons/kilo433/icon_attachment_ar_kilo433_stock_heavy.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.91
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.91
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.91
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.91
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.89
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.89 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.92
    end
}

MW_ATT_KEYS["attachment_vm_ar_kilo433_stockno"] = {
    Name = "No Stock",
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_no.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
    end
}