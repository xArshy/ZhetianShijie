local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("TTMG_11_2");

function tbMagic:EnableCheck(npc)
	return true;
end

function tbMagic:TargetCheck(key, t)
	local id = t.ID;
	if t.IsFaBao == true then
	return true;
	else
	return false;
	end
end

function tbMagic:MagicEnter(IDs, IsThing)
	self.targetId = IDs[0];
end

function tbMagic:MagicStep(dt, duration)	
	self:SetProgress(duration/self.magic.Param1);
	if duration >=self.magic.Param1  then
		return 1;	
	end
	return 0;
end

function tbMagic:MagicLeave(success)
	if success == true then		
		local target = ThingMgr:FindThingByID(self.targetId);
		local AT = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
		local v1 = self.bind:GetProperty("NpcFight_FabaoPowerAddP");
	if target ~= nil then
		if v1 <= 100000000 then
		self.bind.PropertyMgr:ModifierProperty("NpcFight_FabaoPowerAddP",AT*0.5);
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,-AT)
		
		else
		self.bind:AddMsg("[NAME]已经提升到了极限，吸不动了。")
		end
		end
	end
end
