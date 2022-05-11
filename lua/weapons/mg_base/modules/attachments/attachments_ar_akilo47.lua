AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_akilo47_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_xmags"] = {
    Name = "40 Round Mags",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_xmags_akilo47_v11.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 40
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_smgmag"] = {
    Name = "5.45x39mm 30-Round Mags",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgmag_akilo47.vmt"),
    Stats = function(self)
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 0.98
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 0.98
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.8
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.7
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.8
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.8
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.8
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.8
        self.Primary.ClipSize = 30
        self.Primary.RPM = 690
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_drum_mag"] = {
    Name = "75 Round Mags",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_drum_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_drums_akilo47.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 75
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.81
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.81
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_comp"] = { --unused
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_comp.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_comp_akilo47.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.8
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.8
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.95
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.95
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.95
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_custombarrel"] = {
    Name = "Spetsnaz Elite",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_custombarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_custombarrel_akilo47.vmt"),
    Stats = function(self)
        self.Cone.Increase = self.Cone.Increase * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_lmgbarrel_grip"] = {
    Name = "23.0 Romanian",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgbarrel_grip.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_gripvert_akilo47.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.06
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.06
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.87
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.87
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.87
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.87
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.93
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.93
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_lmgbarrel"] = {
    Name = "23.0 RPK Barrel",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_lmgbarrel_akilo47.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.06
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.06
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.91
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.91
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.91
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_smgbarcust"] = {
    Name = "8.1 Compact Barrel",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgbarcust.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_vertgrip_akilo47.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.08
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.08
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.85
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.85
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_smgbarrel"] = {
    Name = "8.1 Compact Barrel",
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgbarrel_akilo47.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_lmgstock"] = {
    Name = "Field LMG Stock",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_lmgstock.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_stocklmg_akilo47.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.92
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.91
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.91
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.91
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_smgstock_unfolded"] = {
    Name = "Skeleton Stock",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgstock_unfolded.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgstock_unfolded_akilo47.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.15
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.15
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.15
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_smgstock"] = {
    Name = "Skeleton Stock Folded",
    Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_smgstock.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_smgstock_akilo47.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
    end
}

MW_ATT_KEYS["attachment_vm_ar_akilo47_stockno"] = {
    Name = "No Stock",
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_stockno_akilo47.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
    end
}