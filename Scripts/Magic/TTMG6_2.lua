local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("TTMG_6_2")

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
        if self.bind then
            if npc.LuaHelper:CheckFeature("GodBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_1")
            elseif npc.LuaHelper:CheckFeature("StinkyBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_2")
            elseif npc.LuaHelper:CheckFeature("KingofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_3")
            elseif npc.LuaHelper:CheckFeature("SpaceofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_4")
            elseif npc.LuaHelper:CheckFeature("SunofBody") or npc.LuaHelper:CheckFeature("MoonofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_5")
            elseif npc.LuaHelper:CheckFeature("YuanofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_6")
            elseif npc.LuaHelper:CheckFeature("GodchaosofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_7")
            elseif npc.LuaHelper:CheckFeature("TyaoofBody") or npc.LuaHelper:CheckFeature("YSofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_8")
            elseif npc.LuaHelper:CheckFeature("LHfBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_9")
            elseif npc.LuaHelper:CheckFeature("HMKfBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_10")
            elseif npc.LuaHelper:CheckFeature("GHfBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_11")
            elseif npc.LuaHelper:CheckFeature("TSfBody") or npc.LuaHelper:CheckFeature("FSfBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_12")
            elseif npc.LuaHelper:CheckFeature("XKfBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_13")
            elseif npc.LuaHelper:CheckFeature("ZTofBody") then
                self.bind.LuaHelper:TriggerStory("TTMG_6_2_14")
            else
                self.bind.LuaHelper:TriggerStory("TTMG_6_2")
            end
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end