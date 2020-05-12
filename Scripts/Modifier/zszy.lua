local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("ZSZY")



function tbModifier:Enter(modifier, npc)
end


function tbModifier:Step(modifier, npc, dt)
    self.durations = self.durations or {}
    npc.JobEngine:InterruptJob("只手镇压", false)
end


function tbModifier:UpdateStack(modifier, npc, add)
end


function tbModifier:Leave(modifier, npc)
end


function tbModifier:OnGetSaveData()
end


function tbModifier:OnLoadData(modifier, npc, tbData)
end