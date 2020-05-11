local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("YTS_LXY")

function tbMagic:Init()
end

function tbMagic:EnableCheck(npc)
    return true
end

function tbMagic:TargetCheck(key, t)
    return true
end

function tbMagic:MagicEnter(IDs, IsThing)
end

function tbMagic:MagicStep(dt, duration)
    self:SetProgress(duration / self.magic.Param1)
    if duration >= self.magic.Param1 then
        return 1
    end
    return 0
end

function tbMagic:MagicLeave(success)
    if success then
        if self.bind then
            self.bind.LuaHelper:TriggerStory("YTS_LXY")
        end
    end
end

function tbMagic:OnGetSaveData()
end

function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
end