local JD = GameMain:GetMod("IZDCA");--先注册一个新的MOD模块

function JD:Hension()
local Npc = me.npcObj
if  Npc.MaxLing <= 766000 then
local Practice = Npc.PropertyMgr.Practice
local Time = Npc.MaxLing/Practice:BaseAbsorbEffectGold()
local Value = Practice:GoldEffectSpeed(Npc.Key)
Practice:MakeGold(Time * Value)
Npc:AddLing(-Npc.MaxLing)
elseif Npc.MaxLing <= 7660000 then
local Practice = Npc.PropertyMgr.Practice
local Time = Npc.MaxLing/Practice:BaseAbsorbEffectGold()
local Value = Practice:GoldEffectSpeed(Npc.Key)
Practice:MakeGold(Time/5 * Value)
else
local Practice = Npc.PropertyMgr.Practice
local Time = Npc.MaxLing/Practice:BaseAbsorbEffectGold()
local Value = Practice:GoldEffectSpeed(Npc.Key)
Practice:MakeGold(Time/100 * Value)
Npc:AddLing(-Npc.MaxLing)
world:ShowStoryBox("Congratulations"..Npc.Name.."Improved to the next level。","Refinement",{"Got it"},
function(key)
if key == 0 then
Npc.LuaHelper:AddMsg(""..Npc.Name.."got")
end
end
)

end

end

