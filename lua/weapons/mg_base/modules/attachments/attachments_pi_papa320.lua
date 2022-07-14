AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_papa320_slide_black"] = {
    Name = "XRK L Super",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_slide_black.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_pi_papa320_slide_vented"] = {
    Name = "A9-16 Lightweight",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_slide_vented.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.02
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.02
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
    end
}

MW_ATT_KEYS["attachment_vm_pi_papa320_barrel_ext"] = {
    Name = "XRK V Extended",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_barrel_ext.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_barrel_ext.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.05
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.94
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.94 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_pi_papa320_slide"] = {
    Name = "Default Slide",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_slide.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_pi_papa320_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_mag.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_pi_papa320_mag_ext"] = {
    Name = "21 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_mag_ext.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_mag_ext.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 21
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.93
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.93
    end
}

MW_ATT_KEYS["attachment_vm_pi_papa320_mag_ext2"] = {
    Name = "32 Round Mags",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_papa320_mag_ext2.mdl"),
    Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_mag_ext2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 32
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.88
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.88
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.95
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.95
    end
}