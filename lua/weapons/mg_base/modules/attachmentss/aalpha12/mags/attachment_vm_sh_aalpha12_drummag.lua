ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "32 Round Drum Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/aalpha12/attachment_vm_sh_aalpha12_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/aalpha12/icon_attachment_sh_aalpha12_drummag.vmt")
ATTACHMENT.ExcludedAttachments = {"attachment_vm_sh_aalpha12_none"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 32
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.7
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.7
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.7
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.7
    weapon.Animations.Reload = weapon.Animations.reload_drum
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_drum
    weapon.Animations.Inspect = weapon.Animations.inspect_drum
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.8
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.8
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 