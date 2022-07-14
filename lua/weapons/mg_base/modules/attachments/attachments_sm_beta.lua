AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_beta_mag"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_mag.mdl"),
    Stats = function(self)
        self.Primary.ClipSize = 25
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_xmags"] = {
    Name = "84 Round Helical Mags",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 84
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.85
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.94
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barrel.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_barlong"] = {
    Name = "8.7 Polygonal",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barlong.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.99
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.99
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.02
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_barmid"] = {
    Name = "8.7 Steel",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barmid.mdl"),
    Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barmid.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.97
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.97
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.91
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.91
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.04
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.04
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_barshort"] = {
    Name = "8.7 Aluminum",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_barshort.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_beta_stockmrkt"] = {
    Name = "Factory Aluminum Stock",
    Model = Model("models/viper/mw/attachments/beta/attachment_vm_sm_beta_stockmrkt.mdl"),
    Icon = Material("viper/mw/attachments/icons/beta/icon_attachment_sm_beta_stockmrkt.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.15
    end
}