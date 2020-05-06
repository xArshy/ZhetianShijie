local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("TTMG_5_1");
local rate = 0;

function tbMagic:GetGold(rate)
	local target = ThingMgr:FindThingByID(self.targetId);
	local value1 = target.PropertyMgr.Practice.GoldLing
	local value2 = self.bind.PropertyMgr.Practice.GoldLing
	if value1 <= 0 then
	return 1;
	else
	self.bind.PropertyMgr.Practice.GoldLing = value2 + rate * 0.5;
	self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*rate * 0.5 ,0);
	target.PropertyMgr.Practice.GoldLing = value1 - rate;
	target.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,-0.015*rate,0);
	if self.bind.PropertyMgr.Practice.GoldLevel == 2 and self.bind.PropertyMgr.Practice.GoldLing>= 145000 then
	self.bind.PropertyMgr.Practice:MakeGold(145000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 3 and self.bind.PropertyMgr.Practice.GoldLing>= 85000 then
	self.bind.PropertyMgr.Practice:MakeGold(85000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 4 and self.bind.PropertyMgr.Practice.GoldLing>= 55000 then
	self.bind.PropertyMgr.Practice:MakeGold(55000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 5 and self.bind.PropertyMgr.Practice.GoldLing>= 40000 then
	self.bind.PropertyMgr.Practice:MakeGold(40000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 6 and self.bind.PropertyMgr.Practice.GoldLing>= 30000 then
	self.bind.PropertyMgr.Practice:MakeGold(30000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 7 and self.bind.PropertyMgr.Practice.GoldLing>= 21000 then
	self.bind.PropertyMgr.Practice:MakeGold(21000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 8 and self.bind.PropertyMgr.Practice.GoldLing>= 13000 then
	self.bind.PropertyMgr.Practice:MakeGold(13000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 9 and self.bind.PropertyMgr.Practice.GoldLing>= 6000 then
	self.bind.PropertyMgr.Practice:MakeGold(6000)	
	else
	end
	if target.PropertyMgr.Practice.GoldLevel == 1 and target.PropertyMgr.Practice.GoldLing <= 144999 then
	target.PropertyMgr.Practice:MakeGold(144999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 2 and target.PropertyMgr.Practice.GoldLing <= 84999 then
	target.PropertyMgr.Practice:MakeGold(84999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 3 and target.PropertyMgr.Practice.GoldLing <= 54999 then
	target.PropertyMgr.Practice:MakeGold(54999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 4 and target.PropertyMgr.Practice.GoldLing <= 39999 then
	target.PropertyMgr.Practice:MakeGold(39999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 5 and target.PropertyMgr.Practice.GoldLing <= 29999 then
	target.PropertyMgr.Practice:MakeGold(29999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 6 and target.PropertyMgr.Practice.GoldLing <= 20999 then
	target.PropertyMgr.Practice:MakeGold(20999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 7 and target.PropertyMgr.Practice.GoldLing <= 12999 then
	target.PropertyMgr.Practice:MakeGold(12999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 8 and target.PropertyMgr.Practice.GoldLing <= 5999 then
	target.PropertyMgr.Practice:MakeGold(5999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 9 and target.PropertyMgr.Practice.GoldLing <= 0 then
	target.PropertyMgr.Practice:MakeGold(0)	
	else
	end
	end
end

function tbMagic:GoldSudden()
	local target = ThingMgr:FindThingByID(self.targetId);
	local value1 = target.PropertyMgr.Practice.GoldLing
	local value2 = self.bind.PropertyMgr.Practice.GoldLing
	self.bind.PropertyMgr.Practice.GoldLing = value2 + value1;
	self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*value1,0);
	target.PropertyMgr.Practice.GoldLing = 0;
	target.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*value1,0);
end

function tbMagic:Init()
end

function tbMagic:EnableCheck(npc)
	if npc.LuaHelper:GetGongName() == "Gong_TTMG" then
	return true;
	else
	return false;
	end
end

function tbMagic:TargetCheck(key, t)	
	if t == nil or t.ThingType ~= CS.XiaWorld.g_emThingType.Npc then
		return false;
	end
	if t.Race.RaceType == CS.XiaWorld.g_emNpcRaceType.Animal then
		return false;
	end
	if t.ThingType == CS.XiaWorld.g_emThingType.Npc then
	if t.Camp ~= CS.XiaWorld.Fight.g_emFightCamp.Player then
	if t.IsDisciple == true then
		return true;
	else
		return false;
	end
	else
		return false;
	end
	else
		return false;
	end
end



function tbMagic:MagicEnter(IDs, IsThing)
	self.targetId = IDs[0];
end


function tbMagic:MagicStep(dt, duration)	
	local target = ThingMgr:FindThingByID(self.targetId);
	self:SetProgress(duration/self.magic.Param1);
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_5") == true then
	return 1;
	else
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_5") == true then
	rate = 10;
	end
	local target = ThingMgr:FindThingByID(self.targetId);
	local value1 = target.PropertyMgr.Practice.GoldLing
	local value2 = self.bind.PropertyMgr.Practice.GoldLing
	if value1 <= 0 then
	return 1;
	else
	self.bind.PropertyMgr.Practice.GoldLing = value2 + rate * 0.5;
	self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*rate*0.5,0);
	target.PropertyMgr.Practice.GoldLing = value1 - rate;
	target.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,-0.015*rate,0);
	if self.bind.PropertyMgr.Practice.GoldLevel == 2 and self.bind.PropertyMgr.Practice.GoldLing>= 145000 then
	self.bind.PropertyMgr.Practice:MakeGold(145000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 3 and self.bind.PropertyMgr.Practice.GoldLing>= 85000 then
	self.bind.PropertyMgr.Practice:MakeGold(85000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 4 and self.bind.PropertyMgr.Practice.GoldLing>= 55000 then
	self.bind.PropertyMgr.Practice:MakeGold(55000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 5 and self.bind.PropertyMgr.Practice.GoldLing>= 40000 then
	self.bind.PropertyMgr.Practice:MakeGold(40000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 6 and self.bind.PropertyMgr.Practice.GoldLing>= 30000 then
	self.bind.PropertyMgr.Practice:MakeGold(30000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 7 and self.bind.PropertyMgr.Practice.GoldLing>= 21000 then
	self.bind.PropertyMgr.Practice:MakeGold(21000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 8 and self.bind.PropertyMgr.Practice.GoldLing>= 13000 then
	self.bind.PropertyMgr.Practice:MakeGold(13000)	
	elseif self.bind.PropertyMgr.Practice.GoldLevel == 9 and self.bind.PropertyMgr.Practice.GoldLing>= 6000 then
	self.bind.PropertyMgr.Practice:MakeGold(6000)	
	else
	end
	if target.PropertyMgr.Practice.GoldLevel == 1 and target.PropertyMgr.Practice.GoldLing <= 144999 then
	target.PropertyMgr.Practice:MakeGold(144999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 2 and target.PropertyMgr.Practice.GoldLing <= 84999 then
	target.PropertyMgr.Practice:MakeGold(84999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 3 and target.PropertyMgr.Practice.GoldLing <= 54999 then
	target.PropertyMgr.Practice:MakeGold(54999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 4 and target.PropertyMgr.Practice.GoldLing <= 39999 then
	target.PropertyMgr.Practice:MakeGold(39999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 5 and target.PropertyMgr.Practice.GoldLing <= 29999 then
	target.PropertyMgr.Practice:MakeGold(29999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 6 and target.PropertyMgr.Practice.GoldLing <= 20999 then
	target.PropertyMgr.Practice:MakeGold(20999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 7 and target.PropertyMgr.Practice.GoldLing <= 12999 then
	target.PropertyMgr.Practice:MakeGold(12999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 8 and target.PropertyMgr.Practice.GoldLing <= 5999 then
	target.PropertyMgr.Practice:MakeGold(5999)	
	elseif target.PropertyMgr.Practice.GoldLevel == 9 and target.PropertyMgr.Practice.GoldLing <= 0 then
	target.PropertyMgr.Practice:MakeGold(0)	
	else
	end
	end
	end
	if duration >=self.magic.Param1  then
		return 1;	
	end
	return 0;
end

function tbMagic:MagicLeave(success)
	if success == true then		
		local target = ThingMgr:FindThingByID(self.targetId);
	if target ~= nil then
			if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_5") == true then
	local target = ThingMgr:FindThingByID(self.targetId);
	local value1 = target.PropertyMgr.Practice.GoldLing
	local value2 = self.bind.PropertyMgr.Practice.GoldLing
	if value2 <= 1000000000 then
	self.bind.PropertyMgr.Practice.GoldLing = value2 + value1;
	self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*value1,0);
	target.PropertyMgr.Practice.GoldLing = 0;
	target.PropertyMgr.Practice:MakeGold(0)
	target.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,0,0.015*value1,0);
	else
	return 0;
	end
			end
			
		end
	end
end