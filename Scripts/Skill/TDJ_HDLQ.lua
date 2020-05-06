
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TDJ_HL_HDLQ")


--技能被释放
function tbSkill:Cast(skilldef, from)
  
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc and fightbody.Npc.IsEliteEnemy then
		local bag = fightbody.Npc.Bag;
		if bag then
			local items = bag.m_lisItems;
			if items then
				for key,item in pairs(items) do
					if item.IsFaBao then
						bag.DropItem(item);
					end
				end
				from.PropertyMgr:ModifierProperty("NpcLingMaxValue", 0, 0, -10, 0);
			end
		end
	end
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)	

end

--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	return 0
end

--飞行检测
function tbSkill:FlyCheck(skilldef, keys, from)
	return 0
end