
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("ZT_WSJJMS")

local POWER_ADD = 10
local AGE_COST = -1800
--技能被释放
function tbSkill:Cast(skilldef, from)
	self.power = 0
	local is_XKJ = false
  if from and from.PropertyMgr.Practice and from.PropertyMgr.Practice.Gong then 
    is_XKJ = from.PropertyMgr.Practice.Gong.Name == "Gong_XKJ"
  end
  if is_XKJ and from then
  local fabao = from:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao then
      --获取这个法宝的真实威力。
      local power = fabao.Fabao:GetProperty(CS.XiaWorld.g_emFaBaoP.AttackPower) * (1 + fabao.Fabao:GetNpcPropertyFinalValue(from, "NpcFight_FabaoPowerAddP"))
      from.Equip:UnEquipItem(fabao, false) --解除这个法宝的装备。
      ThingMgr:RemoveThing(fabao, true, false) --移除这个法宝。
      self.power = power * POWER_ADD --10倍法宝威力的伤害。
	  from:AddMaxAge(AGE_COST)
    end
	end
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)	

end

--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
  return self.power
end

--飞行检测
function tbSkill:FlyCheck(skilldef, keys, from)
	return 0
end