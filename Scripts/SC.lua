local SC = GameMain:NewMod("SC")

function SC:SCHLC()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Zhongzhou Twin Kings")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Dark King", "......", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1900, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice.GodCount = 2
    while npc.LuaHelper:GetGLevel() ~= 12 do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(20000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 10
    npc.FightBody.AttackTime = 10000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems -- Get list of items on NPC
    for i = 0, npcitems.Count - 1 do -- Remove NPC Body items
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- Get random weapons
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- Get random clothes
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- Get random pants
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while count < 6 do
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

function SC:SCHLC1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Zhongzhou Twin Kings")
    npc.PropertyMgr:AddFeature("ZTofBody")
    npc.LuaHelper:AddTitle("Dark King", "......", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1900, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice.GodCount = 2
    while npc.LuaHelper:GetGLevel() ~= 12 do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(40000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(9999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)

    local npcitems = npc.Bag.m_lisItems -- Get list of items on NPC
    for i = 0, npcitems.Count - 1 do -- Delete NPC body items
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- 获取随机武器
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- 获取随机衣服
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- 获取随机裤子
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while count < 6 do
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

function SC:SWFS()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Jiang Taixu")
    npc.PropertyMgr:AddFeature("KingofBody")
    npc.LuaHelper:AddTitle("King of White", "Hit white，Peerless King", 4)
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice.GodCount = 9
    while npc.LuaHelper:GetGLevel() ~= 12 do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value do
                npc.PropertyMgr.Practice:AddPractice(40000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(12500000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems -- Get list of items on NPC
    for i = 0, npcitems.Count - 1 do -- Delete NPC body items
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- 获取随机武器
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- 获取随机衣服
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- 获取随机裤子
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local fabaoname = {
        "Fighting Dragon",
        "Heavenly Power",
        "Taixu God King",
        "Sea Rising Bright Moon",
        "Miles",
        "Purple Dragon King Wrath"
    }
    for i = 1, 6, 1 do
        local item =
            CS.XiaWorld.ItemRandomMachine.RandomFabao(
            CS.XiaWorld.g_emItemLable.FightFabao,
            0,
            12,
            100,
            "HUO_QCSH",
            "Item_StarEssence",
            10
        )
        npc.map:DropItem(item, npc.Key, true, true, false, true, 5)
        item:SetName(fabaoname[i])
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 6600)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 3)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.35)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 4500)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3900)
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
end

function SC:SWFS1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Jiang Taixu")
    npc.PropertyMgr:AddFeature("KingofBody")
    npc.LuaHelper:AddTitle("King of White", "Hit white，Peerless King", 4)
    npc.PropertyMgr:AddModifier("ZT_ALL")
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 12, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice.GodCount = 6
    while npc.LuaHelper:GetGLevel() ~= 12 do
        npc.PropertyMgr.Practice:AddPractice(9999999)
        npc.PropertyMgr.Practice:BrokenNeck()
        if npc.LuaHelper:GetGLevel() == 12 then
            while npc.PropertyMgr.Practice.StageValue ~= npc.PropertyMgr.Practice.CurStage.Value do
                npc.PropertyMgr.Practice:AddPractice(90000000)
                npc.PropertyMgr.Practice:BrokenNeck()
            end
        end
    end
    npc.PropertyMgr.Practice:MakeGold(100000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(9999999999)
    npc.LuaHelper:LearnEsoteric("Gong_HYJ_DRXW")
    npc.LuaHelper:LearnEsoteric("Gong_HYJ_SJ_C1_YQ_1")
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao, false)
    local npcitems = npc.Bag.m_lisItems -- 获取NPC身上物品列表
    for i = 0, npcitems.Count - 1 do -- 删除NPC 身上物品
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- 获取随机武器
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- 获取随机衣服
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- 获取随机裤子
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local fabaoname = {
        "Fighting Dragon",
        "Heavenly Power",
        "Taixu God King",
        "Sea Rising Bright Moon",
        "Miles",
        "Purple Dragon King Wrath"
    }
    for i = 1, 6, 1 do
        local item =
            CS.XiaWorld.ItemRandomMachine.RandomFabao(
            CS.XiaWorld.g_emItemLable.FightFabao,
            0,
            12,
            100,
            "Item_LQ",
            "Item_StarEssence",
            10
        )
        npc.map:DropItem(item, npc.Key, true, true, false, true, 5)
        item:SetName(fabaoname[i])
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 5000)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate, 0.5)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing, 3500)
        item.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 3000)
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
end

function SC:ST()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Ye Fan")
    npc.PropertyMgr:AddFeature("GodBody")
    npc.LuaHelper:AddTitle("Elder Eucharist", "The first Eucharist to break the curse after the ancient times", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1400, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 9, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(36000000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 6)
    local npcitems = npc.Bag.m_lisItems -- 获取NPC身上物品列表
    for i = 0, npcitems.Count - 1 do -- 删除NPC 身上物品
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- 获取随机武器
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- 获取随机衣服
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- 获取随机裤子
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while count < 6 do
        local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100, 10)
        fabao.Fabao.PS[1] = math.max(fabao.Fabao.PS[1], 3) * 3
        fabao.Fabao:AddGodCount(0)
        npc:EquipItem(fabao)
        fabao:AddLing(fabao.MaxLing)
        count = count + 1
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower, 3800)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale, 1)
        fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover, 2400)
        fabao:AddLing(99999999999)
    end
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 20
    npc.FightBody.AttackTime = 100000
    npc.TargetMode = 2
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc:AddLing(999999999)
end

function SC:ST1()
    npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name)
    npc:SetName("Ye Fan")
    npc.PropertyMgr:AddFeature("GodBody")
    npc.LuaHelper:AddTitle("Elder Eucharist", "The first Eucharist to break the curse after the ancient times", 4)
    npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
    CS.XiaWorld.NpcMgr.Instance:AddNpc(npc, 1200, Map, CS.XiaWorld.Fight.g_emFightCamp.Enemy)
    CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc, 8, CS.XiaWorld.g_emNpcRichLable.Richest)
    npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(), 12)
    npc.PropertyMgr.Practice:MakeGold(54800000)
    npc.PropertyMgr.Practice:RandomTree()
    npc:AddLing(999999999)
    npc.FightBody.AutoNext = true
    npc.FightBody.IsAttacker = true
    npc.FightBody.AttackWait = 50
    npc.FightBody.AttackTime = 50000
    npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker
    npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum", 4)
    local npcitems = npc.Bag.m_lisItems -- 获取NPC身上物品列表
    for i = 0, npcitems.Count - 1 do -- 删除NPC 身上物品
        ThingMgr:RemoveThing(npcitems[0])
    end
    local item1 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon, 0, 12, 100) -- 获取随机武器
    local item2 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes, 0, 12, 100) -- 获取随机衣服
    local item3 = CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers, 0, 12, 100) -- 获取随机裤子
    npc:EquipItem(item1)
    npc:EquipItem(item2)
    npc:EquipItem(item3)
    local list = npc.Equip:FindFabao()
    for k, v in pairs(list) do
        npc.Equip:UnEquipItem(v)
        ThingMgr:RemoveThing(v)
    end
    local count = 0
    while count < 6 do
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