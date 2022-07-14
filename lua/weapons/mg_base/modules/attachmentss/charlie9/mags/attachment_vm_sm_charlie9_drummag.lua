ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "50 Round Drums"
ATTACHMENT.Model = Model("models/viper/mw/attachments/charlie9/attachment_vm_sm_charlie9_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/charlie9/icon_attachment_sm_charlie9_drummag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 50
        weapon.Animations.Reload = weapon.Animations.Reload_Drum
        weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
        weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.82
        weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.82
        weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
        weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end