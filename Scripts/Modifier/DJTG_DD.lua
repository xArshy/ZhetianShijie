local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("DJTG_DD")

local RADIUS = 10 



function tbModifier:Enter(modifier, npc)
    
    self.targetIDs = self.targetIDs or {}
    self.targetIDs[npc.ID] = self.targetIDs[npc.ID] or {}
    self.indices = self.indices or {}
    self.indices[npc.ID] = self.indices[npc.ID] or 1
    GridMgr:DoAroundKeyLua(
        npc.Key,
        RADIUS,
        function(i, grid)
            local npcs = Map.Things:GetNpcByKey(grid)
            if npcs then
                for _, n in pairs(npcs) do
                    if n.Camp == g_emFightCamp.Enemy and n.ID ~= npc.ID then
                        print(n.ID)
                        table.insert(self.targetIDs[npc.ID], n.ID)
                    end
                end
            end
            return true
        end
    )
end


function tbModifier:Step(modifier, npc, dt)
    if #self.targetIDs[npc.ID] ~= 0 then
        npc:SetCamp(g_emFightCamp.Friend)
        if self.indices[npc.ID] <= #self.targetIDs[npc.ID] then
            local cur_npc = ThingMgr:FindThingByID(self.targetIDs[npc.ID][self.indices[npc.ID]])
            if cur_npc and cur_npc.FightBody.TargetID == npc.ID then 
                self.indices[npc.ID] = self.indices[npc.ID] + 1
            elseif cur_npc then 
                npc:FightWith(cur_npc)
                cur_npc:FightWith(npc)
            end
        end
    else 
        npc.FightBody:FightEnd()
    end
end


function tbModifier:UpdateStack(modifier, npc, add)
end


function tbModifier:Leave(modifier, npc)
    
    for _, id in pairs(self.targetIDs) do
        local n = ThingMgr:FindThingByID(id)
        if n then
            n.FightBody:FightEnd()
        end
    end
    npc.FightBody:FightEnd()
    if npc.Camp == g_emFightCamp.Friend then
        npc:SetCamp(g_emFightCamp.Enemy)
    end
end


function tbModifier:OnGetSaveData()
    return {
        targetIDs = self.targetIDs,
        indices = self.indices
    }
end


function tbModifier:OnLoadData(modifier, npc, tbData)
    tbData = tbData or {}
    self.targetIDs = tbData.targetIDs or {}
    self.indices = self.indices or {}
end