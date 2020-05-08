local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("TTMG_1_3")

function tbMagic:GetLuDing()
    local target = ThingMgr:FindThingByID(self.targetId)
    local value1 = self.bind.PropertyMgr.Practice.AccumulativeLing
    local value2 = target.PropertyMgr.Practice.AccumulativeLing
    local value3 = self.bind:GetProperty("MaxAccumulativeLingAddV")
    local value4 = target:GetProperty("MaxAccumulativeLingAddV")
    local maxvalue1 = self.bind.PropertyMgr.Practice:GetMaxAccumulativeLing()
    local maxvalue2 = target.PropertyMgr.Practice:GetMaxAccumulativeLing()
    local num = 0.1 * target.PropertyMgr.Practice.Potential
    if value1 >= 100000 then
        return 1
    else
        if value2 <= 0 then
            if self.bind.LuaHelper:IsLearnedEsoteric("Gong_TTMG_1_3") then
                if maxvalue2 <= 0 then
                    return 1
                else
                    self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value3 + num)
                    target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - num)
                end
            else
                return 1
            end
        else
            self.bind.PropertyMgr.Practice.AccumulativeLing = value1 + num
            target.PropertyMgr.Practice.AccumulativeLing = value2 - num
            self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue", num, 0, 0, 0)
            target.PropertyMgr:ModifierProperty("NpcLingMaxValue", -num, 0, 0, 0)
            self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value3 + num)
            target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - num)
        end
    end
end

function tbMagic:GetLuDingSudden()
    local target = ThingMgr:FindThingByID(self.targetId)
    local value1 = self.bind.PropertyMgr.Practice.AccumulativeLing
    local value2 = target.PropertyMgr.Practice.AccumulativeLing
    local value3 = self.bind:GetProperty("MaxAccumulativeLingAddV")
    local value4 = target:GetProperty("MaxAccumulativeLingAddV")
    local maxvalue1 = self.bind.PropertyMgr.Practice:GetMaxAccumulativeLing()
    local maxvalue2 = target.PropertyMgr.Practice:GetMaxAccumulativeLing()
    self.bind.PropertyMgr.Practice.AccumulativeLing = value1 + value2
    target.PropertyMgr.Practice.AccumulativeLing = 0
    target.PropertyMgr:ModifierProperty("NpcLingMaxValue", -value2, 0, 0, 0)
    target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - maxvalue2)
end

function tbMagic:EnableCheck(npc)
    if npc.LuaHelper:GetGongName() == "Gong_TTMG" then
        return true
    else
        return false
    end
end

function tbMagic:TargetCheck(key, t)
    if not t or t.ThingType ~= CS.XiaWorld.g_emThingType.Npc then
        return false
    end
    if t.Race.RaceType == CS.XiaWorld.g_emNpcRaceType.Animal then
        return false
    end
    if t.ThingType == CS.XiaWorld.g_emThingType.Npc then
        if t.Camp ~= CS.XiaWorld.Fight.g_emFightCamp.Player then
            if t.IsDisciple then
                return true
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end

function tbMagic:MagicEnter(IDs, IsThing)
    self.targetId = IDs[0]
end

function tbMagic:MagicStep(dt, duration)
    local target = ThingMgr:FindThingByID(self.targetId)
    self:SetProgress(duration / self.magic.Param1)
    if self.bind.LuaHelper:IsLearnedEsoteric("Gong_TTMG_1_3") then
        return 1
    else
        local target = ThingMgr:FindThingByID(self.targetId)
        local value1 = self.bind.PropertyMgr.Practice.AccumulativeLing
        local value2 = target.PropertyMgr.Practice.AccumulativeLing
        local value3 = self.bind:GetProperty("MaxAccumulativeLingAddV")
        local value4 = target:GetProperty("MaxAccumulativeLingAddV")
        local maxvalue1 = self.bind.PropertyMgr.Practice:GetMaxAccumulativeLing()
        local maxvalue2 = target.PropertyMgr.Practice:GetMaxAccumulativeLing()
        local num = 0.1 * target.PropertyMgr.Practice.Potential
        if value1 >= 100000 then
            return 1
        else
            if value2 <= 0 then
                if self.bind.LuaHelper:IsLearnedEsoteric("Gong_TTMG_1_3") then
                    if maxvalue2 <= 0 then
                        return 1
                    else
                        self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value3 + num)
                        target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - num)
                    end
                else
                    return 1
                end
            else
                self.bind.PropertyMgr.Practice.AccumulativeLing = value1 + num
                target.PropertyMgr.Practice.AccumulativeLing = value2 - num
                self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value3 + num)
                target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - num)
            end
        end
        if duration >= self.magic.Param1 then
            return 1
        end
        return 0
    end
end

function tbMagic:MagicLeave(success)
    if success then
        local target = ThingMgr:FindThingByID(self.targetId)
        if target then
            if self.bind.LuaHelper:IsLearnedEsoteric("Gong_TTMG_1_3") then
                local target = ThingMgr:FindThingByID(self.targetId)
                local value1 = self.bind.PropertyMgr.Practice.AccumulativeLing
                local value2 = target.PropertyMgr.Practice.AccumulativeLing
                local value3 = self.bind:GetProperty("MaxAccumulativeLingAddV")
                local value4 = target:GetProperty("MaxAccumulativeLingAddV")
                local maxvalue1 = self.bind.PropertyMgr.Practice:GetMaxAccumulativeLing()
                local maxvalue2 = target.PropertyMgr.Practice:GetMaxAccumulativeLing()
                self.bind.PropertyMgr.Practice.AccumulativeLing = value1 + value2 * 0.1
                target.PropertyMgr.Practice.AccumulativeLing = 0
                self.bind.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value3 + maxvalue2 * 0.1)
                target.PropertyMgr:SetPropertyOverwrite("MaxAccumulativeLingAddV", value4 - maxvalue2)
                self.bind.LuaHelper:TriggerStory("TTMG_1_3")
            end
        end
    end
end