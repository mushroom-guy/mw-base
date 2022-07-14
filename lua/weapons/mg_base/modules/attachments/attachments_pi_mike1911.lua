AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_mike1911_v1_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_v1_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_v1_mag.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_mmags"] = {
    Name = "10 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_mmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_mmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 10
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.93
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.93
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_xmags"] = {
    Name = "15 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 15
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.88
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.88
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.95
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_muzzlebrake"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_muzzlebrake.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_muzzlebrake.vmt"),
    Stats = function(self)
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.98
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.98
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.98
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.98
    end 
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_v1_slide"] = {
    Name = "Default Slide",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_v1_slide.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_barlong"] = {
    Name = ".45 Match Grade",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_barlong.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.94
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.94 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_barshort"] = {
    Name = ".45 Compact",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_barshort.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.96
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.96
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.07
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike1911_v2_slide"] = { 
    Name = "1911 Stalker",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike1911_v2_slide.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike1911/icon_attachment_pi_mike1911_v2_slide.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.02
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.02
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
    end
}