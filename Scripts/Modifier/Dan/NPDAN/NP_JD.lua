


--高阶


--妖兽BUFF
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("NP_DD");

function tbModifier:Enter(modifier, npc)
local is_NP = false
  if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then 
    is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
  end
  if is_NP then
	if  npc.MaxLing <= 76600 then
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/8 * Value)
	npc:AddLing(-npc.MaxLing)
	elseif npc.MaxLing <= 766000 then
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/40 * Value)
	else
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/1000 * Value)
	npc:AddLing(-npc.MaxLing)
	world:ShowStoryBox("恭喜"..npc.Name.."修為更上一層樓。","修為精進",{"知道了"},
	function(key)
	if key == 0 then
	npc.LuaHelper:AddMsg(""..npc.Name.."获得了")
	end
	end
	)

	end
  else
  npc.LuaHelper:AddPracticeResource("Ling", -99999999999);
	end
end

--获取存档数据
function tbModifier:OnGetSaveData()
end


--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)
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


local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("NP_JTD");

function tbModifier:Enter(modifier, npc)
	local is_NP = false
  if npc and npc.PropertyMgr.Practice and npc.PropertyMgr.Practice.Gong then 
    is_NP = npc.PropertyMgr.Practice.Gong.Name == "Gong_NPJ"
  end
  if is_NP then
	if  npc.MaxLing <= 766000 then
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/4 * Value)
	npc:AddLing(-npc.MaxLing)
	elseif npc.MaxLing <= 7660000 then
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/10 * Value)
	else
	local Practice = npc.PropertyMgr.Practice
	local Time = npc.MaxLing/Practice:BaseAbsorbEffectGold()
	local Value = Practice:GoldEffectSpeed(npc.Key)
	Practice:MakeGold(Time/100 * Value)
	npc:AddLing(-npc.MaxLing)
	world:ShowStoryBox("恭喜"..npc.Name.."修為更上一層樓。","修為精進",{"知道了"},
	function(key)
	if key == 0 then
	npc.LuaHelper:AddMsg(""..npc.Name.."获得了")
	end
	end
	)

	end
else
  npc.LuaHelper:AddPracticeResource("Ling", -99999999999);
	end
end

--获取存档数据
function tbModifier:OnGetSaveData()
end


--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)
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

