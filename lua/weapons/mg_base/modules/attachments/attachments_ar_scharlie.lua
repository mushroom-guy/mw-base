AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_scharlie_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_mmags"] = {
    Name = "25 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_mmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_mmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 25
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload.Length = self.Animations.Reload.Length + 0.067
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.95
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_xmags"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_mag_ext.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 30
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.96
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.96
        self.Animations.Reload.Length = self.Animations.Reload.Length + 0.067
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.87
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.87
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_barrel_long"] = {
    Name = "FORGE TAC 20.0 LB",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_barrel_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_barrel_long.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95 
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95 
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_barrel_mid"] = {
    Name = "FORGE TAC 17.2",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_barrel_mid.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_barrel_mid.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95 
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_barrel_pdw"] = {
    Name = "FORGE TAC CQC Pro",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_barrel_pdw.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_barrel_pdw.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.85
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.85
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_stock_dmr"] = {
    Name = "XRK Obelisk Pro",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_stock_dmr.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_stock_dmr.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.9
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.9
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_scharlie_stock_light"] = {
    Name = "FTAC Collapsible Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_ar_scharlie_stock_light.mdl"),
    Icon = Material("viper/mw/attachments/icons/scharlie/icon_attachment_ar_scharlie_stock_light.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.19
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.19 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.12
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.12
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.75
    end
}