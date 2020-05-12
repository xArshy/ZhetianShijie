local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_DHDWX")

local DanYaoList = {
    NP_DHDJ = "NP_DHDJ",
    NP_DHDM = "NP_DHDM",
    NP_DHDS = "NP_DHDS",
    NP_DHDH = "NP_DHDH",
    NP_DHDT = "NP_DHDT"
}

function tbModifier:Enter(modifier, npc)
    local name = DanYaoList[modifier.def.Name] 
    if name then 
        local itemdef = ThingMgr:GetDef(g_emThingType.Item, name) 
        if itemdef and npc.IsDisciple then 
            local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind, itemdef.ElementKind)
             
            npc.PropertyMgr:ModifierProperty("AbilityLvAddV", -150 * num, 0, 0, 0)
            npc.PropertyMgr:ModifierProperty("GodPenaltyAddV", 15 * num, 0, 0, 0)
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