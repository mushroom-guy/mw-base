AddCSLuaFile()

local function doSuppressorStats(self)
    weapon.Primary.Sound = Sound("mw19.victor.fire.s")
    weapon.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_SMG_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

MW_ATT_KEYS["attachment_vm_sm_victor_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_mag.mdl"),
    Stats = function(self)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_smags"] = {
    Name = "9mm Hollow Point 12-R Mags",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_smags.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_smags.vmt"),
    Stats = function(self)
        weapon.Primary.RPM = weapon.Primary.RPM - 511
        weapon.Primary.ClipSize = 12
        weapon.Animations.Reload = weapon.Animations.Reload_Smag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.7
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.7
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.7
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.7
        weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.2
        weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.1
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_drummag"] = {
    Name = "40 Round Drums",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_drummag.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 40
        weapon.Animations.Reload = weapon.Animations.Reload_Drum
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_victor_barlong"] = {
    Name = "ZLR 16 Apex",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_barlong.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.12
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.12
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_barsil"] = {
    Name = "ZLR 18 Deadfall",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_barsil.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_barsil.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Cone.Hip = weapon.Cone.Hip * 0.75
        weapon.Cone.Increase = weapon.Cone.Increase * 0.75
        doSuppressorStats(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_suppressor"] = {
    Name = "ZLR Sabre",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_suppressor.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_suppressor.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.95
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.95
    end
}


MW_ATT_KEYS["attachment_vm_sm_victor_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_stockh"] = {
    Name = "FTAC C6 Carbine PRO",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stockh.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.95
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.95
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.95
        --copy of forge tac stalker
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_stockno"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stockno.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stockno.vmt"),
    Stats = function(self)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.5
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.26
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.26
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.26
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.26
        weapon.Recoil.ViewModelMultiplier = 2.25
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_stocks"] = {
    Name = "Forge TAC CQS",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stocks.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.09
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.09
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.05
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.05
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.05
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.05
        --copy of fss close quarters stock
    end
}

MW_ATT_KEYS["attachment_vm_sm_victor_stocksn"] = {
    Name = "ZLR Blade",
    Model = Model("models/viper/mw/attachments/victor/attachment_vm_sm_victor_stocksn.mdl"),
    Icon = Material("viper/mw/attachments/icons/victor/icon_attachment_sm_victor_stocksn.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    end
}