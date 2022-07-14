AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_tango21_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_xmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 50
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Animations.Reload = self.Animations.reload_xmag
        self.Animations.Reload_Empty = self.Animations.reload_empty_xmag
        self.Animations.Reload_Fast = self.Animations.reload_xmag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_xmag_fast
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_drummag"] = {
    Name = "60 Round 9mm Drum",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_drummag.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 60
        self.Primary.RPM = 1000
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 0.85
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 0.85
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.5
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.5
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.5
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.5
        self.Animations.Reload = self.Animations.reload_drum
        self.Animations.Reload_Empty = self.Animations.reload_empty_drum
        self.Animations.Reload_Fast = self.Animations.reload_drum_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_drum_fast
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.6
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.6
        doCalConversionStats(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_tango21_barrel_long"] = {
    Name = "FSS Ranger",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_long.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.06
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.06
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_barrel_med"] = {
    Name = "FORGE TAC Eclipse",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_med.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_med.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.03
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.03
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_barrel_short"] = {
    Name = "FTAC 13.5 Compact",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_barrel_short.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_barrel_short.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.92
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.92
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_stock_heavy"] = {
    Name = "XRK Close Quarters Stock",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_heavy.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_heavy.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_stock_light"] = {
    Name = "XRK Ultralight Hollow",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_light.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_light.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.95
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.95
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.07
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_ar_tango21_stock_tactical"] = {
    Name = "FTAC Equilibrium",
    Model = Model("models/viper/mw/attachments/tango21/attachment_vm_ar_tango21_stock_tactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/tango21/icon_attachment_ar_tango21_stock_tactical.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.06
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.06
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}