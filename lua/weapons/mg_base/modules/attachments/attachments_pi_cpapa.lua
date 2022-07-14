AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_pi_cpapa_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel.vmt")
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_barrel_long"] = {
    Name = ".357 Long",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_barrel_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel_long.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.08
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.08
    end
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_shortbarrel"] = {
    Name = ".357 Snub Nose",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_shortbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_shortbarrel.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.1
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.1
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.13
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.13
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_barrel_v2"] = {
    Name = "Silverfield Ordnance .357",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_barrel_v2.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel_v2.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95 
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_grip"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_grip.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_grip.vmt")
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_grip_stock"] = {
    Name = "Lockwood .357 Custom Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_grip_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_grip_stock.vmt"),
    Stats = function(self)
        self:SetViewModel("models/viper/mw/weapons/v_357_stock.mdl")
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.8
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.8 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.5
    end
}

MW_ATT_KEYS["attachment_vm_pi_cpapa_stockl"] = {
    Name = "FSS Raider Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_stockl.vmt"),
    Stats = function(self)
        self:SetViewModel("models/viper/mw/weapons/v_357_stock.mdl")
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.88
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.88
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.88
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.88
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 0.65
    end
}