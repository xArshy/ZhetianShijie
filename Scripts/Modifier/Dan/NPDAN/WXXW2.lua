


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_WXXWE")

local DanYaoList = {
    NP_WXXWE1 = "NP_WXW2",
    NP_WXXW21 = "NP_JXW2",
    NP_WXXW22 = "NP_MXW2",
    NP_WXXW23 = "NP_SXW2",
    NP_WXXW24 = "NP_HXW2",
    NP_WXXW25 = "NP_TXW2"
}

function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] 
    if name then 
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) 
        if itemdef and npc.IsDisciple then 
            local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind, itemdef.ElementKind)
             
            npc.LuaHelper:AddPracticeResource("Stage", 4000000 * num)
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
        num = 0.8 
    elseif XX == CS.XiaWorld.g_emElementRelation.Born then 
        num = 2 
    elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then 
        num = -2
    end
    return num 
end