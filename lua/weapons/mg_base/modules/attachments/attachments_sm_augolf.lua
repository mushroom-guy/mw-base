AddCSLuaFile()

local function fivefivesixConversion(self)
    weapon.Primary.RPM = 680
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.195
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.195
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.Penetration.Thickness = weapon.Bullet.Penetration.Thickness * 2
    weapon.Bullet.Range = weapon.Bullet.Range * 1.5
    weapon.Cone.Increase = weapon.Cone.Increase * 2
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.5
end

MW_ATT_KEYS["attachment_vm_sm_augolf_mag"] = {
    Name = "Default Magazine",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_smgmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_ar_augolf_lightstock.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 25
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_armag"] = {
    Name = "5.56 NATO 30-Round Mags",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_armag.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_armag.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 30
        fivefivesixConversion(self)
        weapon.Animations.Reload = weapon.Animations.Reload_ARmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_ARmag
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.96
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.96
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_drummag"] = {
    Name = "5.56 NATO 60-Round Drum",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_drummag.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_drummag.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 60
        fivefivesixConversion(self)
        weapon.Animations.Reload = weapon.Animations.Reload_DrumMag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_DrumMag
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.85
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.85
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_smg_xmag"] = {
    Name = "32 Round Mags",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_smg_xmag.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_smg_xmag.vmt"),
    Stats = function(self)
        weapon.Primary.ClipSize = 32
        weapon.Animations.Reload = weapon.Animations.Reload_Xmag
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_smgbarrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_smgbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_ar_augolf_lightstock.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_arbarrel"] = {
    Name = "407mm Lightweight",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_arbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_arbarrel.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.07
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_arrail"] = {
    Name = "AR Rail",
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_arrail.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_lmgbarrel"] = {
    Name = "622mm Long Barrel",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_lmgbarrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_lmgbarrel.vmt"),
    Stats = function(self)
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.14
        weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.14
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_lmgrail"] = {
    Name = "Integral 3.0x Optic",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_lmgrail.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_lmgrail.vmt"),
    Optic = {
        LensHideMaterial = Material("viper/mw/weapons/augolf/weapon_vm_sm_augolf_scope_lens.vmt"),
        LensBodygroup = "lens",
        FOV = 7, 
        ParallaxSize = 20, --a value of zero means 1:1 size with the end of the optic
        Thermal = false
    },
    Reticle = {
        Material = Material("viper/mw/reticles/reticle_aug.vmt"),
        Size = 800,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
    },
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Zoom.ViewModelFovMultiplier = 0.95
        weapon.Zoom.FovMultiplier = 0.7
        --Scout Combat Optic reskin
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_stock_tactical"] = {
    Name = "FFS Heavy Stock Pro",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_stock_tactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_stock_tactical.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.94
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.75
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_stockl"] = {
    Name = "Forge TAC CQB Comb",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_stockl.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_stockl.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sm_augolf_stocks"] = {
    Name = "FTAC Ultralight Hollow",
    Model = Model("models/viper/mw/attachments/augolf/attachment_vm_sm_augolf_stocks.mdl"),
    Icon = Material("viper/mw/attachments/icons/augolf/icon_attachment_sm_augolf_stocks.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.1
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.1
    end
}