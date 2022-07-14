ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Snake Shot"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_loader_snake.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_loader_snake.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Bullet.NumBullets = 6

end