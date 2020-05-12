local tbTable = GameMain:GetMod("MagicHelper")
 
local tbMagic = tbTable:GetMagic("BZM_LXCB")
 
 





function tbMagic:Init()
end


function tbMagic:EnableCheck(npc)
    return true
end




function tbMagic:TargetCheck(key, t)
    if t.IsFaBao then
        return true
    else
        return false
    end
end


function tbMagic:MagicEnter(IDs, IsThing)
    self.targetId = IDs[0]
 
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
        local target = ThingMgr:FindThingByID(self.targetId)
        if target then
            target.Fabao:AddGodCount(1)
        end
    end
end


function tbMagic:OnGetSaveData()
end


function tbMagic:OnLoadData(tbData, IDs, IsThing)
    self.targetId = IDs[0]
 
end