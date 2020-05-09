local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("NXFX")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
    if is_WSJ and fightbody and fightbody.Npc then
        fightbody.Npc:AddModifier("NXFX")
    end
end