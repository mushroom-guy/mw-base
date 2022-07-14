AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_charlie725_choke"] = {
    Name = "Choke",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_choke.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_choke.vmt"),
    Stats = function(self)
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.88
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.88
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_comp"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_comp.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_comp.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Cone.Hip = weapon.Cone.Hip * 0.76
        weapon.Cone.Ads = weapon.Cone.Ads * 0.76

    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_muzzlebrake"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_muzzlebrake.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_muzzlebrake.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.9
        weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.9
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.9
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.9
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_muzzlemelee"] = {
    Name = "Breacher Device",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_muzzlemelee.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_muzzlemelee.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97 
        weapon.Animations.Melee_Hit.Damage = weapon.Animations.Melee_Hit.Damage * 1.5
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_flashhider"] = {
    Name = "Flash Guard",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_flashhider.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_flashhider.vmt"),
    Stats = function(self)
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_silencer01"] = {
    Name = "Lightweight Suppressor",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_silencer01.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_silencer01.vmt"),
    Stats = function(self)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_silencer02"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_silencer02.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_silencer02.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
    end 
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_silencer03"] = {
    Name = "Tactical Suppressor",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_silencer03.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_silencer03.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04 
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.98
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.98
    end 
}


MW_ATT_KEYS["attachment_vm_sh_charlie725_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_barrel.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_pi_mike1911_v1_slide.vmt")
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_barrel_long"] = {
    Name = "Tempus 32 Competition",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_barrel_long.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_barrel_long.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_barrel_mid"] = {
    Name = "Tempus Smooth Bore",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_barrel_mid.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_barrel_mid.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.05
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.05
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.94
        weapon.Cone.Hip =  weapon.Cone.Hip * 1.1
        weapon.Cone.Ads =  weapon.Cone.Ads * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_barrel_sawnoff"] = {
    Name = "Sawed-off Barrel",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_barrel_sawnoff.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_barrel_sawnoff.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.15
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.15
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.8
        weapon.Cone.Hip = weapon.Cone.Hip * 1.5
        weapon.Cone.Ads = weapon.Cone.Ads * 1.5
    end
}


MW_ATT_KEYS["attachment_vm_sh_charlie725_guard"] = {
    Name = "attachment_vm_sh_charlie725_guard",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_guard.mdl"),
    Stats = function(self)
    end
}


MW_ATT_KEYS["attachment_vm_sh_charlie725_foreendlight"] = {
    Name = "FORGE TAC Grip",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_foreendlight.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_foreendlight.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_forendstable"] = {
    Name = "FORGE TAC Steady Grip",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_forendstable.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_forendstable.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_forendtactical"] = {
    Name = "FORGE TAC Commander",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_forendtactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_forendtactical.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.05
        weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.05
    end
}


MW_ATT_KEYS["attachment_vm_ar_charlie725_stock"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stock.mdl"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_stock_sawnoff"] = {
    Name = "Sawed-off Stock",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stock_sawnoff.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_stock_sawnoff.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
        weapon.Recoil.AdsMultiplier = 1
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_stocklight"] = {
    Name = "Cronen Pro Light",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stocklight.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_stocklight.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
        weapon.Recoil.AdsMultiplier = 0.5
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_stockstable"] = {
    Name = "Cronen Equilibrium",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stockstable.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_stockstable.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
        weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_charlie725_stocktactical"] = {
    Name = "Tempus Sport",
    Model = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_stocktactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/charlie725/icon_attachment_sh_charlie725_stocktactical.vmt"),
    Stats = function(self)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.85
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.85
    end
}