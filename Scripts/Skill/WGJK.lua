local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WGJK")


function tbSkill:Cast(skilldef, from)
end


function tbSkill:Apply(skilldef, key, from)
    
end


function tbSkill:FightBodyApply(skilldef, fightbody, from)
    if fightbody and fightbody.Npc then
        local npc = fightbody.Npc
        npc:AddModifier("WGJK")
    end
end


function tbSkill:MissileBomb(skilldef, pos, from)
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
    return self.power
end


function tbSkill:FlyCheck(skilldef, keys, from)
    return 0
end