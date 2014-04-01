local UserClass;
local QuestNum;
local Ret = 0;
local NPC =13016;


if EVENT == 500 then
   SelectMsg(UID, 3, -1, 4834, NPC, 4263, 101, 4264, 102, 4265, 103, 4337, 104, 4199, 3001);
end

if EVENT == 104 then
   SelectMsg(UID, 3, -1, 820, NPC, 4344, 105, 4345, 106, 4199, 3001);
end

if EVENT == 3001 then
   Ret = 1;
end

if EVENT == 101 then
   -- Familiar Transform
end

if EVENT == 102 then
   ITEMA = HowmuchItem(UID, 800090000);
   if ITEMA > 0 then
      -- Familiar Name Change Fonksiyonu yok
   else
      SelectMsg(UID, 2, -1, 4833, NPC, 27, 3001);
   end
end	      

if EVENT == 103 then
   SelectMsg(UID, 14, -1, NPC);
end    

if EVENT == 105 then
   MagicBag = HowmuchItem(UID, 800440000);
   if MagicBag > 0 then
      RobItem(UID, 800440000, 1)
      GiveItem(UID, 700011001, 1)
   else
      SelectMsg(UID, 2, -1, 823, NPC, 10, 3001)
   end
end

local ITEM = 0;

if EVENT == 106 then
   ITEM = HowmuchItem(UID, 800450000);
   if ITEM > 0 then
      RobItem(UID, 800450000, 1)	
      GiveItem(UID, 700012000, 1)
   else
      SelectMsg(UID, 2, -1, 824, NPC, 10, 3001)
   end
end
