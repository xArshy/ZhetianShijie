local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_KC")


function tbSkill:Cast(skilldef, from)
end


function tbSkill:Apply(skilldef, key, from)
    
end


function tbSkill:FightBodyApply(skilldef, fightbody, from)
    if fightbody and fightbody.Npc then
        local npc = fightbody.Npc
        npc:AddModifier("MSKC")
    end
end


function tbSkill:MissileBomb(skilldef, pos, from)
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
    return 0
end


function tbSkill:FlyCheck(skilldef, keys, from)
    return 0
end