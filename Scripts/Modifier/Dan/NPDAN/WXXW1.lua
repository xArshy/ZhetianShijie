


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_WXXW0")

local DanYaoList = {
    NP_WXXW0 = "NP_WXW1",
    NP_WXXW11 = "NP_JXW1",
    NP_WXXW12 = "NP_MXW1",
    NP_WXXW13 = "NP_SXW1",
    NP_WXXW14 = "NP_HXW1",
    NP_WXXW15 = "NP_TXW1"
}

function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] 
    if name then 
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) 
        if itemdef and npc.IsDisciple then 
            local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind, itemdef.ElementKind)
             
            npc.LuaHelper:AddPracticeResource("Stage", 40000 * num)
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
        num = 0.6 
    elseif XX == CS.XiaWorld.g_emElementRelation.Born then 
        num = 1.75 
    elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then 
        num = -1.5
    end
    return num 
end