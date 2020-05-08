local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("YTS_TYDJ")

function tbMagic:Init()
end

function tbMagic:EnableCheck(npc)
    return true
end

function tbMagic:TargetCheck(key, t)
    if t.ThingType == CS.XiaWorld.g_emThingType.Npc then
        return true
    else
        return false
    end
end

function tbMagic:MagicEnter(IDs, IsThing)
    self.targetId = IDs[0]
end

function tbMagic:MagicStep(dt, duration)
    self:SetProgress(duration / self.magic.Param1)
    if duration >= self.magic.Param1 then
        return 1
    end
    return 0
end

function tbMagic:MagicLeave(success)
    if success then
        local target = ThingMgr:FindThingByID(self.targetId)
        local v1 = self.bind:GetProperty("NpcFight_FabaoPowerAddP")
        local v2 = target:GetProperty("NpcFight_FabaoPowerAddP")
        local v3 = self.bind:GetProperty("NpcFight_FabaoLingRecoverAddP")
        local v4 = starget:GetProperty("NpcFight_FabaoLingRecoverAddP")
        if target then
            self.bind.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", -v1 * 0.0025)
            target.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", v1 * 0.002)
            self.bind.PropertyMgr:ModifierProperty("NpcFight_FabaoLingRecoverAddP", -v3 * 0.0025)
            target.PropertyMgr:ModifierProperty("NpcFight_FabaoLingRecoverAddP", v3 * 0.002)
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end