
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local is_NP = false
  if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then 
    is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
  end
  if is_NP then
	npc.LuaHelper:AddPracticeResource("Stage", 4000);
	else
	npc.LuaHelper:AddPracticeResource("Stage", -99999999);
	end
end

--modifier step
function tbModifier:Step(modifier, npc, dt)

end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
	
end

--离开modifier
function tbModifier:Leave(modifier, npc)
	
end

--获取存档数据
function tbModifier:OnGetSaveData()
	return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)

end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local is_NP = false
  if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then 
    is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
  end
  if is_NP then
	npc.LuaHelper:AddPracticeResource("Stage", 40000);
	else
	npc.LuaHelper:AddPracticeResource("Stage", -99999999);
	end
end

--modifier step
function tbModifier:Step(modifier, npc, dt)

end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
	
end

--离开modifier
function tbModifier:Leave(modifier, npc)
	
end

--获取存档数据
function tbModifier:OnGetSaveData()
	return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)

end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("NP_XWD2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier

function tbModifier:Enter(modifier, npc)
	local is_NP = false
  if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then 
    is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
  end
  if is_NP then
	npc.LuaHelper:AddPracticeResource("Stage", 4000000);
	else
	npc.LuaHelper:AddPracticeResource("Stage", -99999999);
	end
end

--modifier step
function tbModifier:Step(modifier, npc, dt)

end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
	
end

--离开modifier
function tbModifier:Leave(modifier, npc)
	
end

--获取存档数据
function tbModifier:OnGetSaveData()
	return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)

end



