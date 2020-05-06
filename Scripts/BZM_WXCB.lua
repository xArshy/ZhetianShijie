local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("BZM_WXCB");

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
		local JT = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition)
		local FX = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.FlySpeed)
		local RS = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.RotSpeed)
		local HL = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover)
		local ML = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing)
		local TL = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.TailLenght)
		local AR = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate)
		local KB = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance)
		local name = target:GetName();
		local prename = {"天","地","玄","黄","洪","荒","宇","宙","朱雀","玄武","黄龙","白虎","青龙","刹时","九转","空冥","星云","风骤","焚仙","灵","灭","戮","凶","不死","冥","幽","仙帝","圣器","圣兵","帝兵","炽","扶桑","星空","灭门","道韵"}
		local random = self.bind.LuaHelper:RandomInt(1,#prename);
	if target ~= nil then
		if AT <= 100000 then
		self.bind.PropertyMgr:ModifierProperty("NpcLingMaxValue",0,-0.1,-0.1,0);
		
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT*1.25)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,JT*1.15)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.FlySpeed,FX*1.05)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.RotSpeed,RS*1.05)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,HL*1.2)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,ML*1.2)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,KB*1.15)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.TailLenght,TL*1.09)
		target.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,AR*0.91)
		else
		target:SetName(""..prename[random].."·"..name.."");
		self.bind.LuaHelper:TriggerStory("JT");
		end
		end
	end
end
