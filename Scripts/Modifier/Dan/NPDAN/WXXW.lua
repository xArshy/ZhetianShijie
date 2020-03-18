
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("NP_WXXW");

local DanYaoList = {
	NP_WXXW = "NP_WXW",
	NP_WXXW1 = "NP_JXW",
	NP_WXXW2 = "NP_MXW",
	NP_WXXW3 = "NP_SXW",
	NP_WXXW4 = "NP_HXW",
	NP_WXXW5 = "NP_TXW",
}


function tbModifier:Enter(modifier, npc)
	local name = DanYaoList[modifier.def.Name]		--获取对应物品Name
	if name ~=	nil then		--物品Name存在
		local itemdef = ThingMgr:GetDef(g_emThingType.Item,name)	--获取对应物品def
		if itemdef ~= nil and npc.IsDisciple then	--物品def存在并且弟子为内门
			local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind,itemdef.ElementKind)--传参数，1为人物功法五行，2为丹药五行,并获得回传参数
			npc.LuaHelper:AddPracticeResource("Stage", 4000 * num);
		end
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


function tbModifier:ShuXingJianCe(nElement,iElement)
	local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
	local num = 0
	if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
		num = 1	
		
	elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
		num = 0.4	--倍数	
		
	elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
		num = 1.5	--倍数
		
	elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
		num = -1
		
	end
	return num		--传回参数
end	



