ATTACHMENT.Base = "att_ammo"
ATTACHMENT.Name = "Explosive Rounds"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/romeo870/icon_attachment_sh_romeo870_caldb.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OnImpact(weapon, dmgInfo, tr)
    BaseClass.OnImpact(self, weapon, dmgInfo, tr)

    if (SERVER) then
        util.BlastDamage(weapon, weapon:GetOwner(), tr.HitPos, 32, weapon.Bullet.Damage[1] / weapon.Bullet.NumBullets)
    end

    ParticleEffect("AC_muzzle_shotgun", tr.HitPos, tr.HitNormal:Angle())
    util.Decal("FadingScorch", tr.HitPos + tr.HitNormal, tr.HitPos - (tr.HitNormal * 3), {weapon, weapon:GetOwner()})
    sound.Play("MW.ExplosiveRounds", tr.HitPos, SNDLVL_100dB, 100, 1)
    weapon:MakeLight(tr.HitPos, Color(255, 150, 0), 1, CurTime() + 0.5)

    dmgInfo:SetDamageType(dmgInfo:GetDamageType() + DMG_BLAST + DMG_AIRBOAT + DMG_ALWAYSGIB)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

    weapon.Projectile = nil
    weapon.Primary.TrailingSound = nil
end 