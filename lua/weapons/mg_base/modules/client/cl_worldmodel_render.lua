AddCSLuaFile()

function SWEP:DrawWorldModelTranslucent(flags)
    if (GetConVar("mgbase_debug_wmrender"):GetInt() <= 0) then
        return
    end

    if (!IsValid(self.m_WorldModel)) then
        self:RecreateClientsideModels(true)
    end

    render.SetBlend(0)
    self:DrawModel()
    render.SetBlend(1)

    local pos, ang = self:GetBonePosition(0)
    debugoverlay.Axis(pos, ang, 5, 0, true)
    
    local wPos = self:GetPos()
    self.m_WorldModel:SetPos(wPos + (pos - wPos))

    local wAng = self:GetAngles()
    self.m_WorldModel:SetAngles(wAng + (ang - wAng))

    local bone = self:LookupBoneCached(self.m_WorldModel, self.WorldModelOffsets.Bone)

    if (bone != nil && bone > 0) then
        --if (IsValid(self:GetOwner())) then
            self.m_WorldModel:ManipulateBoneAngles(bone, self.WorldModelOffsets.Angles)
            self.m_WorldModel:ManipulateBonePosition(bone, self.WorldModelOffsets.Pos)
        --[[else
            self.m_WorldModel:ManipulateBoneAngles(bone, Angle())
            self.m_WorldModel:ManipulateBonePosition(bone, Vector())
        end]]
    end

    --particles
    self:RenderParticles(self.TpParticles)

    --shells
    self:RenderShells(self.m_WorldModel)

    self:SetupBones()
    self.m_WorldModel:SetupBones()
    
    --customization
    if (self.Customization) then
        self:RenderCustomization(self.m_WorldModel)
    end
    
    --anims
    self.m_ViewModel:FrameAdvance()
    self:AnimationEvents()

    self:RenderWModels(self.m_WorldModel)
    
    --attachments
    self:RenderLaser()
end

function SWEP:RenderWModels(ent) 
    if (ent == self.m_WorldModel || #ent:GetChildren() <= 0) then
        ent:DrawModel()
    end

    for i, child in pairs(ent:GetChildren()) do
        self:RenderModels(child)
    end
end