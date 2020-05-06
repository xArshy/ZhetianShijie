local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("TTMG_2_2");--创建一个新的神通class

--注意-
--神通脚本运行的时候有两个固定变量
--self.bind 执行神通的npcObj
--self.magic 当前神通的数据，也就是定义在xml里的数据

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
	self.targetId = IDs[0];--获取目标信息
		
		
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
		if self.bind ~= nil then
		
		self.bind.LuaHelper:TriggerStory("TTMG_2_2");
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