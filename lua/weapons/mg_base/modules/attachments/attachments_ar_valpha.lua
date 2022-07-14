AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_valpha_scope"] = {
    Name = "Dragunov Scope",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_scope.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_scope.vmt"),
    Optic = {
        LensHideMaterial = Material("viper/MW/weapons/valpha/weapon_vm_sn_delta_scope_lens.vmt"),
        LensBodygroup = "lens",
        FOV = 5, 
        ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
        Thermal = false
    },
    Reticle = {
        Material = Material("viper/shared/reticles/po4x_crosshair_remake"),
        Size = 2500,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
    },
    Stats = function(self)
        --self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.89
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Zoom.ViewModelFovMultiplier = 0.95
        self.Zoom.FovMultiplier = 0.8
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_smags"] = {
    Name = "SPP 10-R Mags",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_smags.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_smags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 10
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 1.33
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.33
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.25
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.25
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.07
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.07
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.12
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.12
        self.Animations.Reload = self.Animations.reload_smag
        self.Animations.Reload_Empty = self.Animations.reload_empty_smag
        self.Animations.Reload_Fast = self.Animations.reload_smag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_smag_fast
        self.Animations.Inspect = self.Animations.inspect_smag
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_xmags"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 30
        self.Animations.Reload = self.Animations.reload_xmag
        self.Animations.Reload_Empty = self.Animations.reload_empty_xmag
        self.Animations.Reload_Fast = self.Animations.reload_xmag_fast
        self.Animations.Reload_Empty_Fast = self.Animations.reload_empty_xmag_fast
        self.Animations.Inspect = self.Animations.inspect_xmag
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.95
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_ar_valpha_barhvy"] = {
    Name = "VLK 200mm Osa",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barhvy.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_barhvy.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.07
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.07
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.08
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_barlight"] = {
    Name = "VLK 105mm Sova",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_barlight.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.12
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.12
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.13
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.13
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.125
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.95
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_barshort"] = {
    Name = "Stovl SOF",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_barshort.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.17
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.17
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.2
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.2
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.125
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_stockh"] = {
    Name = "VLK Vintazh",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stockh.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.88
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.88
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.91
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.91
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.91
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.91
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_stocks"] = {
    Name = "FSS Intl. Gen 4 GRU",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stocks.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.09
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.09
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.05
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.05
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.05
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_stockskel"] = {
    Name = "Stovl 6P30 Skelet",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stockskel.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stockskel.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.13
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.13
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.11
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.11
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.11
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.11
    end
}

MW_ATT_KEYS["attachment_vm_ar_valpha_stocksn"] = {
    Name = "VLK Strelok",
    Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_stocksn.mdl"),
    Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_stocksn.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.84
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.84
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.82
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.82
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.83
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.83
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.83
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.83
    end
}