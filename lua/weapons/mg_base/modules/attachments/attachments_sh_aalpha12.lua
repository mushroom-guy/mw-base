AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_aalpha12_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_barlong"] = {
    Name = "ZLR J-3600 Torrent",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_barlong.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.85
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.85
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_barhvy"] = {
    Name = "ZLR J-2800 Influx",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_barhvy.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_barhvy.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_barshort"] = {
    Name = "JAK Urban King",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_barshort.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Cone.Hip =  weapon.Cone.Hip * 1.2
        weapon.Cone.Ads =  weapon.Cone.Ads * 1.2
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_mag.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_slugmag"] = {
    Name = "12g Mags", 
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_slugmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_slugmag.vmt"),
    Stats = function(weapon)
        if (weapon:HasAttachment("sh_flechette")) then
            return
        end

        weapon.Bullet.NumBullets = 6
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_drummag"] = {
    Name = "32 Round Drum Mags",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_drummag.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 32
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.7
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.7
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.7
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.7
        weapon.Animations.Reload = weapon.Animations.reload_drum
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_drum
        weapon.Animations.Inspect = weapon.Animations.inspect_drum
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.8
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_xmags"] = {
    Name = "20 Round Drum Mags",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_xmags.vmt"),
    Stats = function(weapon)
        weapon.Primary.ClipSize = 20
        weapon.Animations.Reload = weapon.Animations.reload_drum
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_drum
        weapon.Animations.Inspect = weapon.Animations.inspect_drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.84
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.84
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_stockh"] = {
    Name = "ZLR Tsunami",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stockh.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stockh.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_stockl"] = {
    Name = "JAK Rabbit Ultralight",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stockl.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.25
    end
}

MW_ATT_KEYS["attachment_vm_sh_aalpha12_stocks"] = {
    Name = "FSS Power Wrap",
    Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_stocks.vmt"),
    Stats = function(weapon)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.12
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.12
    end
}