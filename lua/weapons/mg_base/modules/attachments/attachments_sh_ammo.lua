AddCSLuaFile()

MW_ATT_KEYS["sh_slugs"] = {
    Name = "Slugs",
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_ammo.vmt"),
    Stats = function(self)
        self.Bullet.Damage[1] = 120
        self.Bullet.Damage[2] = 40
        self.Bullet.EffectiveRange = 35
        self.Bullet.NumBullets = 1
        self.Cone.Ads = 0.15
        self.Projectile = {
            Class = "mg_slug",
            Speed = 4000,
            Gravity = 2
        }
    end 
}

MW_ATT_KEYS["sh_db"] = {
    Name = "Dragons Breath",
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_caldb.vmt"),
    Stats = function(self)
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 0.9
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 0.9
    end,
    PostProcess = function(self)
        self.Projectile = nil
    end
}

MW_ATT_KEYS["sh_flechette"] = {
    Name = "Flechette",
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_ammo.vmt"),
    Stats = function(self)
        self.Bullet.Damage[1] = self.Bullet.Damage[1]
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 1.1
        self.Bullet.EffectiveRange = self.Bullet.EffectiveRange * 1.2
        self.Bullet.Range = self.Bullet.Range * 1.2
        self.Bullet.NumBullets = 20
        self.Bullet.PhysicsMultiplier = 15
    end,
    PostProcess = function(self)
        self.Projectile = nil
    end
}

MW_ATT_KEYS["sh_he"] = {
    Name = "Explosive Rounds",
    Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_caldb.vmt"),
    Stats = function(self)
        self.Bullet.Damage[1] = self.Bullet.Damage[1] * 0.5
        self.Bullet.Damage[2] = self.Bullet.Damage[2] * 0.5
        self.Bullet.PhysicsMultiplier = 30
    end,
    PostProcess = function(self)
        self.Projectile = nil
    end 
}