local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TDJ_HL_HDLQ")


function tbSkill:Cast(skilldef, from)
end


function tbSkill:Apply(skilldef, key, from)
    
end


function tbSkill:FightBodyApply(skilldef, fightbody, from)
    if fightbody and fightbody.Npc and fightbody.Npc.IsEliteEnemy then
        local bag = fightbody.Npc.Bag
        if bag then
            local items = bag.m_lisItems
            if items then
                for key, item in pairs(items) do
                    if item.IsFaBao then
                        bag.DropItem(item)
                    end
                end
                from.PropertyMgr:ModifierProperty("NpcLingMaxValue", 0, 0, -10, 0)
            end
        end
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