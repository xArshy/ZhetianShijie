local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("ZT_WSJJMS")

local POWER_ADD = 10
local AGE_COST = -1800

function tbSkill:Cast(skilldef, from)
    self.power = 0
    local is_XKJ = false
    if from and from.PropertyMgr.Practice and from.PropertyMgr.Practice.Gong then
        is_XKJ = from.PropertyMgr.Practice.Gong.Name == "Gong_XKJ"
    end
    if is_XKJ and from then
        local fabao = from:GetFirstAtkFabao() 
        if fabao then
            
            local power =
                fabao.Fabao:GetProperty(CS.XiaWorld.g_emFaBaoP.AttackPower) *
                (1 + fabao.Fabao:GetNpcPropertyFinalValue(from, "NpcFight_FabaoPowerAddP"))
            from.Equip:UnEquipItem(fabao, false) 
            ThingMgr:RemoveThing(fabao, true, false) 
            self.power = power * POWER_ADD 
            from:AddMaxAge(AGE_COST)
        end
    end
end


function tbSkill:Apply(skilldef, key, from)
    
end


function tbSkill:FightBodyApply(skilldef, fightbody, from)
end


function tbSkill:MissileBomb(skilldef, pos, from)
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
    return self.power
end


function tbSkill:FlyCheck(skilldef, keys, from)
    return 0
end