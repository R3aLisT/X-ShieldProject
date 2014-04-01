

local NPC = 24411;

if EVENT == 217  then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then
			 SelectMsg(UID, 2, -1, 701, NPC, 10, 193);
		elseif QuestNum > 1 and  QuestNum < 100 then
          NpcMsg(UID, 690, NPC)
      else 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
   Ret = 1;
end

local ITEM_COUNT1=0;
local RUN_EXCHANGE ;

if EVENT == 218 then
   ITEM_COUNT1 = HowmuchItem(UID, 910086000);
   if  ITEM_COUNT1 < 1 then
      SelectMsg(UID, 2, 66, 691, NPC, 10, 193);
      else
      SelectMsg(UID, 2, 66, 692, NPC, 58, 221);
    end
end

if EVENT == 221 then
   RobItem(UID, 910086000, 1)
   ExpChange(UID, 5000)
   SaveEvent(UID, 457); 
   SaveEvent(UID, 20);
   GiveItem(UID, 910087000, 1)
   SelectMsg(UID, 2, 66, 693, NPC, 56, 193);
end

return Ret;