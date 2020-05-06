
local tbTable = GameMain:GetMod("_ModifierScript");
local tbModifier = tbTable:GetModifier("NP_DHD1WX");

local DanYaoList = {
	NP_DHD1J = "NP_DHD1J",
	NP_DHD1M = "NP_DHD1M",
	NP_DHD1S = "NP_DHD1S",
	NP_DHD1H = "NP_DHD1H",
	NP_DHD1T = "NP_DHD1T",

}


function tbModifier:Enter(modifier, npc)
	local name = DanYaoList[modifier.def.Name]		--获取对应物品Name
	if name ~=	nil then		--物品Name存在
		local itemdef = ThingMgr:GetDef(g_emThingType.Item,name)	--获取对应物品def
		if itemdef ~= nil and npc.IsDisciple then	--物品def存在并且弟子为内门
			local num = tbModifier:ShuXingJianCe(npc.PropertyMgr.Practice.Gong.ElementKind,itemdef.ElementKind)--传参数，1为人物功法五行，2为丹药五行,并获得回传参数
			npc.PropertyMgr:ModifierProperty("AbilityLvAddV",150 * num,0,0,0);npc.PropertyMgr:ModifierProperty("GodPenaltyAddV",-15 * num,0,0,0);
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



