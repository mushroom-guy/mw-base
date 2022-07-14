AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_decho_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_mag.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_xmags"] = {
    Name = "10 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 10
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.95
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_xmags2"] = {
    Name = "13 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_xmags2.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_xmags2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 13
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_muzzlebrake"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_muzzlebrake.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_muzzlebrake.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9 
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.85
    end 
}

MW_ATT_KEYS["attachment_vm_pi_decho_slide"] = {
    Name = "Default Slide",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_slide.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_slide.vmt"),
}

MW_ATT_KEYS["attachment_vm_pi_decho_slide_extended02"] = {
    Name = "FORGE TAC Enforcer",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_slide_extended02.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_slide_extended02.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.03
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_slide_extended"] = {
    Name = "FORGE TAC Extended",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_slide_extended.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_slide_extended.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.12
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.85
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.85
        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.1)
        self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0, 0, -0.2) 
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_grip"] = {
    Name = "Default Grip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_grip.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_grip.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_pi_decho_cust_grip"] = {
    Name = "Rubberized Grip",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_decho_cust_grip.mdl"),
    Icon = Material("viper/mw/attachments/icons/decho/icon_attachment_pi_decho_pistolgrip_tape_v2.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}