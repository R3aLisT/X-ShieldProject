local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 31511;

if EVENT == 100 then
	SelectMsg(UID, 3, -1, 1186, NPC, 2017, 150, 2018, 200, 2019, 160, 2020, 240, 27, 241);
end

local ITEMA = 0;

if EVENT == 150 then
   ITEMA = HowmuchItem(UID, 900000000);
   Check = isRoomForItem(UID, 389132000);
   if ITEMA < 1000000 then
      SelectMsg(UID, 2, -1, 851, NPC, 27);
   else if Check == -1 then
      SelectMsg(UID, 2, -1, 832, NPC, 27);
   else
      GoldLose(UID, 1000000)
      GiveItem(UID, 389132000, 1)
   end
   end
end

if EVENT == 160 then
   SelectMsg(UID, 2, -1, 847, NPC, 10);
end

local ITEMB = 0;

if EVENT == 200 then
   ITEMB = HowmuchItem(UID, 508122000);
   Check = isRoomForItem(UID, 389135000);
   if ITEMB < 1 then
      SelectMsg(UID, 2, -1, 820, NPC, 27);
   else if Check == -1 then
      SelectMsg(UID, 2, -1, 832, NPC, 27);
   else
      RobItem(UID, 508122000, 1)
      GiveItem(UID, 389135000, 1)
   end
   end
end

if EVENT == 240 then
   SelectMsg(UID, 2, -1, 848, NPC, 7253, 241, 7254, 242);
end

if EVENT == 241 then
   Ret = 1;
end

