AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_laser01"] = {
    Name = "Tac Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser01.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser01.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 1,
        DotSize = 5,
        Color = Color(255, 0, 0, 255),
        Attachment = "laser"
    },
    Flashlight = {
        FlashlightMaterial = Material("effects/flashlight001.vmt"),
        Color = Color(255, 255, 255, 255),
        Attachment = "laser"
    },
    
    Stats = function(self)
        --self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.13
        --self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.15
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Cone.Ads =  self.Cone.Ads * 0.9
        self.Cone.Increase =  self.Cone.Increase * 0.9
    end 
}

MW_ATT_KEYS["attachment_vm_laser_cylinder01"] = {
    Name = "Tac Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser_cylinder04.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_cylinder04.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 1,
        DotSize = 5,
        Color = Color(255, 0, 0, 255),
        Attachment = "laser"
    },
    Flashlight = {
        FlashlightMaterial = Material("effects/flashlight001.vmt"),
        Color = Color(255, 255, 255, 255),
        Attachment = "laser"
    },
    
    Stats = function(self)
        self.Cone.Hip =  self.Cone.Hip * 0.9
        self.Cone.Ads =  self.Cone.Ads * 0.9
        self.Cone.Increase =  self.Cone.Increase * 0.9
    end 
}

MW_ATT_KEYS["attachment_vm_laser02"] = {
    Name = "5mW Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser02.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser02.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 1,
        DotSize = 5,
        Color = Color(0, 255, 255, 255),
        Attachment = "laser"
    },
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.97
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.97
        self.Cone.Hip =  self.Cone.Hip * 0.85
        self.Cone.Ads =  self.Cone.Ads * 0.85
        self.Cone.Increase =  self.Cone.Increase * 0.85
    end  
}

MW_ATT_KEYS["attachment_vm_laser_cylinder02"] = {
    Name = "5mW Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser_cylinder02.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_cylinder02.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 1,
        DotSize = 5,
        Color = Color(0, 255, 255, 255),
        Attachment = "laser"
    },
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.97
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.97
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.97
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.97
        self.Cone.Hip =  self.Cone.Hip * 0.85
        self.Cone.Ads =  self.Cone.Ads * 0.85
        self.Cone.Increase =  self.Cone.Increase * 0.85
    end  
}

MW_ATT_KEYS["attachment_vm_laser03"] = {
    Name = "1mW Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser03.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser03.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 0.5,
        DotSize = 5,
        Color = Color(0, 255, 0, 255),
        Attachment = "laser"
    },
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Cone.Hip =  self.Cone.Hip * 0.8
        self.Cone.Ads =  self.Cone.Ads * 0.8
        self.Cone.Increase =  self.Cone.Increase * 0.8
    end 
}

MW_ATT_KEYS["attachment_vm_laser_cylinder03"] = {
    Name = "1mW Laser",
    Model = Model("models/viper/mw/attachments/attachment_vm_laser_cylinder03.mdl"),
    Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser_cylinder03.vmt"),
    Laser = {
        BeamMaterial = Material("mw19_laserbeam.vmt"),
        DotMaterial = Material("sprites/light_glow02_add.vmt"),
        BeamSize = 15,
        BeamWidth = 0.5,
        DotSize = 5,
        Color = Color(0, 255, 0, 255),
        Attachment = "laser"
    },
    Stats = function(self)
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.9
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.9
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.9
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.9
        self.Cone.Hip =  self.Cone.Hip * 0.8
        self.Cone.Ads =  self.Cone.Ads * 0.8
        self.Cone.Increase =  self.Cone.Increase * 0.8
    end 
}