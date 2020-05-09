local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NXFX")

local LING_RATE = 0.1 --每少1%灵气增加多少法宝根本威力。

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
end

--modifier step
function tbModifier:Step(modifier, npc, dt)
    self.durations = self.durations or {}
    local cur_ling = 1 - (npc.LingV / npc.MaxLing)

    local baddp = cur_ling * LING_RATE
    npc.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", 0, 0, 0, baddp)
end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
end

--离开modifier
function tbModifier:Leave(modifier, npc)
    local baddp = -cur_ling * LING_RATE
    npc.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP", 0, 0, 0, baddp)
end

--获取存档数据
function tbModifier:OnGetSaveData()
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)
end