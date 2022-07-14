AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_anovember94_thermal_v3"] = {
    Name = "POS-M3 Thermal Scope",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_thermal_v3.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_thermal.vmt"),
    Optic = {
        LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_east_lens.vmt"),
        LensBodygroup = "lens",
        FOV = 7, 
        ParallaxSize = 0, --a value of zero means 1:1 size with the end of the optic
        Thermal = true
    },
    Reticle = {
        Material = Material("viper/mw/reticles/reticle_acog_default2.vmt"),
        Size = 700,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
    },
    Stats = function(self)
        --self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.89
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Zoom.ViewModelFovMultiplier = 0.95
        self.Zoom.FovMultiplier = 0.8
    end
}

MW_ATT_KEYS["attachment_vm_ar_anovember94_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_anovember94_muzzlebrake"] = {
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_tag_tip_5.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_brake.vmt"),
    Name = "AN-94 Sonic Brake",
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_xmags"] = {
    Name = "45 Round Mags",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 45
        self.Animations.Reload = self.Animations.reload_xmag
        self.Animations.Reload_Empty = self.Animations.reload_empty_xmag
        self.Animations.Reload_Fast = self.Animations.reload_xmag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_xmag_fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        --self.Animations.Reload_Empty.Length = self.Animations.Reload_Empty.Length + 0.15
        --self.Animations.Reload.Length = self.Animations.Reload.Length + 0.05
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_xmagslrg"] = {
    Name = "60 Round Casket Mags",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_xmagslrg.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_xmagslrg.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 60
        self.Animations.Reload = self.Animations.reload_xmaglrg
        self.Animations.Reload_Empty = self.Animations.reload_empty_xmaglrg
        self.Animations.Reload_Fast = self.Animations.reload_xmaglrg_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_xmaglrg_fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.85
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_ar_anovember94_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_anov94_barhvy"] = {
    Name = "VLK AN-94 Sila",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_barhvy.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_barhvy.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.94
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.94
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_barlong"] = {
    Name = "AN-94 Factory X-438mm",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_barlong.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.06
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.06
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_barshort"] = {
    Name = "AN-94 Factory 330mm",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_barshort.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.07
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.07
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.94
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_ar_anovember94_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anovember94_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_stockh"] = {
    Name = "AN-94 Factory Heavy",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stockh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.89
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.89 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.88
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.88
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.85
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.85
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.85
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_stockl"] = {
    Name = "FORGE TAC Ultralight",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stockl.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.15
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.15
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.1
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.1
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.1
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_stocks"] = {
    Name = "FSS Close Quarters Stock",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stocks.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.09
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.09
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.05
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.05
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.05
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_anov94_stockskel"] = {
    Name = "VLK PX-9 Pero",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stockskel.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stockskel.vmt"),
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

MW_ATT_KEYS["attachment_vm_ar_anov94_stockno"] = {
    Name = "Folded Stock",
    Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_stockno.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
        self.Recoil.ViewModelMultiplier = 2.25
    end
}