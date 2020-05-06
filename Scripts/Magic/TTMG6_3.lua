local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("TTMG_6_3");
local Rate = 0;

function tbMagic:GetAge(Rate)
	local target = ThingMgr:FindThingByID(self.targetId);
	if target.MaxAge <= 0 then
		return 1;
	else
		self.bind:AddMaxAge(Rate);
		target:AddMaxAge(-5*Rate);
	end
end

function tbMagic:GetMaxAge()
	local target = ThingMgr:FindThingByID(self.targetId);
	self.bind:AddMaxAge(target.MaxAge);
	target:AddMaxAge(-target.MaxAge);
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
	self.targetId = IDs[0];
end

function tbMagic:MagicStep(dt, duration)	
		local target = ThingMgr:FindThingByID(self.targetId);
	self:SetProgress(duration/self.magic.Param1);
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_6_3") == true then
	return 1;
	else
	if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_6_3") == true then
	Rate = 1;
	end
	
	local target = ThingMgr:FindThingByID(self.targetId);
	if target.MaxAge <= 0 then
		return 1;
	else
		self.bind:AddMaxAge(Rate);
		target:AddMaxAge(-5*Rate);
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
			if self.bind.LuaHelper:IsLearnedEsoteric("TTMG_6_3") == true then
				self.bind:AddMaxAge(target.MaxAge);
				target:AddMaxAge(-target.MaxAge * 0.2);
			end
		end
	end
end