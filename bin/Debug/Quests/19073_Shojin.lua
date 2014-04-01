local UserClass;
local QuestNum;
local Ret = 0;
local NPC =19073;

if EVENT == 100 then
   SelectMsg(UID, 20, -1, 845, NPC, 4520, 168, 4521, -1, 4526, -1, 4522, 104, 4523, 105);
end

if EVENT == 104 then
   SelectMsg(UID, 19, -1, 848, NPC, 4524, 106, 4525, 168);	
end

if EVENT == 105 then
   SelectMsg(UID, 21, -1, -1, NPC, -1, -1 );	
end

if EVENT == 106 then
   SelectMsg(UID, 18, -1, -1, NPC);	
end

if EVENT == 168 then
   Ret = 1;
end
