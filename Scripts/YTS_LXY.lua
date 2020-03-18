--演示神通
local tbTable = GameMain:GetMod("MagicHelper");--Get the magical power module Don't move here
local tbMagic = tbTable:GetMagic("YTS_LXY");--Create a new magical class

--note-
--When the magical script runs, there are two fixed variables
--self.bind npcObj performing magic
--self.magic The current magic data, that is, the data defined in the xml

function tbMagic:Init()
end

--神通是否可用
function tbMagic:EnableCheck(npc)
	return true;
end


--Target legal detection First it will be filtered by magic SelectTarget，Then filter through here
--IDs is a List<int> If the target is non-object，The value is the location key，If the target is an object，Value is the object ID，Otherwise nil
--IsThing Whether the target type is an object
function tbMagic:TargetCheck(key, t)	
	 return true;
end


--Start to perform magical powers
function tbMagic:MagicEnter(IDs, IsThing)

end

--During the magical process, the return value is required
--Return value 0 Continue 1 Success and end -1 Failure and end
function tbMagic:MagicStep(dt, duration)	
	self:SetProgress(duration/self.magic.Param1);--Set the casting progress. It is mainly used for UI display. Parameter 1 is used as the casting time.
	if duration >=self.magic.Param1  then
		return 1;	
	end
	return 0;
end

--Show completion / failure
function tbMagic:MagicLeave(success)
	if success == true then		
		if self.bind ~= nil then
			self.bind.LuaHelper:TriggerStory("YTS_LXY");
		end
	end
end



--Archive If there is no return, return Table (KV)
function tbMagic:OnGetSaveData()
	
end

--Read the file tbData is the archive data IDs and IsThing enter together
function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.targetId = IDs[0];--Get target information
end
