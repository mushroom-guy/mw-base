AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_galima_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_smag"] = {
    Name = "M67 10-R Mags",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_smag.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_smag.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 10
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.15
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.15
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.2
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.2
        self.Animations.Reload = self.Animations.reload_smag
        self.Animations.Reload_Empty = self.Animations.reload_empty_smag
        self.Animations.Reload_Fast = self.Animations.reload_smag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_smag_fast
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_xmag"] = {
    Name = "45 Round Mags",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_xmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_xmag.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 45
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_galima_barlight"] = {
    Name = "FSS 11.8 Squall",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_barlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_barrel_02.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.98
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.98
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Cone.Increase =  self.Cone.Increase * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_barlong"] = {
    Name = "XRK Zodiac S440",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_barlong.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.09
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.09
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_barshort"] = {
    Name = "FSS 8.3 Intruder",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_barshort.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stockl"] = {
    Name = "FSS Close Quarters Stock",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stockl.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.09
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.09
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.05
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.05
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.05
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stockh"] = {
    Name = "FTAC Hunter",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stockh.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.91
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.91
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.91
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.91
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.87
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.87
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stocks"] = {
    Name = "FTAC Spartan",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stock_02.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.03
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.03
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.05
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.05
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.02
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.02
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.02
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stockskel"] = {
    Name = "CR-56 EXO",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stockskel.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stockskel.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.12
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.12
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.15
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.15
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.1
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.1
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.1
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stocksn"] = {
    Name = "XRK Gatekeeper",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stocksn.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stocksn.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.84
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.84
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.84
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.84
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.8
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.8
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_ar_galima_stockno"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/galima/attachment_vm_ar_galima_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_stockno.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
        self.Recoil.ViewModelMultiplier = 2.25
    end
}