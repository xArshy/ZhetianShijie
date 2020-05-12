local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NXFX")

local LING_RATE = 0.1 



function tbModifier:Enter(modifier, npc)
end


function tbModifier:Step(modifier, npc, dt)
    self.durations = self.durations or {}
    local cur_ling = 1 - (npc.LingV / npc.MaxLing)

    local baddp = cur_ling * LING_RATE
    npc.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", 0, 0, 0, baddp)
end


function tbModifier:UpdateStack(modifier, npc, add)
end


function tbModifier:Leave(modifier, npc)
    local baddp = -cur_ling * LING_RATE
    npc.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", 0, 0, 0, baddp)
end


function tbModifier:OnGetSaveData()
end


function tbModifier:OnLoadData(modifier, npc, tbData)
end