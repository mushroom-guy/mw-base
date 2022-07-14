AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_mike9_barauto"] = {
    Name = "Mk3 Burst Mod",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barauto.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barauto.vmt"),
    Stats = function(self)
        self.Primary.RPM = 1000
        self.Primary.BurstRounds = 3
        self.Primary.BurstDelay = 0.2
        self.Firemodes[1].Name = "3rnd Burst"
        self.Recoil.Shake = self.Recoil.Shake * 1.3
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 2.5
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_barlight"] = {
    Name = "Mk1 Competition",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barlight.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Cone.Increase = self.Cone.Increase * 0.5
        self.Cone.Hip = self.Cone.Hip * 0.5
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_barlong"] = {
    Name = "Mk1 Extended",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barlong.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.07
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.07
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_barrel"] = {
    Name = "Default Slide (Tan)",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barrel.mdl")
}

MW_ATT_KEYS["attachment_vm_pi_mike9_barrel_black"] = {
    Name = "Default Slide (Black)",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_barrel_black.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_barrel.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_xmags"] = {
    Name = "21 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_xmagslrg.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 21
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_compensator"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_compensator.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_compensator_v2.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_xmagslrg"] = {
    Name = "27 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_xmagslrg.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_xmagslrg_v2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 27
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_stock"] = {
    Name = "FTAC Satus CS-3",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_stock.vmt"),
    Stats = function(self)
        self:SetViewModel("models/viper/mw/weapons/v_m9_stock.mdl")
        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.16, 0, 0)
        --self.Recoil.Shake = self.Recoil.Shake * 0.74
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.85
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.5
        self.Zoom.Blur.EyeFocusDistance = 11
    end
}

MW_ATT_KEYS["no_pistgrip"] = {
    Name = "Default Pistolgrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_pgrip.mdl"),
}

MW_ATT_KEYS["attachment_vm_pi_mike9_pstlgrpcust"] = {
    Name = "XRK Pro Grip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_pstlgrpcust.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_pstlgrpcust.vmt"),
    Stats = function(self)
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_pstlgrplght"] = {
    Name = "XRK Speed Grip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_pstlgrplght.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_pstlgrplght.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.2
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.07
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.07
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_pi_mike9_gripvert"] = {
    Name = "Folding Grip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_mike9_gripvert.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_pstlgrpcust_v2.vmt"),
    Stats = function(self)
    self:SetGripPoseParameter("grip_offset")
    self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.85
    self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.85
    self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
    self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
    self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.93
    self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.93
    end
}