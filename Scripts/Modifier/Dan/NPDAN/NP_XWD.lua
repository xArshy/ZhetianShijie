local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD")



function tbModifier:Enter(modifier, npc)
    local is_NP = false
    if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then
        is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
    end
    if is_NP then
        npc.LuaHelper:AddPracticeResource("Stage", 4000)
    else
        npc.LuaHelper:AddPracticeResource("Stage", -99999999)
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

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD1")



function tbModifier:Enter(modifier, npc)
    local is_NP = false
    if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then
        is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
    end
    if is_NP then
        npc.LuaHelper:AddPracticeResource("Stage", 40000)
    else
        npc.LuaHelper:AddPracticeResource("Stage", -99999999)
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

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD2")




function tbModifier:Enter(modifier, npc)
    local is_NP = false
    if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then
        is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
    end
    if is_NP then
        npc.LuaHelper:AddPracticeResource("Stage", 4000000)
    else
        npc.LuaHelper:AddPracticeResource("Stage", -99999999)
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