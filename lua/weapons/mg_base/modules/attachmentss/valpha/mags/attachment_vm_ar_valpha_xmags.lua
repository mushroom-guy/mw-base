ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "30 Round Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/valpha/attachment_vm_ar_valpha_xmags.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/valpha/icon_attachment_ar_valpha_xmags.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 30
    weapon.Animations.Reload = weapon.Animations.reload_xmag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_xmag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_xmag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_xmag_fast
    weapon.Animations.Inspect = weapon.Animations.inspect_xmag
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end