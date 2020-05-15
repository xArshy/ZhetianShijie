local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_WXXW")

local DanYaoList = {
    NP_WXXW = "NP_WXW",
    NP_WXXW1 = "NP_JXW",
    NP_WXXW2 = "NP_MXW",
    NP_WXXW3 = "NP_SXW",
    NP_WXXW4 = "NP_HXW",
    NP_WXXW5 = "NP_TXW"
}

function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] 
    if name then 
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) 
        if itemdef and npc.IsDisciple then 
            local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind, itemdef.ElementKind)
             
            npc.LuaHelper:AddPracticeResource("Stage", 4000 * num)
        end
    end
end


function tbModifier:OnGetSaveData()
end


function tbModifier:OnLoadData(modifier, npc, tbData)
end


function tbModifier:Step(modifier, npc, dt)
end



function tbModifier:UpdateStack(modifier, npc, add)
end



function tbModifier:Leave(modifier, npc)
end

function tbModifier:ShuXingJianCe(nElement, iElement)
    local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
    local num = 0
    if XX == CS.XiaWorld.g_emElementRelation.Same then 
        num = 1
    elseif XX == CS.XiaWorld.g_emElementRelation.None then 
        num = 0.4 
    elseif XX == CS.XiaWorld.g_emElementRelation.Born then 
        num = 1.5 
    elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then 
        num = -1
    end
    return num 
end