AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_smgolf45_receiver_v2"] = {
    Name = "UMP-45 Receiver",
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_receiver_v2.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_mag_v2"] = {
    Name = "UMP-45 Magazine",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_mag_v2.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_mag_v2.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_smags"] = {
    Name = ".45 Hollow Point 12-R Mags",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_smags.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_smags.vmt"),
    Stats = function(self)
        self.Primary.RPM = self.Primary.RPM - 19
        self.Primary.ClipSize = 12
        self.Animations.Reload = self.Animations.Reload_Smag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Smag
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.14
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.14
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 1.25
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.25
        --self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.15
        --self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.15
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.35
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_xmagslrg"] = {
    Name = "45 Round Mags",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_xmagslrg.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_xmagslrg.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 45
        self.Animations.Reload = self.Animations.Reload_Xmaglrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmaglrg
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.98
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.98
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_barlong"] = {
    Name = "400mm Stainless Steel",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barlong.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.13
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.13
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.93
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.93
        self.Cone.Hip = self.Cone.Hip * 0.8
        self.Cone.Increase = self.Cone.Increase * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_barmid"] = {
    Name = "300mm Poly Barrel",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barmid.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barmid.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.07
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.07
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_barshort"] = {
    Name = "150mm Stainless Steel",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_barrel.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.95
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.03
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.03
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.05
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_stock_v2"] = {
    Name = "UMP-45 Stock",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stock_v2.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stock_v2.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_stockcqb"] = {
    Name = "XRK Gen III Survivalist Series",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockcqb.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockcqb.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.05
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.05
        self.Animations.Sprint_Out.Fps = self.Animations.Sprint_Out.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_stockl"] = {
    Name = "FSS Guardian",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockl.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.98
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.98
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.84
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.84
    end
}

MW_ATT_KEYS["attachment_vm_sm_smgolf45_stockh"] = {
    Name = "FTAC Precision Fixed Stock",
    Model = Model("models/viper/mw/attachments/smgolf45/attachment_vm_sm_smgolf45_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/smgolf45/icon_attachment_sm_smgolf45_stockh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.89
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.89
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.93
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.93
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.74
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.74
    end
}