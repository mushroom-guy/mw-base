AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_golf21_slide_black"] = {
    Name = "Vanguard Elite",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide_black.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide.vmt"),
    Stats = function(self)
        self.Firemodes[1].Name = "3rnd Burst"
        self.Primary.RPM = 1200
        self.Primary.BurstRounds = 3
        self.Primary.BurstDelay = 0.2
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 5
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_slide_long"] = {
    Name = "Singuard Arms Advantage",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_long.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.04
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.04
        self.Primary.RPM = self.Primary.RPM + 100
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_slide_auto"] = {
    Name = "Singuard Arms Featherweight",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide_auto.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_auto.vmt"),
    Stats = function(self)
        self.Firemodes[1].Name = "Full Auto"
        self.Primary.Automatic = true
        self.Primary.RPM = 1200
        self.Cone.Max = 2
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 5
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_slide"] = {
    Name = "Default Slide",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_slide.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_pi_golf21_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_mag.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_mag_xmags"] = {
    Name = "17 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_mag_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_mag_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 17
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_mag_xmags2"] = {
    Name = "26 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_mag_xmags2.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_mag_xmags2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 26
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.85
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_golf21_stock"] = {
    Name = "X16 Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_golf21_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_stock.vmt"),
    Stats = function(self)
        self:SetViewModel("models/viper/mw/weapons/v_glock_stock.mdl")
        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.05)
        self.ViewModelOffsets.Idle.Pos = Vector(-0.15, -0.5, -0.5)
        self.Zoom.Blur.EyeFocusDistance = 10
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.85
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.5
    end
}