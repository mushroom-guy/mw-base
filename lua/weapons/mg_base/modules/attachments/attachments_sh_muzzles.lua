AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_compensator_shgn01"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/shotgun//attachment_vm_compensator_shgn01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_compensator_shgn01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Cone.Hip = self.Cone.Hip * 0.76
        self.Cone.Ads = self.Cone.Ads * 0.76
    end
}


MW_ATT_KEYS["attachment_vm_flashhider_shtgn01"] = {
    Name = "Flash Guard",
    Model = Model("models/viper/mw/attachments/shotgun//attachment_vm_flashhider_shtgn01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider_shtgn01.vmt"),
    Stats = function(self)
    end
}


MW_ATT_KEYS["attachment_vm_muzzlebrake_shgn01"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/shotgun//attachment_vm_muzzlebrake_shgn01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlebrake_shgn01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.93
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.93
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.9
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.9
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.9
    end
}


MW_ATT_KEYS["attachment_vm_muzzlemelee_shgn01"] = {
    Name = "Breacher Device",
    Model = Model("models/viper/mw/attachments/shotgun/attachment_vm_muzzlemelee_shgn01.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlemelee_shgn01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97 
        self.Animations.Melee_Hit.Damage = self.Animations.Melee_Hit.Damage * 1.5
    end
}


MW_ATT_KEYS["attachment_vm_sh_romeo870_choke"] = {
    Name = "Choke",
    Model = Model("models/viper/mw/attachments/shotgun/attachment_vm_sh_romeo870_choke.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_sh_romeo870_choke.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.88
        self.Cone.Ads =  self.Cone.Ads * 0.88
    end
}