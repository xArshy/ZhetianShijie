local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("TTMG_6_2");

function tbMagic:Init()
end

--神通是否可用
function tbMagic:EnableCheck(npc)
	return true;
end


--目标合法检测 首先会通过magic的SelectTarget过滤，然后再通过这里过滤
--IDs是一个List<int> 如果目标是非对象，里面的值就是地点key，如果目标是物体，值就是对象ID，否则为nil
--IsThing 目标类型是否为物体
function tbMagic:TargetCheck(key, t)	
	 if t.ThingType == CS.XiaWorld.g_emThingType.Npc then
		return true;
	else
		return false;
	end
end


--开始施展神通
function tbMagic:MagicEnter(IDs, IsThing)

end

--神通施展过程中，需要返回值
--返回值  0继续 1成功并结束 -1失败并结束
function tbMagic:MagicStep(dt, duration)	
	self:SetProgress(duration/self.magic.Param1);--设置施展进度 主要用于UI显示 这里使用了参数1作为施法时间
	if duration >=self.magic.Param1  then
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
		if self.bind ~= nil then
		if npc.LuaHelper:CheckFeature("GodBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_1");
		elseif npc.LuaHelper:CheckFeature("StinkyBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_2");
		elseif npc.LuaHelper:CheckFeature("KingofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_3");
		elseif npc.LuaHelper:CheckFeature("SpaceofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_4");
		elseif npc.LuaHelper:CheckFeature("SunofBody") == true or npc.LuaHelper:CheckFeature("MoonofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_5");
		elseif npc.LuaHelper:CheckFeature("YuanofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_6");
		elseif npc.LuaHelper:CheckFeature("GodchaosofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_7");
		elseif npc.LuaHelper:CheckFeature("TyaoofBody") == true or npc.LuaHelper:CheckFeature("YSofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_8");
		elseif npc.LuaHelper:CheckFeature("LHfBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_9");
		elseif npc.LuaHelper:CheckFeature("HMKfBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_10");
		elseif npc.LuaHelper:CheckFeature("GHfBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_11");
		elseif npc.LuaHelper:CheckFeature("TSfBody") == true or npc.LuaHelper:CheckFeature("FSfBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_12");
		elseif	npc.LuaHelper:CheckFeature("XKfBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_13");
		elseif	npc.LuaHelper:CheckFeature("ZTofBody") == true then
			self.bind.LuaHelper:TriggerStory("TTMG_6_2_14");
		else
			self.bind.LuaHelper:TriggerStory("TTMG_6_2");
		end
		end
	end
end



--存档 如果没有返回空 有就返回Table(KV)
function tbMagic:OnGetSaveData()
	
end

--读档 tbData是存档数据 IDs和IsThing同进入
function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.targetId = IDs[0];--获取目标信息
end