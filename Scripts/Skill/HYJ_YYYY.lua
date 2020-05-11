local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("HYJ_YYYY")

--技能被释放
function tbSkill:Cast(skilldef, from)
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
    --print(1)
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
    if fightbody and fightbody.Npc then
        local npc = fightbody.Npc
        npc:AddModifier("HYJ_Y")

        local mod1 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_Y")
        if mod then
            npc:AddModifier("HYJ_YY")

            local mod2 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_YY")
            if mod then
                npc:AddModifier("HYJ_YYY")

                local mod3 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_YYY")
                if mod then
                    npc:AddModifier("HYJ_YYYY")
                end
            end
        end
    end
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)
end

--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
    local layers = 1
    local is_TT = false
    if from and from.PropertyMgr.Practice and from.PropertyMgr.Practice.Gong then
        is_TT = from.PropertyMgr.Practice.Gong.Name == "Gong_HYJ"
    end
    local mod1 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_Y")
    if mod1 then
        layers = layers + 1
    end
    local mod2 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_YY")
    if mod2 then
        layers = layers + 2
    end
    local mod3 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_YYY")
    if mod3 then
        layers = layers + 3
    end
    local mod4 = fightbody.Npc.PropertyMgr:FindModifier("HYJ_YYYY")
    if mod4 then
        layers = layers + 4
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