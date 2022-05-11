AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_falpha_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_xmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 50
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_xmags2"] = {
    Name = "60 Round Mags",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_xmags2.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_xmags2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 60
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.89
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.89
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_barrel_muzzle"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barrel_muzzle.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_muzzle.vmt"),
    Stats = function(self)
    end 
}

MW_ATT_KEYS["attachment_vm_ar_falpha_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_falpha_barlong2"] = {
    Name = "TAC FORGE Ultralight",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barlong2.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_barlong2.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.03
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.03
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.02
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_barrellong_alt"] = {
    Name = "FR 24.4 Sniper",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barrellong_alt.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_barrellong.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.08
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.08
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_barshort"] = {
    Name = "FR 15.9 Commando",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_barshort.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.95
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_stock"] = {
    Name = "Default",
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_stock_light"] = {
    Name = "FR Ultralight Hollow",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_stock_light.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_stock_light_v1.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.02
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.02
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.97
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.97
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_stock_stable"] = {
    Name = "FSS Tac-Wrap",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_stock_stable.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_stock_stable_v1.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95 
    end
}

MW_ATT_KEYS["attachment_vm_ar_falpha_stock_tactical_v1"] = {
    Name = "FORGE TAC Ballast Pack",
    Model = Model("models/viper/mw/attachments/falpha/attachment_vm_ar_falpha_stock_tactical_v1.mdl"),
    Icon = Material("viper/mw/attachments/icons/falpha/icon_attachment_ar_falpha_stock_tactical_v1.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.13
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.13
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
    end
}