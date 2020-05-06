local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("TTMG_2_1");
local rate = 0;
local time = 0;

function tbMagic:FiveBase(rate)
	local target = ThingMgr:FindThingByID(self.targetId);
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Perception >= 10 or target.PropertyMgr.Perception <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Physique >= 10 or target.PropertyMgr.Physique <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Charisma >= 10 or target.PropertyMgr.Charisma <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Intelligence >= 10 or target.PropertyMgr.Intelligence <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Luck >= 10 or target.PropertyMgr.Luck <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,dt*-2*rate);
	end
	else
	end
	if (self.bind.PropertyMgr.Perception >= 10 and self.bind.PropertyMgr.Physique >= 10 and self.bind.PropertyMgr.Charisma >= 10 and self.bind.PropertyMgr.Luck >= 10 and self.bind.PropertyMgr.Intelligence >= 10) or (target.PropertyMgr.Perception <= 0 and  target.PropertyMgr.Physique <= 0  and  target.PropertyMgr.Charisma <= 0 and  target.PropertyMgr.Luck <= 0 and  target.PropertyMgr.Intelligence <= 0) then
		return 1;
	end
end

function tbMagic:FiveSudden()
	local target = ThingMgr:FindThingByID(self.targetId);
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,target.PropertyMgr.Perception);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,-target.PropertyMgr.Perception);
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,target.PropertyMgr.Physique);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,-target.PropertyMgr.Physique);
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,target.PropertyMgr.Charisma);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,-target.PropertyMgr.Charisma);
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,target.PropertyMgr.Intelligence);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,-target.PropertyMgr.Intelligence);
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,target.PropertyMgr.Luck);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,-target.PropertyMgr.Luck);
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
		return true;
	else
		return false;
	end
	else
		return false;
	end
end

function tbMagic:MagicEnter(IDs, IsThing)
	self.targetId = IDs[0];--获取目标信息
end

function tbMagic:MagicStep(dt, duration)	
		local target = ThingMgr:FindThingByID(self.targetId);
	self:SetProgress(duration/self.magic.Param1);
	time = time + dt;
	if time >= 4 then
	
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	return 0.5
	else
	rate = 0.25
	local target = ThingMgr:FindThingByID(self.targetId);
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Perception >= 10 or target.PropertyMgr.Perception <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Physique >= 10 or target.PropertyMgr.Physique <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Charisma >= 10 or target.PropertyMgr.Charisma <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Intelligence >= 10 or target.PropertyMgr.Intelligence <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,dt*-2*rate);
	end
	else
	end
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
	if self.bind.PropertyMgr.Luck >= 10 or target.PropertyMgr.Luck <= 0 then
	else
	self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,dt*rate);
	target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,dt*-2*rate);
	end
	else
	end
	-- (self.bind.PropertyMgr.Perception >= 10 and self.bind.PropertyMgr.Physique >= 10 and self.bind.PropertyMgr.Charisma >= 10 and self.bind.PropertyMgr.Luck >= 10 and self.bind.PropertyMgr.Intelligence >= 10) 
	if (target.PropertyMgr.Perception <= 0 and target.PropertyMgr.Physique <= 0  and  target.PropertyMgr.Charisma <= 0 and  target.PropertyMgr.Luck <= 0 and  target.PropertyMgr.Intelligence <= 0) then
		return 1;
	end
	end

	time = 0;
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
		if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_2_1") == true then
		local target = ThingMgr:FindThingByID(self.targetId);
		self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,target.PropertyMgr.Perception);
		target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Perception,-target.PropertyMgr.Perception);
		self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,target.PropertyMgr.Physique);
		target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Physique,-target.PropertyMgr.Physique);
		self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,target.PropertyMgr.Charisma);
		target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Charisma,-target.PropertyMgr.Charisma);
		self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,target.PropertyMgr.Intelligence);
		target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Intelligence,-target.PropertyMgr.Intelligence);
		self.bind.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,target.PropertyMgr.Luck);
		target.PropertyMgr.BaseData:AddAddion(CS.XiaWorld.g_emNpcBasePropertyType.Luck,-target.PropertyMgr.Luck);
		end
		end
	end
end

