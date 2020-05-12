local tbTable = GameMain:GetMod("_SkillAction")
local tbSkill = tbTable:GetSkill("MSZ")

function tbSkill:Init()
end

function tbSkill:GetAnimation()
    return "MSZ"
end

function tbSkill:GetSingTime()
    return 1.4
end

function tbSkill:GetName()
    return "Devil's Cone"
end

function tbSkill:Enter()
    WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/fabao")
end

function tbSkill:Cast()
    local fabao =
        ItemRandomMachine.RandomFabao(g_emItemLable.FightFabao, 12, 12, 100, "Item_Boss_Jiaowangci", nil, 0, true)
    fabao:SetName("Devil's Cone")
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 15000)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 8000)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 2)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 10)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 120)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 50)
    fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 4000)
    self.bind:EquipItem(fabao)
    
    local data1 = {
        Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,
        Desc = "Demon God：5% chance to cause 1000x damage to enemy magic weapon",
        fParam1 = "0.05",
        fParam2 = "999",
        nParam1 = "2"
    }
    local data2 = {
        Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,
        Desc = "Thirty-six：36 attacks with 36 splits for 15s",
        nParam1 = "36",
        nParam2 = "36",
        fParam1 = "15"
    }
    fabao.Fabao:AddAbilityData(data1)
    fabao.Fabao:AddAbilityData(data2)
    fabao:AddLing(fabao.MaxLing)
    self.bind.FightBody:CastFabao(self.bind:GetBipPosition("biped R Hand"), g_emFaBaoMode.Boss)
end

function tbSkill:Step(dt, duration)
    return 1
end

function tbSkill:Leave(did)
end