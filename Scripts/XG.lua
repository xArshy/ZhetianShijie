local XG = GameMain:NewMod("XG")

function XG:LXDT1()
    local zj = me.npcObj
    zj:LeaveMapExplore()
    zj:LeaveFlying()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
    NpcMgr:AddNpc(npc, 300, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc:AddTitle("Lingxu Dongtian's disciple", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(300000)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 10000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(fabao.MaxLing)
        count = count + 1
    end
    npc:AddLing(9999999)
    for i = 0, 6, 1 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
        NpcMgr:AddNpc(npc, 500 + 50 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc:AddTitle("Disciples in Lingxu Cave", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 1)
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 5
        npc.FightBody.AttackTime = 100
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end

function XG:LXDT2()
    local zj = me.npcObj
    zj:LeaveMapExplore()
    zj:LeaveFlying()
    for i = 1, 9, 3 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc:AddTitle("Disciples in Lingxu Cave", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 2)
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 10
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        for i = 1, 9, 3 do
            local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
            NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
            ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
            npc:AddTitle("Disciples in Lingxu Cave", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
            npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
            npc.PropertyMgr:AddFeature("ZTofBody")
            npc.BodyColor = 4
            npc:AddLing(9999999)
            npc.FightBody.AutoNext = true
            npc.FightBody.IsAttacker = true
            npc.FightBody.AttackWait = 10
            npc.FightBody.AttackTime = 300
            npc.TargetMode = 2
            npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        end
    end
end

function XG:LXDT3()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
    NpcMgr:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Ye Fan")
    npc.PropertyMgr:AddFeature("GodBody")
    npc.LuaHelper:AddTitle("Elder Eucharist", "The first Eucharist to break the curse after the ancient times", 4)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 2)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:LXDT4()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

    NpcMgr:AddNpc(npc, 600, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 7, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Jiang's errands")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle(
        "Pursuit of the Eucharist",
        "After the ancient times, I did not know a few people who hunted down the Eucharist",
        2
    )
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:LXDT5()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

    NpcMgr:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Ye Fan")
    npc.PropertyMgr:AddFeature("GodBody")
    npc.LuaHelper:AddTitle("Elder Eucharist", "The first Eucharist to break the curse after the ancient times", 4)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 2)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
        NpcMgr:AddNpc(npc, 600, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        ThingMgr:EquptNpc(npc, 7, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc:SetName("Jiang's errands")
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.LuaHelper:AddTitle(
            "Pursuit of the Eucharist",
            "After the ancient times, I did not know a few people who hunted down the Eucharist",
            2
        )
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 10
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
        local list = npc.Equip:FindFabao()
        for k, v in pairs(list) do
            npc.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(0)
            npc:EquipItem(fabao)
            fabao:AddLing(99999999999)
            count = count + 1
        end
    end
end

function XG:LXDT6()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

    NpcMgr:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Elder Han")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("The ancients did not bully me", "The first person to prepare for the Eucharist", 3)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(1000000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:LXDT7()
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Elder Han")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("The ancients did not bully me", "The first person to prepare for the Eucharist", 3)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(4000000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 5)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:JJHFF2()
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1100, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Maiden")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(6500000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1010, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Linen head")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(8000000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Maiden")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(8500000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

    NpcMgr:AddNpc(npc, 1410, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Ye Fan")
    npc.PropertyMgr:AddFeature("GodBody")
    npc.LuaHelper:AddTitle("Elder Eucharist", "The first Eucharist to break the curse after the ancient times", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 2)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

    NpcMgr:AddNpc(npc, 1400, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Ji Ziyue")
    npc.PropertyMgr:AddFeature("YuanofBody")
    npc.LuaHelper:AddTitle("Jijia Little Moon", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:JJHFF()
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1210, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Maiden")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(9200000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Linen head")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(9000000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

    NpcMgr:AddNpc(npc, 1110, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)
    npc:SetName("Maiden")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Mysterious Maiden", "。。。。", 3)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.BodyColor = 4
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(9200000)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
end

function XG:KQWDF()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Lord Jiang Family")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(15500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Lord Yaoguang")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(15500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Lord Ji Family")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(15500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yao Xi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(8500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yaoguang Shengzi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(8500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Ji Haoyue")
    npc.PropertyMgr:AddFeature("KingofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(8300000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:YXYG()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yao Xi")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(10000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:KQWDF2()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yao Xi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr.Practice:MakeGold(12500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yaoguang Shengzi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(12500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Ji Haoyue")
    npc.PropertyMgr:AddFeature("KingofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(12300000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2600)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:DDLQ()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yao Xi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(14000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yaoguang Shengzi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(18000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Ji Haoyue")
    npc.PropertyMgr:AddFeature("KingofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(16000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yaoguang Shengzi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(16000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Golden Wing King Xiaopeng")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(20000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1800)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1200)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Jiang Family Eucharist")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1160, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(4000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("The First Son")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(11000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Virgin")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(11000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yin Yang Sheng Zi")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1065, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(12000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Yin Yang Sheng Nuo")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(12000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("The Great Virgin")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1025, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(12000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1400)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 700)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Disciple of The Palace")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1560, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 6, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(5900000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 3)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教弟子")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1260, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 6, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(7000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 3)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("太初圣地弟子")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1460, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 6, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(7000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 4) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 500)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 3)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 50
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end

function XG:DDLQ()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇头头")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(55555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2200)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 7)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇头头")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(55555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2200)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 7)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇头头")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(55555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)

    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2200)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1700)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 7)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1200)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)

    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)

    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("流寇小弟")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(25555555)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1100)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1.5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 2.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 1000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end

