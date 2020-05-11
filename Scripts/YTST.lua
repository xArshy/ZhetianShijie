local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("YTS_TYDT")

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
        local vM = self.bind:GetProperty("MaxAccumulativeLingAddV")
        local maxv = self.bind.PropertyMgr.Practice:GetMaxAccumulativeLing()
        local v1 = target.PropertyMgr.Practice.GoldLing
        local v2 = self.bind.PropertyMgr.Practice.GoldLing
        if target then
            self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", -vM * 0.4)
            target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", vM * 0.3)
            self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", -maxv * 0.4)
            target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", maxv * 0.3)
            self.bind.PropertyMgr.Practice.GoldLing = v2 - v2 * 0.2
            target.PropertyMgr.Practice.GoldLing = v1 + v2 * 0.1
            target.PropertyMgr.Practice:MakeGold(v2 - v2 * 0.2)
            self.bind.PropertyMgr.Practice:MakeGold(v1 + v2 * 0.1)
            self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue", 0, -0.0002 * v2, -0.0002 * v2, 0)
            target.PropertyMgr:ModifierProperty("NpcLingMaxValue", 0, 0, 0.0001 * v2, 0)
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end