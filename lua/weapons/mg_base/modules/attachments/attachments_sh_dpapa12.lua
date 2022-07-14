AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_sh_dpapa12_barrel"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barrel.mdl"),
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_barmid"] = {
    Name = "FORGE TAC Gemini",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barmid.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_barmid.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.06
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_barlong"] = {
    Name = "FORGE TAC Sentry",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barlong.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_barlong.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Cone.Hip = weapon.Cone.Hip * 0.9
        weapon.Cone.Ads = weapon.Cone.Ads * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_barshort"] = {
    Name = "6 Revolt",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_barshort.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_barshort.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    end
} --Doesn't exist in the game, but in the files.

MW_ATT_KEYS["attachment_vm_sh_dpapa12_ammo"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_ammo.mdl"),
    Stats = function(weapon)
        weapon.Animations.Reload = weapon.Animations.Reload
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_grip"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_grip.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_pump"] = {
    Name = "Default",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump.mdl"),
    Stats = function(weapon)
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_pump_light"] = {
    Name = "FTAC Ultralight Pump",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_light.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_light.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
        weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.15
        weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.15
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_pump_stable"] = {
    Name = "FSS R9-0 Bulldog",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_stable.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_stable.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.7
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 0.85
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_pump_tactical"] = {
    Name = "FTAC Close Quarters Pro",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_pump_tactical.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_pump_tactical.vmt"),
    Stats = function(weapon)
        weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.4
        weapon.Animations.Rechamber.Fps = weapon.Animations.Rechamber.Fps * 1.2
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_choke"] = {
    Name = "Choke",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_choke.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_sh_romeo870_choke.vmt"),
    Stats = function(weapon)
        weapon.Cone.Hip =  weapon.Cone.Hip * 0.88
        weapon.Cone.Ads =  weapon.Cone.Ads * 0.88
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_comp"] = {
    Name = "Compensator",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_comp.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_compensator_shgn01.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
        weapon.Cone.Hip = weapon.Cone.Hip * 0.76
        weapon.Cone.Ads = weapon.Cone.Ads * 0.76
    end 
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_muzzlebrake"] = {
    Name = "Muzzle Brake",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_muzzlebrake.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlebrake_shgn01.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
        weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.9
        weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.9
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.9
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.9
    end 
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_muzzlemelee"] = {
    Name = "Breacher Device",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_muzzlemelee.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_muzzlemelee_shgn01.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97 
        weapon.Animations.Melee_Hit.Damage = weapon.Animations.Melee_Hit.Damage * 1.5
    end
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_flashhider"] = {
    Name = "Flash Guard",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_flashhider.mdl"),
    Icon = Material("viper/mw/attachments/icons/muzzle/icon_attachment_flashhider_shtgn01.vmt"),
    Stats = function(weapon)
    end 
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_silencer01"] = {
    Name = "Lightweight Suppressor",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_silencer02.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_silencer02.vmt"),
    Stats = function(weapon)
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    end 
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_silencer02"] = {
    Name = "Monolithic Suppressor",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_silencer01.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_silencer01.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
    end 
}

MW_ATT_KEYS["attachment_vm_sh_dpapa12_silencer03"] = {
    Name = "Tactical Suppressor",
    Model = Model("models/viper/mw/attachments/dpapa12/attachment_vm_sh_dpapa12_silencer03.mdl"),
    Icon = Material("viper/mw/attachments/icons/dpapa12/icon_attachment_sh_dpapa12_silencer03.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.98
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.98
        weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04 

        
    end 
}

--experimental
MW_ATT_KEYS["attachment_vm_vertgrip_stubby02_dpapa12"] = {
    Name = "Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby02.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby02.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.94
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.94
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.94
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.94
        weapon.Recoil.Vertical[1] =  weapon.Recoil.Vertical[1] * 0.9
        weapon.Recoil.Vertical[2] =  weapon.Recoil.Vertical[2] * 0.9
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip_stubby04_dpapa12"] = {
    Name = "Operator Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby04.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby04.vmt"),
    Stats = function(weapon)
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.97
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.97
        weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.85
        weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.85
    end
}