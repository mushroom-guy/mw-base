AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_asierra12_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_xmags"] = {
    Name = "25 Round Mags",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 25
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_xxmags"] = {
    Name = "30 Round Mags",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_xxmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_xxmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 30
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.85
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_muzzlebrake"] = {
    Name = "Muzzlebrake",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_muzzlebrake.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_muzzlebrake01.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_longsuppressor"] = {
    Name = "Collosus Suppressor",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_longsuppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_longsuppressor.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.85
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.85
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.75
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.75
        self.Bullet.EffectiveRange =  self.Bullet.EffectiveRange * 1.2
        self.Bullet.DropOffStartRange =  self.Bullet.DropOffStartRange * 1.2
    end 
}


MW_ATT_KEYS["attachment_vm_ar_asierra12_scope"] = {
    Name = "Sniper Scope",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_scope.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_scope.vmt"),
    Optic = {
        LensHideMaterial = Material("viper/MW/weapons/asierra12/weapon_vm_ar_asierra12_scopeglass.vmt"),
        LensBodygroup = "lens",
        FOV = 7, 
        ParallaxSize = 400, --a value of zero means 1:1 size with the end of the optic
        Thermal = false
    },
    Reticle = {
        Material = Material("viper/mw/reticles/reticle_int_default.vmt"),
        Size = 800,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
    },
    Stats = function(self)
        --self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 3
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.89
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.89
        self.Zoom.ViewModelFovMultiplier = 0.95
        self.Zoom.FovMultiplier = 0.8
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_barshort"] = {
    Name = "Oden Factory 420mm",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_barshort.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.06
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.06
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_barlong"] = {
    Name = "Oden Factory 730mm",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_barlong.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.96
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.96
        self.Bullet.EffectiveRange =  self.Bullet.EffectiveRange * 1.05
        self.Bullet.DropOffStartRange =  self.Bullet.DropOffStartRange * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_barlong2"] = {
    Name = "Oden Factory 810mm",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_barlong2.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_barlong2.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.91
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.91
        self.Bullet.EffectiveRange =  self.Bullet.EffectiveRange * 1.13
        self.Bullet.DropOffStartRange =  self.Bullet.DropOffStartRange * 1.13
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_stock"] = {
    Name = "Default",
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_stockh"] = {
    Name = "FORGE TAC Ballast Pack",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_stockh.vmt"),
    Stats = function(self)
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.13
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.13
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_ar_asierra12_stockl"] = {
    Name = "Oden Ultralight Hollow",
    Model = Model("models/viper/mw/attachments/asierra12/attachment_vm_ar_asierra12_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/asierra12/icon_attachment_ar_asierra12_stockl.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.02
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.02
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.97
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.97
    end
}