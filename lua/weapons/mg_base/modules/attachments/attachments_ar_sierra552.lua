AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_sierra552_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_xmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 50
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Reload = self.Animations.reload_mmag
        self.Animations.Reload_Empty = self.Animations.reload_empty_mmag
        self.Animations.Reload_Fast = self.Animations.reload_mmag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_mmag_fast
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_xmagslrg"] = {
    Name = "60 Round Mags",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_xmagslrg.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_xmagslrg.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 60
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.83
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.83
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.8
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.8

    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barlight"] = {
    Name = "Barlight",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.04
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.04
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.99
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.99
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.04
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.04
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barh"] = {
    Name = "XRK CZEN mk2",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barh.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.06
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.06
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barlong"] = {
    Name = "FFS 20.8 Nexus",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barlong.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
        self.Cone.Hip = self.Cone.Hip * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barshort"] = {
    Name = "ZLR Drifter A-08",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barshort.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.12
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.12
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.15
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.15
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.87
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.87
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.95
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.95
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_barxlong"] = {
    Name = "Tempus 26.4 Archangel",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_barxlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_barxlong.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.8
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.8
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.2
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.2
        self.Cone.Hip = self.Cone.Hip * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_stockh"] = {
    Name = "FSS Blackjack",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_stockh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.85
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.9
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.9
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_stockl"] = {
    Name = "XRK StrikeLite III",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_stockl.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.06
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.06
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.18
    end
}

MW_ATT_KEYS["attachment_vm_ar_sierra552_stockno"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_stockno.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
        self.Recoil.ViewModelMultiplier = 2.25
    end
}