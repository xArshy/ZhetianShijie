local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_QHD6")
local DanYaoList = {
    NP_QHD6 = "NP_QHD6",
    NP_QHD7 = "NP_QHD7",
    NP_QHD8 = "NP_QHD8",
    NP_QHD9 = "NP_QHD9"
}


function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] 
    if name then 
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) 
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


function tbModifier:Step(modifier, npc, dt)
end


function tbModifier:UpdateStack(modifier, npc, add)
end


function tbModifier:Leave(modifier, npc)
end


function tbModifier:OnGetSaveData()
    return nil
end


function tbModifier:OnLoadData(modifier, npc, tbData)
end