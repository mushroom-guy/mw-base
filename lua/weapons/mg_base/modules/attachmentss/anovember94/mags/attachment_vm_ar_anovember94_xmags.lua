ATTACHMENT.Base = "att_vm_45rnd_mag_eastern"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 45
    weapon.Animations.Reload = weapon.Animations.reload_xmag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_xmag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_xmag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_xmag_fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    --weapon.Animations.Reload_Empty.Length = weapon.Animations.Reload_Empty.Length + 0.15
    --weapon.Animations.Reload.Length = weapon.Animations.Reload.Length + 0.05
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end