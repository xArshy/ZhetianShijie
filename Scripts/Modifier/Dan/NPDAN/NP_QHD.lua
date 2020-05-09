local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_QHD6")
local DanYaoList = {
    NP_QHD6 = "NP_QHD6",
    NP_QHD7 = "NP_QHD7",
    NP_QHD8 = "NP_QHD8",
    NP_QHD9 = "NP_QHD9"
}
--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] --获取对应物品Name
    if name then --物品Name存在
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) --获取对应物品def
        if name == "QHD6" then
            npc.LuaHelper:AddPracticeResource("Ling", 10000)
        elseif name == "QHD7" then
            npc.LuaHelper:AddPracticeResource("Ling", 100000)
        elseif name == "QHD8" then
            npc.LuaHelper:AddPracticeResource("Ling", 1000000)
        elseif name == "QHD9" then
            npc.LuaHelper:AddPracticeResource("Ling", 10000000)
        end
    end
end

--modifier step
function tbModifier:Step(modifier, npc, dt)
end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
end

--离开modifier
function tbModifier:Leave(modifier, npc)
end

--获取存档数据
function tbModifier:OnGetSaveData()
    return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)
end