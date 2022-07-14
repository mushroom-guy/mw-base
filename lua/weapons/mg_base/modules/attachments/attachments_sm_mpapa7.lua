AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sm_mpapa7_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_mag.mdl"),
    Stats = function(self)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_mmags"] = {
    Name = "50 Round Mags",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_mmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_mmags.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 50
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
        weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_xmags"] = {
    Name = "60 Round Mags",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_xmags.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_xmags.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 60
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag2
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag2
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.85
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_barlight"] = {
    Name = "FSS SWAT",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_barlight.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.05
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.05
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.98
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.98
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_barlong"] = {
    Name = "FSS Recon",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_barlong.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.96
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.96
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_barlong2"] = {
    Name = "FSS Strike",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_barlong2.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_barlong2.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.06
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_mpapa7_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/mpapa7/attachment_vm_sm_mpapa7_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["xrk_retractable_stock"] = {
    Name = "XRK Retractable Stock",
    Model = Model("models/jacob_lhh3_ports/modernwarfare2019/weapons/mp7/attachments/xrk_retractable_stock.mdl"),
    Icon = Material("viper/mw/attachments/icons/mpapa7/icon_attachment_sm_mpapa7_stock_v2.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.06
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.06
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.09
    end
}

MW_ATT_KEYS["fss_folding_grip"] = {
    Name = "FSS Folding Grip",
    Model = Model("models/jacob_lhh3_ports/modernwarfare2019/weapons/mp7/attachments/fss_folding_grip.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_vertgrip.vmt"),
    Stats = function(self)
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.04
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.04
        weapon.Animations.Sprint_Out.Fps = weapon.Animations.Sprint_Out.Fps * 1.1
        weapon.HoldType = "RifleWithVerticalGrip"
    end
}