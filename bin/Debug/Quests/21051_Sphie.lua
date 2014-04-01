local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 21051;

if EVENT == 215 then
   ITEM_COUNT1 = HowmuchItem(UID, 910044000); 
   if  ITEM_COUNT1 < 1 then
   SelectMsg(UID, 2, 137, 677, NPC, 10, 193);
   else
   SelectMsg(UID, 2, 137, 678, NPC, 22, 218, 23, 193);
   end
end

if EVENT == 193 then
Ret = 1;
end

if EVENT == 218 then
   Check = isRoomForItem(UID, 910041000);
   if Check == -1 then
   SelectMsg(UID, 2, -1, 832, NPC ,27);
   else
   RobItem(UID, 910044000, 1)
   GiveItem(UID, 910041000, 1)   
   SaveEvent(UID, 446);
   SelectMsg(UID, 2, 137, 676, NPC, 10, 217);
   end
end