function XG:YSYB1()
    for i = 2, 8, 3 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)

        npc:AddTitle("贪婪修行者", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 1)
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.PropertyMgr.Practice:MakeGold(15000000)
        for i = 2, 6, 3 do
            local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

            NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

            ThingMgr:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Normal)

            npc:AddTitle("贪婪修行者", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
            npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
            npc.PropertyMgr.Practice:RandomTree()
            npc.BodyColor = 4
            npc:AddLing(9999999)
            npc.PropertyMgr.Practice:MakeGold(3000000)
            npc.FightBody.AutoNext = true
            npc.FightBody.IsAttacker = true
            npc.FightBody.AttackWait = 10
            npc.FightBody.AttackTime = 6000
            npc.TargetMode = 2
            npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        end
    end
end

function XG:YSTZ()
    npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
    npc.LuaHelper:AddTitle("附近真仙散修", "......", 2)
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1900, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(9000000)
    npc.PropertyMgr.Practice:RandomTree()

    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(fabao.MaxLing)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:YSTZ1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc.LuaHelper:AddTitle("附近真仙散修", "......", 2)
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 900, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(15000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(fabao.MaxLing)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:YSJC()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Golden Wing King Xiaopeng")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("天鹏之躯", "以龙象为食，以天鹏极速出名。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 8, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(30000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:YSJC1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Golden Wing King Xiaopeng")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("天鹏之躯", "以龙象为食，以天鹏极速出名。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:MakeGold(40000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 2800)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2200)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 3)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 15)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2100)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:YSQD1()
    local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")
    NpcMgr:AddNpc(npc, 300, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc:AddTitle("实力一般，但想抢东西", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc:AddLing(9999999)
    npc.PropertyMgr.Practice:MakeGold(1500000)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 50
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(9999999)
    for i = 3, 6, 2 do
        local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
        NpcMgr:AddNpc(npc, 310 + 120 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
        npc:AddTitle("实力一般，但是想抢东西", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc:AddLing(9999999)
        npc.PropertyMgr.Practice:MakeGold(1500000)
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

        local npcitems = npc.Bag.m_lisItems 
        for i = 0, npcitems.Count - 1 do 
            ThingMgr:RemoveThing(npcitems[0])
        end
        local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
        local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
        local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
        npc:EquipItem(item1)
        npc:EquipItem(item2)
        npc:EquipItem(item3)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 10
        npc.FightBody.AttackTime = 50
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc:AddLing(9999999)
    end
end

function XG:YSQD2()
    for i = 2, 6, 2 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 6, CS.XiaWorld.g_emNpcRichLable.Normal)

        npc:AddTitle("小偷修行者", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 1)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.PropertyMgr.Practice:MakeGold(9000000)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 5
        npc.FightBody.AttackTime = 10000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        for i = 3, 7, 1 do
            local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

            NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

            ThingMgr:EquptNpc(npc, 6, CS.XiaWorld.g_emNpcRichLable.Normal)

            npc:AddTitle("小偷修行者", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
            npc.PropertyMgr:AddFeature("ZTofBody")
            npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
            npc.PropertyMgr.Practice:RandomTree()
            npc.BodyColor = 4
            npc:AddLing(9999999)
            npc.PropertyMgr.Practice:MakeGold(3500000)
            npc.FightBody.AutoNext = true
            npc.FightBody.IsAttacker = true
            npc.FightBody.AttackWait = 10
            npc.FightBody.AttackTime = 50
            npc.TargetMode = 2
            npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        end
    end
end

function XG:YSQD3()
    local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(), true)
    a.PropertyMgr:AddFeature("ZTofBody")
    a:Draw()
    a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do
        a.PropertyMgr.Practice:AddPractice(999999999)
        a.PropertyMgr.Practice:BrokenNeck()
    end
    a.PropertyMgr.Practice:MakeGold(30000000)
    a.PropertyMgr.Practice:RandomTree()
    a.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    a:AddLing(999999999)
    local list = a.Equip:FindFabao()
    for k, v in pairs(list) do
        a.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        a:EquipItem(fabao)
        fabao:AddLing(fabao.MaxLing)
        count = count + 1
        npc.FightBody.AttackWait = 10
        npc.FightBody.AttackTime = 10000
        local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
        a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(), true)
        a.PropertyMgr:AddFeature("ZTofBody")
        a:Draw()
        a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        while (a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do
            a.PropertyMgr.Practice:AddPractice(999999999)
            a.PropertyMgr.Practice:BrokenNeck()
        end
        a.PropertyMgr.Practice:MakeGold(30000000)
        a.PropertyMgr.Practice:RandomTree()
        a.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
        a:AddLing(999999999)
        local list = a.Equip:FindFabao()
        for k, v in pairs(list) do
            a.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(0)
            a:EquipItem(fabao)
            fabao:AddLing(fabao.MaxLing)
            count = count + 1
            npc.FightBody.AttackWait = 10
            npc.FightBody.AttackTime = 10000
            local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
            a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(), true)
            a.PropertyMgr:AddFeature("ZTofBody")
            a:Draw()
            a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
            while (a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do
                a.PropertyMgr.Practice:AddPractice(999999999)
                a.PropertyMgr.Practice:BrokenNeck()
            end
            a.PropertyMgr.Practice:MakeGold(30000000)
            a.PropertyMgr.Practice:RandomTree()
            a.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
            a:AddLing(999999999)
            local list = a.Equip:FindFabao()
            for k, v in pairs(list) do
                a.Equip:UnEquipItem(v)
                ThingMgr:RemoveThing(v)
            end
            local count = 0
            while (count < 6) do
                local fabao =
                    CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
                fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
                fabao.Fabao:AddGodCount(0)
                a:EquipItem(fabao)
                fabao:AddLing(fabao.MaxLing)
                count = count + 1
                a.FightBody.AttackWait = 10
                a.FightBody.AttackTime = 10000
            end
        end
    end
end

function XG:YSGX1()
    local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(), true)
    a.PropertyMgr:AddFeature("ZTofBody")
    a:Draw()
    a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do
        a.PropertyMgr.Practice:AddPractice(999999999)
        a.PropertyMgr.Practice:BrokenNeck()

        a.PropertyMgr.Practice:MakeGold(60000000)
        a.PropertyMgr.Practice:RandomTree()
        a.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
        a:AddLing(999999999)
        local list = a.Equip:FindFabao()
        for k, v in pairs(list) do
            a.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)

            local count = 0
            while (count < 6) do
                local fabao =
                    CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
                fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
                fabao.Fabao:AddGodCount(0)
                a:EquipItem(fabao)
                fabao:AddLing(fabao.MaxLing)
                count = count + 1
                a.FightBody.AttackWait = 10
                a.FightBody.AttackTime = 10000
            end
        end
    end
end

function XG:YSGX2()
    for i = 2, 8, 3 do
        local a = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
        a:SetPostion(Map:GetRandomWalkAbleKeyinLifeArea(), true)
        a.PropertyMgr:AddFeature("ZTofBody")
        a:Draw()
        a.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        while (a.PropertyMgr.Practice.StageValue ~= a.PropertyMgr.Practice.CurStage.Value) do
            a.PropertyMgr.Practice:AddPractice(999999999)
            a.PropertyMgr.Practice:BrokenNeck()

            a.PropertyMgr.Practice:MakeGold(40000000)
            a.PropertyMgr.Practice:RandomTree()
            a.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
            a:AddLing(999999999)
            local list = a.Equip:FindFabao()
            for k, v in pairs(list) do
                a.Equip:UnEquipItem(v)
                ThingMgr:RemoveThing(v)

                local count = 0
                while (count < 6) do
                    local fabao =
                        CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 12, 10)
                    fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
                    fabao.Fabao:AddGodCount(0)
                    a:EquipItem(fabao)
                    fabao:AddLing(fabao.MaxLing)
                    count = count + 1
                    a.FightBody.AttackWait = 10
                    a.FightBody.AttackTime = 10000
                end
            end
        end
    end
