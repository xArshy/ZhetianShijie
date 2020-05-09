local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("YTS_TYDS")

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
        local v1 = self.bind:GetProperty("LingAbsorbSpeed")
        local v2 = target:GetProperty("LingAbsorbSpeed")
        local v3 = self.PropertyMgr.Practice.StageValue
        local v4 = target.PropertyMgr.Practice.StageValue
        if target then
            self.bind.PropertyMgr:ModifierProperty("LingAbsorbSpeed", -v1 * 0.005)
            target.PropertyMgr:ModifierProperty("LingAbsorbSpeed", v1 * 0.004)
            self.bind.PropertyMgr.Practice:AddPractice(v3 * -1)
            target.PropertyMgr.Practice:AddPractice(v3 * 0.9)
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end