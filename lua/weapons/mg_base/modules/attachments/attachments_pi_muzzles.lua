AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_flashhider_psl01"] = {
    Name = "Flash Guard",
    Model = Model("models/viper/mw/attachments/attachment_vm_flashhider_psl01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider_pstl01.vmt"),
    Stats = function(self)
    end 
}

MW_ATT_KEYS["attachment_vm_muzzlebrake_pstl01"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/attachment_vm_muzzlebrake_pstl01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlebrake_pstl01.vmt"),
    Stats = function(self)
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.98
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.98
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.98
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.98
    end  
}

MW_ATT_KEYS["attachment_vm_compensator_pstl01"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/attachment_vm_compensator_pstl01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_compensator_pstl01.vmt"),
    Stats = function(self)
        self.Cone.Hip = self.Cone.Hip * 0.9
        self.Cone.Ads = self.Cone.Ads * 0.9
    end 
}

MW_ATT_KEYS["attachment_vm_oil_filter_suppressor"] = {
    Name = "Oil Can Suppressor",
    Model = Model("models/viper/mw/attachments/attachment_vm_oil_filter_suppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_oil_filter_suppressor.vmt"),
    Stats = function(self)
    end 
}

MW_ATT_KEYS["attachment_vm_silencerpstl"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/attachment_vm_silencer_pstl_02.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_silencer_pstl_02.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.94
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.94
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.07
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.07
    end 
}

MW_ATT_KEYS["attachment_vm_silencer_pstl_02"] = {
    Name = "Lightweight Suppressor",
    Model = Model("models/viper/mw/attachments/attachment_vm_silencerpstl.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_silencerpstl.vmt"),
    Stats = function(self)
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.02
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.02
    end 
}

MW_ATT_KEYS["attachment_vm_silencerpstl03"] = {
    Name = "Tactical Suppressor",
    Model = Model("models/viper/mw/attachments/attachment_vm_silencerpstl03.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_silencerpstl03.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.99
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.99
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.98
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.98
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.04
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.04
    end 
}
