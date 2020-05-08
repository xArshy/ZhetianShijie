local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("TTMG_2_2")

function tbMagic:Init()
end

function tbMagic:EnableCheck(npc)
    return true
end

function tbMagic:TargetCheck(key, t)
    if t.ThingType == CS.XiaWorld.g_emThingType.Npc then
        return true
    else
        return false
    end
end

function tbMagic:MagicEnter(IDs, IsThing)
    self.targetId = IDs[0]
end

function tbMagic:MagicLeave(success)
    if success then
        if self.bind then
            self.bind.LuaHelper:TriggerStory("TTMG_2_2")
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end