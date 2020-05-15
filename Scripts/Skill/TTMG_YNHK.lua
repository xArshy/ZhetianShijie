local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TTMG_YNHK")


function tbSkill:Cast(skilldef, from)
end


function tbSkill:Apply(skilldef, key, from)
    
end


function tbSkill:FightBodyApply(skilldef, fightbody, from)
    
end


function tbSkill:MissileBomb(skilldef, pos, from)
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
    local layers = 1
    local is_TT = false
    if from and from.PropertyMgr.Practice and from.PropertyMgr.Practice.Gong then
        is_TT = from.PropertyMgr.Practice.Gong.Name == "Gong_TTMG"
    end
    local mod1 = fightbody.Npc.PropertyMgr:FindModifier("TTMG_WHSJ")
    if mod1 then
        layers = layers + 5
    end
    local power = 1200 * layers
    if is_TT then
        power = power * 0.5
        return power
    else
        return 0
    end
end


function tbSkill:FlyCheck(skilldef, keys, from)
    return 0
end