end
function XG:YYGX()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 3
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(50000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 3
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(50000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 900)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1010, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 3
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(50000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教长老")
    npc.PropertyMgr:AddFeature("ZTofBody")

    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 3
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(50000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1040, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 10
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(45000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 2000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:LFZ()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("老疯子")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL", 10)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 12
    npc.PropertyMgr.Practice:AddPractice(999999999)
    npc.PropertyMgr.Practice:BrokenNeck()
    npc.PropertyMgr.Practice:RandomTree()
    npc.PropertyMgr.Practice:MakeGold(125000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao, false)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local fabaoname = {"七日回魂丹", "万古丸", "行纵天下", "万三峰域", "天涯遗孤", "天璇圣丹"}
    for i = 1, 6, 1 do
        local item =
            CS.XiaWorld.ItemRandomMachine.RandomFabao(
            CS.XiaWorld.g_emItemLable.FightFabao,
            0,
            12,
            100,
            "Item_Dan_ReBorn_4",
            "Item_StarEssence",
            10
        )
        npc.map:DropItem(item, npc.Key, true, true, false, true, 5)
        item:SetName(fabaoname[i])
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 6200)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 22)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 22)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2000)
        if count == 1 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,
                Desc = "天璇心法：20%几率对敌方法宝造成6倍伤害",
                fParam1 = "0.20",
                fParam2 = "5",
                nParam1 = "2"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 0 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                Desc = "行字无双：每攻击12次减少20s术法cd",
                nParam1 = "12",
                fParam1 = "20"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        item:AddLing(99999999999)
        npc:EquipItem(item, CS.XiaWorld.g_emEquipType.None)

        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc:AddLing(999999999)
    end
