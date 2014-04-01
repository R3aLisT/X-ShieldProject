local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24412;

if EVENT == 222  then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then
			 SelectMsg(UID, 2, -1, 695, NPC, 10, 193);
			 Ret = 1;
		elseif QuestNum > 1 and  QuestNum < 100 then
          NpcMsg(UID, 696, NPC)
      else
          EVENT = QuestNum
		end
end

local ITEM_COUNT1=0;


if EVENT == 224 then
   ITEM_COUNT1 = HowmuchItem(UID, 910087000);  
   if  ITEM_COUNT1 <= 0 then
      SelectMsg(UID, 2, 67, 697, NPC, 10, 193);
      else
      SelectMsg(UID, 2, 67, 705, NPC, 41, 226, 27, 193);
   end
end

local Check;

if EVENT == 226 then
   RobItem(UID, 910087000, 1)
   GoldGain(UID , 500000) 
   SaveEvent(UID, 461);
end


return Ret;