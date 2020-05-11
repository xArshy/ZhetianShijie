local tbTable = GameMain:GetMod("MagicHelper")
local tbMagic = tbTable:GetMagic("TTMG_11_3")

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
        local v1 = target:GetProperty("NpcFight_SpellPowerAddP")
        local v2 = self.bind:GetProperty("NpcFight_SpellPowerAddP")
        if target then
            if v2 <= 100000000 then
                self.bind.PropertyMgr:ModifierProperty("NpcFight_SpellPowerAddP", v1 * 0.5)
                target.PropertyMgr:ModifierProperty("NpcFight_SpellPowerAddP", -v1)
            else
                self.bind:AddMsg("[NAME] has reached the limit, cannot absorb.")
            end
        end
    end
end