end
function XG:HZ()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("荒主")

    npc.PropertyMgr:AddFeature("ChaosfBody")

    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Shield")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoAtk")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoSpeed")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoDisp")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoNum")

    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FightSkillCD")

    npc.LuaHelper:AddTitle("大帝半成品", "狠人大帝魔胎遗褪", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 11000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 30
    npc.PropertyMgr.Practice:MakeGold(500000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    npc.LuaHelper:LearnEsoteric("Gong_TTMG_13")
    npc.LuaHelper:LearnEsoteric("Gong_TTMG_12")
    npc.LuaHelper:LearnEsoteric("Gong_TTMG_11")
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)

        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 10000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 8000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 3)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.2)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 40)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 40)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 7000)
        npc:EquipItem(fabao)
        if count == 1 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,
                Desc = "破灭：50%几率对敌方法宝造成10倍伤害",
                fParam1 = "0.50",
                fParam2 = "9",
                nParam1 = "2"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 0 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AgeAddPowerUp,
                Desc = "神伤：年龄越大伤害越高",
                fParam1 = "2",
                fParam2 = "0"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 2 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                Desc = "君临天下：每攻击3次减少10s术法cd",
                nParam1 = "3",
                fParam1 = "10"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 3 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountCostSkill,
                Desc = "万念花开：每攻击30次释放一次万化圣诀",
                nParam1 = "30",
                fParam1 = "TTMG_WHSJ"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 4 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitSameFabaoAndEffect,
                Desc = "吞天魔功：每攻击10次使对手法宝无效",
                nParam1 = "10",
                nParam2 = "1"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 5 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,
                Desc = "吞天魔功：每攻击10次分出10道分影，持续10s",
                nParam1 = "10",
                nParam2 = "10",
                fParam1 = "10"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣女")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Shield")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoAtk")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 600, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)

    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        npc.PropertyMgr.Practice:RandomTree()
        npc.PropertyMgr.Practice.GodCount = 4
        npc.PropertyMgr.Practice:MakeGold(100000000)
        npc.PropertyMgr.Practice:RandomTree()
    end

    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao, false)

    local fabaoname = {"七日回魂丹", "万古丸", "行纵天下", "万三峰域", "天涯遗孤", "天璇圣丹"}
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    for i = 1, 6, 1 do
        local item =
            CS.XiaWorld.ItemRandomMachine.RandomFabao(
            CS.XiaWorld.g_emItemLable.FightFabao,
            0,
            12,
            100,
            "Item_LifeStream",
            "Item_StarEssence",
            10
        )
        npc.map:DropItem(item, npc.Key, true, true, false, true, 5)
        item:SetName(fabaoname[i])
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 4600)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 4000)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 12)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 18)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2500)
        item:AddLing(99999999999)
        npc:EquipItem(item, CS.XiaWorld.g_emEquipType.None)
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")
    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        npc.PropertyMgr.Practice.GodCount = 1
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(8000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)

    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:Lqnq()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣女")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Shield")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_FabaoAtk")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 600, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)

    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        npc.PropertyMgr.Practice:RandomTree()
        npc.PropertyMgr.Practice.GodCount = 4
        npc.PropertyMgr.Practice:MakeGold(100000000)
        npc.PropertyMgr.Practice:RandomTree()
    end

    npc:AddLing(999999999)
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao, false)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local fabaoname = {"七日回魂丹", "万古丸", "行纵天下", "万三峰域", "天涯遗孤", "天璇圣丹"}
    for i = 1, 6, 1 do
        local item =
            CS.XiaWorld.ItemRandomMachine.RandomFabao(
            CS.XiaWorld.g_emItemLable.FightFabao,
            0,
            12,
            100,
            "Item_LifeStream",
            "Item_StarEssence",
            10
        )
        npc.map:DropItem(item, npc.Key, true, true, false, true, 5)
        item:SetName(fabaoname[i])
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 4600)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 4000)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 12)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 18)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2500)
        if count == 1 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,
                Desc = "天璇心法：20%几率对敌方法宝造成6倍伤害",
                fParam1 = "0.20",
                fParam2 = "5",
                nParam1 = "2"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 0 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                Desc = "天璇圣法：每攻击10次减少9s术法cd",
                nParam1 = "10",
                fParam1 = "9"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        item:AddLing(99999999999)
        npc:EquipItem(item, CS.XiaWorld.g_emEquipType.None)
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")
    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        npc.PropertyMgr.Practice.GodCount = 1
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(8000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)

    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:RandomTree()
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")

    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)

    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)

    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("天璇圣地长老")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("Modifier_SpNpc_Ling")
    npc.LuaHelper:AddTitle("荒奴", "。。。。", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 500, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice.GodCount = 1
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(80000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function XG:CLLD()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("赤龙老道")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 6
    npc.PropertyMgr.Practice:MakeGold(95000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3900)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 4)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 12)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 16)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2500)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:TTMG1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("各圣地大能")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 3
    npc.PropertyMgr.Practice:MakeGold(15000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1900)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("各圣地大能")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 6
    npc.PropertyMgr.Practice:MakeGold(15000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 1900)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 800)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("各圣地大能")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 6
    npc.PropertyMgr.Practice:MakeGold(15000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:TTMG2()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姬家圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1018, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶池圣母")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1022, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姜家圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("大衍圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1400, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("中州神皇")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1005, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠圣佛")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1004, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("道一圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶光圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠秃驴")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1100, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:TTMG3()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姬家圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶池圣母")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1010, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姜家圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("大衍圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1040, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1050, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("中州神皇")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1060, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠圣佛")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1070, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("道一圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1080, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶光圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1090, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠秃驴")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1100, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(65000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姬家教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2020, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶池教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2010, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姜家教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2000, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("大衍教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2030, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("阴阳教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2040, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("中州教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2045, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2050, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("道一教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2055, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("瑶光教众")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2014, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("西漠秃驴教众")
    npc.PropertyMgr:AddFeature("ZTofBody")

    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 2222, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(35000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
end

function XG:LBS()
    for i = 1, 9, 3 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc:AddTitle("圣地老不死", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 2)
        npc.PropertyMgr:AddFeature("ZTofBody")
        CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
        while (npc.LuaHelper:GetGLevel() ~= 12) do
            npc.PropertyMgr.Practice:AddPractice(9999999)
            npc.PropertyMgr.Practice:BrokenNeck()
            if npc.LuaHelper:GetGLevel() == 12 then
                while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                    npc.PropertyMgr.Practice:AddPractice(90000000)
                    npc.PropertyMgr.Practice:BrokenNeck()
                end
            end
        end
        npc.PropertyMgr.Practice.GodCount = 9
        npc.PropertyMgr.Practice:MakeGold(10000000)
        npc.PropertyMgr.Practice:RandomTree()
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 15
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end
function XG:LBS1()
    for i = 1, 9, 3 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

        NpcMgr:AddNpc(npc, 3000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc:AddTitle("圣地老不死", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 2)
        npc.PropertyMgr:AddFeature("ZTofBody")
        CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
        while (npc.LuaHelper:GetGLevel() ~= 12) do
            npc.PropertyMgr.Practice:AddPractice(9999999)
            npc.PropertyMgr.Practice:BrokenNeck()
            if npc.LuaHelper:GetGLevel() == 12 then
                while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                    npc.PropertyMgr.Practice:AddPractice(90000000)
                    npc.PropertyMgr.Practice:BrokenNeck()
                end
            end
        end
        npc.PropertyMgr.Practice.GodCount = 9
        npc.PropertyMgr.Practice:MakeGold(10000000)
        npc.PropertyMgr.Practice:RandomTree()
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 15
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    for i = 2, 6, 8 do
        local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human")

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 5, CS.XiaWorld.g_emNpcRichLable.Normal)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc:AddTitle("圣地老不死", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 2)
        npc.PropertyMgr:AddFeature("ZTofBody")
        CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
        while (npc.LuaHelper:GetGLevel() ~= 12) do
            npc.PropertyMgr.Practice:AddPractice(9999999)
            npc.PropertyMgr.Practice:BrokenNeck()
            if npc.LuaHelper:GetGLevel() == 12 then
                while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                    npc.PropertyMgr.Practice:AddPractice(90000000)
                    npc.PropertyMgr.Practice:BrokenNeck()
                end
            end
        end
        npc.PropertyMgr.Practice.GodCount = 9
        npc.PropertyMgr.Practice:MakeGold(10000000)
        npc.PropertyMgr.Practice:RandomTree()
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 15
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end

function XG:XJGZ()
    for i = 2, 8, 3 do
        local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Normal)

        npc:AddTitle("各州流寇头头", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.PropertyMgr.Practice:MakeGold(35000000)
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

        local npcitems = npc.Bag.m_lisItems 
        for i = 0, npcitems.Count - 1 do 
            ThingMgr:RemoveThing(npcitems[0])
        end
        local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
        local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
        local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
        npc:EquipItem(item1)
        npc:EquipItem(item2)
        npc:EquipItem(item3)
        local list = npc.Equip:FindFabao()
        for k, v in pairs(list) do
            npc.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1500)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 9)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 14)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1000)
            npc:EquipItem(fabao)
            fabao:AddLing(99999999999)
            count = count + 1
        end
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
    for i = 2, 6, 3 do
        local npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)

        NpcMgr:AddNpc(npc, 1000 + 150 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)

        ThingMgr:EquptNpc(npc, 11, CS.XiaWorld.g_emNpcRichLable.Normal)

        npc:AddTitle("各州流寇头头", 0, CS.XiaWorld.g_emNpcTitleType.Normal, 3)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        npc.PropertyMgr.Practice:RandomTree()
        npc.BodyColor = 4
        npc:AddLing(9999999)
        npc.PropertyMgr.Practice:MakeGold(35000000)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 10
        npc.FightBody.AttackTime = 6000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

        local npcitems = npc.Bag.m_lisItems 
        for i = 0, npcitems.Count - 1 do 
            ThingMgr:RemoveThing(npcitems[0])
        end
        local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
        local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
        local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
        npc:EquipItem(item1)
        npc:EquipItem(item2)
        npc:EquipItem(item3)
        local list = npc.Equip:FindFabao()
        for k, v in pairs(list) do
            npc.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 1500)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 8)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 13)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 1000)
            npc:EquipItem(fabao)
            fabao:AddLing(99999999999)
            count = count + 1
        end
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end

