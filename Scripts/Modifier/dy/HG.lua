
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("modifier_HG")



function tbModifier:Enter(modifier, npc)
    npc.LuaHelper:AddPracticeResource("Stage", 99999)
    npc.LuaHelper:NeckBroken()
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