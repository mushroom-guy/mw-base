AddCSLuaFile()

local function tenmilConversion(self)
    self.Bullet.Damage[1] = self.Bullet.Damage[1] * 1.19
    self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.1
    self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.15
    self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.15
    self.Bullet.Range = self.Bullet.Range * 1.25
    self.Cone.Increase = self.Cone.Increase * 1.35
    self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.2
end

MW_ATT_KEYS["attachment_vm_sm_mpapa5_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_ar_mpapa5_lightstock.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 25
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_mag_xmag"] = {
    Name = "45 Round Mags",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_mag_xmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_mag_xmag_clip.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 45
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
        --[[self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag]]
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_mag_xmag2"] = {
    Name = "10mm Auto 30-Round Mags",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_mag_xmag2.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_mag_xmag2.vmt"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
        --[[self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag]]
        tenmilConversion(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.99
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.99
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_ar_mpapa5_lightstock.vmt"),
    Flashlight = {
        FlashlightMaterial = Material("effects/flashlight001.vmt"),
        Color = Color(255, 255, 255, 255),
        Attachment = "flashlight"
    },
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_barrel_noflash"] = {
    Name = "Default (No flashlight)",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_railgrip.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_barshort"] = {
    Name = "FSS Mini",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_barshort.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.92
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.92
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_barrel_suppressor"] = {
    Name = "Subsonic Integral Suppressor",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel_suppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_barrel_suppressor.vmt"),
    Stats = function(self)
        self.PrintName = "MP5SD"
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.94
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.94
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_barrel_suppshort"] = {
    Name = "Monolithic Integral Suppressor",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_barrel_suppshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_barrel_suppressor_v4.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.06
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.06
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.03
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.03
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_railgrip"] = {
    Name = "FSS Light",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_railgrip.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_railgrip.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.1
    end
}


MW_ATT_KEYS["attachment_vm_sm_mpapa5_stock"] = {
    Name = "Default Stock",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_stock_tactical.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_stock_fullstock"] = {
    Name = "Classic Straight-line Stock",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_stock_fullstock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_stock_fullstock.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.94
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.94
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.9
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa5_stock_nostock"] = {
    Name = "FTAC Collapsible",
    Model = Model("models/viper/mw/attachments/mpapa5/attachment_vm_sm_mpapa5_stock_nostock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa5/icon_attachment_sm_mpapa5_stock_nostock.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
        self.Recoil.ViewModelMultiplier = 2.25
    end
}