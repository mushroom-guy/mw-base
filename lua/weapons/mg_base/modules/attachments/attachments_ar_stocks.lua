AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_stock_light01"] = {
    Name = "FORGE TAC Ultralight",
    Model = Model("models/viper/mw/attachments/attachment_vm_stock_light01.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_light01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.15
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.15
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.1
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.1
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.1
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.1
    end
}

MW_ATT_KEYS["attachment_vm_stock_no"] = {
    Name = "No Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_stock_no.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_no.vmt"),
    Stats = function(self)
    end
}

MW_ATT_KEYS["attachment_vm_stock_medium01"] = {
    Name = "FSS Close Quarters Stock",
    Model = Model("models/viper/mw/attachments/attachment_vm_stock_medium01.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_medium01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.09
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.09
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 1.05
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 1.05
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 1.05
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 1.05
    end
}

MW_ATT_KEYS["attachment_vm_stock_heavy"] = {
    Name = "FORGE TAC Stalker",
    Model = Model("models/viper/mw/attachments/attachment_vm_stock_heavy.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_medium01.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.95
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.95
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.95
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.95
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.95
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.95
    end
}

MW_ATT_KEYS["attachment_vm_stock_heavy02"] = {
    Name = "FTAC Hunter",
    Model = Model("models/viper/mw/attachments/attachment_vm_stock_heavy02.mdl"),
    Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_heavy02.vmt"),
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.86
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.86
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.91
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.91
        self.Recoil.Vertical[1] = self.Recoil.Vertical[1] * 0.85
        self.Recoil.Vertical[2] = self.Recoil.Vertical[2] * 0.85
        self.Recoil.Horizontal[1] = self.Recoil.Horizontal[1] * 0.85
        self.Recoil.Horizontal[2] = self.Recoil.Horizontal[2] * 0.85
    end
}