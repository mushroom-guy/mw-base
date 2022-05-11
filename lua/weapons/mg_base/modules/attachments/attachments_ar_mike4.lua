AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_ar_mike4_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_mag.mdl"),
    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

local function doCalConversionStats(self)
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")
    local bSup5 = self:HasAttachment("attachment_vm_ar_mike4_barsil")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mike4_mag_v5")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
        self.Primary.Sound = Sound("mw19_mcharlie.fire.cal")
        self.Reverb = {
            RoomScale = 50000,
            Sounds = {
                Outside = {
                    Layer = Sound("Atmo_SMG.Outside"),
                    Reflection = Sound("Reflection_AR.Outside")
                },
        
                Inside = { 
                    Layer = Sound("Atmo_SMG.Inside"),
                    Reflection = Sound("Reflection_AR.Inside")
                }
            }
        }
    end

    self.Primary.Ammo = "SMG1"
    self.Shell.Model = Model("models/viper/mw/shells/fx_pistol_shell_lod0.mdl")
    self.Shell.Scale = 0.5
    self.Shell.Sound = Sound("MW_Casings.9mm")
end

MW_ATT_KEYS["attachment_vm_ar_mike4_calsmg"] = {
    Name = "9mm Para 32-Round Mags",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_calsmg.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_calsmg.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 32
        self.Animations.Reload = self.Animations.Reload_Calsmg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Calsmg
        self.Animations.Reload_Fast = self.Animations.Reload_Calsmg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Calsmg_Fast
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 0.7
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 0.8
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.6
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.6
        self.Primary.RPM = self.Primary.RPM * 1.25
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.1
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.1
        self.Cone.Increase =  self.Cone.Increase * 0.5
        doCalConversionStats(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_xmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_xmags.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 50
        self.Animations.Reload = self.Animations.Reload_Xmag
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_Xmag
        self.Animations.Reload_Fast = self.Animations.Reload_Xmag_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Xmag_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.9
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_mag_v5"] = {
    Name = ".458 SOCOM 10-Round Mags",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_mag_v5.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_mag_v5.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 10
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
        self.Animations.Reload_Fast = self.Animations.Reload_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_Fast
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.25
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 1.4
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.4
        self.Primary.RPM = self.Primary.RPM * 0.75
        doSocomConversionStats(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_carryhandle"] = {
    Name = "Carry Handle",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_carryhandle.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_carryhandle.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_carryhandle_v18"] = {
    Name = "Carry Handle",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_carryhandle_v18.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_carryhandle.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_xmags2"] = {
    Name = "60 Round Mags",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_xmags2.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_xmags2.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 60
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Animations.Reload.Fps = self.Animations.Reload.Fps * 0.85
        self.Animations.Reload_Empty.Fps = self.Animations.Reload_Empty.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barrel.mdl")
}

MW_ATT_KEYS["attachment_vm_ar_mike4_custombarrel"] = {
    Name = "Corvus Custom Marksman",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_custombarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_barcust_mike4.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.92
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.92
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.94
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.94
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_mike203barrel"] = {
    Name = "Stock M16 Grenadier",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_mike203barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_barmid_mike4.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.1
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_shortbarrel"] = {
    Name = "FSS 11.5 Commando",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_shortbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_barshort_mike4.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.13
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.13
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.15
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.15
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 0.9
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_barrel_v3_alt"] = {
    Name = "FSS 14.5 Tac Lite",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barrel_v3_alt.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_bar_mike4_v03.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Cone.Ads =  self.Cone.Ads * 0.95
        self.Cone.Increase =  self.Cone.Increase * 0.85
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.07
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.07
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_barsil"] = {
    Name = "FSS 12.4 Predator",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_barsil.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_ar_mike4_barsil.vmt"),
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.95
        self.Cone.Ads =  self.Cone.Ads * 0.95
        self.Cone.Increase =  self.Cone.Increase * 0.85
        self.Recoil.AdsMultiplier = self.Recoil.AdsMultiplier * 1.05
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.04
        self.Bullet.DropOffStartRange = self.Bullet.DropOffStartRange * 1.04
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_stockno"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_no.vmt"),
    Stats = function(self)
        self.Recoil.AdsMultiplier = 0.5
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
    end
}

MW_ATT_KEYS["attachment_vm_ar_mike4_customstock"] = {
    Name = "M-16 Stock",
    Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_customstock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_stockcust_mike4.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.86
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.86
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.86
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.86
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.89
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.89 
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.92
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.92
    end
}