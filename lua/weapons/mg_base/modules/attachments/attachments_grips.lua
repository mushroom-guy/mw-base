AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_angledgrip_lod0"] = {
    Name = "Tactical Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_angledgrip_lod0.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_angledgrip.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.05
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.05
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.05
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_angledgrip04"] = {
    Name = "Commando Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_angledgrip04.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_angledgrip02.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.08
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.08
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.08
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.08
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 1.02
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 1.02
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 1.02
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 1.02
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip02_lod0"] = {
    Name = "Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip02_lod0.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip02.vmt"),
    Stats = function(self)
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.95
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.95
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip03"] = {
    Name = "Ranger Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip03.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip03.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.98
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.98
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.98
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.98
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.93
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.93
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip_stubby01"] = {
    Name = "Merc Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby01.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby01.vmt"),
    Stats = function(self)
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.9
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.9
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip_stubby02"] = {
    Name = "Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby02.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby02.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.94
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.94
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.94
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.94
        self.Recoil.Vertical[1] =  self.Recoil.Vertical[1] * 0.9
        self.Recoil.Vertical[2] =  self.Recoil.Vertical[2] * 0.9
        self.HoldType = "RifleWithVerticalGrip"
    end
}

MW_ATT_KEYS["attachment_vm_vertgrip_stubby04"] = {
    Name = "Operator Foregrip",
    Model = Model("models/viper/mw/attachments/attachment_vm_vertgrip_stubby04.mdl"),
    Icon = Material("viper/mw/attachments/icons/grips/icon_attachment_vertgrip_stubby04.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.97
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.97
        self.Recoil.Horizontal[1] =  self.Recoil.Horizontal[1] * 0.85
        self.Recoil.Horizontal[2] =  self.Recoil.Horizontal[2] * 0.85
        self.HoldType = "RifleWithVerticalGrip"
    end
}