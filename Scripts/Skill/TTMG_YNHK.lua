local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TTMG_YNHK")

--技能被释放
function tbSkill:Cast(skilldef, from)
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
    --print(1)
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
    --print(1)
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)
end

--数值加值
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

--飞行检测
function tbSkill:FlyCheck(skilldef, keys, from)
    return 0
end