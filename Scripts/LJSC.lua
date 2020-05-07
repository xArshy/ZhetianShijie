local tbTable = GameMain:GetMod("MagicHelper")
 --Get the magical power module
local tbMagic = tbTable:GetMagic("BZM_LXCB")
 --Create a new supernatural class
 --

--[[ NOTE ]] --There are two fixed variables when the supernatural script runs
--self.bind executes supernatural npcObj
--self.magic The current magical data, that is, the data defined in xml

function tbMagic:Init()
end

--Is magical power available
function tbMagic:EnableCheck(npc)
    return true
end

--Target legal detection will first filter through Magic's SelectTarget, then filter through here
--IDs is a List <int> If the target is a non-object, the value inside is the location key, if the target is an object, the value is the object ID, otherwise nil
--IsThing whether the target type is an object
function tbMagic:TargetCheck(key, t)
    if t.IsFaBao then
        return true
    else
        return false
    end
end

--Start to perform magical powers
function tbMagic:MagicEnter(IDs, IsThing)
    self.targetId = IDs[0]
 --获取目标信息
end

--During the magical power, the return value is required
--Return value 0 continue 1 succeed and end -1 fail and end
function tbMagic:MagicStep(dt, duration)
    self:SetProgress(duration / self.magic.Param1)
    --Set the casting progress, mainly used for UI display. Parameter 1 is used as the casting time.
    if duration >= self.magic.Param1 then
        return 1
    end
    return 0
end

--The completion / failure of success is successful
function tbMagic:MagicLeave(success)
    if success then
        local target = ThingMgr:FindThingByID(self.targetId)
        if target then
            target.Fabao:AddGodCount(1)
        end
    end
end

--Archive If not empty, return Table (KV)
function tbMagic:OnGetSaveData()
end

--Reading tbData is the same as entering the archived data IDs and IsThing
function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
 --Get target information
end