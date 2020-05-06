--蛟龙技能暴雨术
local tbTable = GameMain:GetMod("_SkillAction");
local tbSkill = tbTable:GetSkill("jiaolong_baoyu");


function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "shuibao";
end

function tbSkill:GetSingTime()
	return 0.8;
end

function tbSkill:GetName()
	return "暴雨术";
end


function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/baoyu");
	WorldLua:BeginWeather("jiaolong_baoyu", true, self.bind.ID, false, self.bind);
end

function tbSkill:Cast()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/hou1");
end

function tbSkill:Step(dt,duration)	
	return 1;
end

function tbSkill:Leave(did)

end
