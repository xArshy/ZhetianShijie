
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("modifier_SLS")



function tbModifier:Enter(modifier, npc)
    npc.LuaHelper:AddEnemy(21, 0)
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