function XG:JJDN()
    for i = 2, 8, 3 do
        npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
        npc:SetName("姬家大能")
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.PropertyMgr:AddModifier("ZT_ALL")
        npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
        CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000 + 20 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        while (npc.LuaHelper:GetGLevel() ~= 12) do
            npc.PropertyMgr.Practice:AddPractice(9999999)
            npc.PropertyMgr.Practice:BrokenNeck()
            if npc.LuaHelper:GetGLevel() == 12 then
                while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                    npc.PropertyMgr.Practice:AddPractice(90000000)
                    npc.PropertyMgr.Practice:BrokenNeck()
                end
            end
        end
        npc.PropertyMgr.Practice.GodCount = 9
        npc.PropertyMgr.Practice:MakeGold(30000000)
        npc.PropertyMgr.Practice:RandomTree()
        npc:AddLing(999999999)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 50
        npc.FightBody.AttackTime = 10000
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
        local npcitems = npc.Bag.m_lisItems 
        for i = 0, npcitems.Count - 1 do 
            ThingMgr:RemoveThing(npcitems[0])
        end
        local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
        local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
        local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
        npc:EquipItem(item1)
        npc:EquipItem(item2)
        npc:EquipItem(item3)
        local list = npc.Equip:FindFabao()
        for k, v in pairs(list) do
            npc.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
            npc:EquipItem(fabao)
            if count == 0 then
                local data = {
                    Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                    Desc = "虚空经：每攻击21次减少10s术法cd",
                    nParam1 = "21",
                    fParam1 = "10"
                }
                fabao.Fabao:AddAbilityData(data)
            end
            if count == 1 then
                local data = {
                    Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountCostSkill,
                    Desc = "Great Void Hand Seal：Unleash Great Void Hand Seal every 30 attacks",
                    nParam1 = "30",
                    fParam1 = "TDJ_DJ_XKDSY"
                }
                fabao.Fabao:AddAbilityData(data)
            end
            fabao:AddLing(99999999999)
            count = count + 1
        end
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end
function XG:JJDN1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("姬家圣主")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.PropertyMgr:AddModifier("ZT_ALL", 2)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000 + 20 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    while (npc.LuaHelper:GetGLevel() ~= 12) do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice.GodCount = 9
    npc.PropertyMgr.Practice:MakeGold(30000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems 
    for i = 0, npcitems.Count - 1 do 
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while (count < 6) do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
        npc:EquipItem(fabao)
        if count == 0 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                Desc = "虚空经：每攻击21次减少20s术法cd",
                nParam1 = "21",
                fParam1 = "20"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 1 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountCostSkill,
                Desc = "Great Void Hand Seal：Unleash Great Void Hand Seal every 15 attacks",
                nParam1 = "15",
                fParam1 = "TDJ_DJ_XKDSY"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        if count == 2 then
            local data = {
                Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,
                Desc = "虚断两界：每攻击1次分出4道分影，持续10s",
                nParam1 = "1",
                nParam2 = "4",
                fParam1 = "5"
            }
            fabao.Fabao:AddAbilityData(data)
        end
        fabao:AddLing(99999999999)
        count = count + 1
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    for i = 2, 8, 3 do
        npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
        npc:SetName("Ji Family Power")
        npc.PropertyMgr:AddFeature("ZTofBody")
        npc.PropertyMgr:AddModifier("ZT_ALL")
        npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
        CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1000 + 20 * i, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
        CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
        npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
        while (npc.LuaHelper:GetGLevel() ~= 12) do
            npc.PropertyMgr.Practice:AddPractice(9999999)
            npc.PropertyMgr.Practice:BrokenNeck()
            if npc.LuaHelper:GetGLevel() == 12 then
                while (npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value) do
                    npc.PropertyMgr.Practice:AddPractice(90000000)
                    npc.PropertyMgr.Practice:BrokenNeck()
                end
            end
        end
        npc.PropertyMgr.Practice.GodCount = 9
        npc.PropertyMgr.Practice:MakeGold(30000000)
        npc.PropertyMgr.Practice:RandomTree()
        npc:AddLing(999999999)
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 50
        npc.FightBody.AttackTime = 10000
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
        npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
        local npcitems = npc.Bag.m_lisItems 
        for i = 0, npcitems.Count - 1 do 
            ThingMgr:RemoveThing(npcitems[0])
        end
        local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) 
        local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) 
        local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) 
        npc:EquipItem(item1)
        npc:EquipItem(item2)
        npc:EquipItem(item3)
        local list = npc.Equip:FindFabao()
        for k, v in pairs(list) do
            npc.Equip:UnEquipItem(v)
            ThingMgr:RemoveThing(v)
        end
        local count = 0
        while (count < 6) do
            local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
            fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
            fabao.Fabao:AddGodCount(6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3000)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.6)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance, 5)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition, 10)
            fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
            npc:EquipItem(fabao)
            if count == 0 then
                local data = {
                    Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,
                    Desc = "Void Warp: Decrease 10s spell cd for every 21 attacks",
                    nParam1 = "21",
                    fParam1 = "10"
                }
                fabao.Fabao:AddAbilityData(data)
            end
            if count == 1 then
                local data = {
                    Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountCostSkill,
                    Desc = "Great Void Hand Seal：Unleash Great Void Hand Seal every 30 attacks",
                    nParam1 = "30",
                    fParam1 = "TDJ_DJ_XKDSY"
                }
                fabao.Fabao:AddAbilityData(data)
            end
            fabao:AddLing(99999999999)
            count = count + 1
        end
        npc.FightBody.AutoNext = true
        npc.FightBody.IsAttacker = true
        npc.FightBody.AttackWait = 20
        npc.FightBody.AttackTime = 100000
        npc.TargetMode = 2
        npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    end
end
