local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("ZT_KKRY")




function tbModifier:Enter(modifier, npc)
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


function tbModifier:Register()
end


function tbModifier:Unregister()
end

function tbModifier.CallBack(data, thing, objs)
    local from = objs[2]
    local target = thing
    local modifier = nil
    if from then
        modifier = from.PropertyMgr:FindModifier(data)
    end
    if modifier then
        local target_ling = target.LingV * 0.1
        target:AddLing(-target_ling)
        from:AddLing(target_ling)
    end
end