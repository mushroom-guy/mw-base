AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_falima_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_mmags"] = {
    Name = "24 Round Mags",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_mmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_mmags.vmt"),
    Stats = function(self)
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.95
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.95
        self.Primary.ClipSize = 24
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_xmags"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 30
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.91
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.91
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.87
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.87
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_barrel_muzzle"] = {
    Name = "Muzzlebrake",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_barrel_muzzle.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_muzzle.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_ar_falima_barlong"] = {
    Name = "18.0 Ultralight",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_barlong.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.91
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.91 
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_barsmg"] = {
    Name = "13.0 OSW Para",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_barsmg.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_barsmg.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.94
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.94
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.05
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_asierra12_barlong.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_falima_nostock"] = {
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

MW_ATT_KEYS["attachment_vm_ar_falima_stockl"] = {
    Name = "Factory 18 Aluminum Stock",
    Model = Model("models/viper/mw/attachments/falima/attachment_vm_ar_falima_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/falima/icon_attachment_ar_falima_stockl.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.06
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.06
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.06
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.06
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.02
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.02
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.02
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.02
    end
}