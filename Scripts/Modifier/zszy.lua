local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("ZSZY")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
end

--modifier step
function tbModifier:Step(modifier, npc, dt)
    self.durations = self.durations or {}
    npc.JobEngine:InterruptJob("只手镇压", false)
end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
end

--离开modifier
function tbModifier:Leave(modifier, npc)
end

--获取存档数据
function tbModifier:OnGetSaveData()
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)
end