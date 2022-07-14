ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Raider Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_stockl.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.88
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.88
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.88
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.88
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.65
    weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0.15, 0, 0)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
        
    weapon:SetViewModel("models/viper/mw/weapons/v_357_stock.mdl")
end