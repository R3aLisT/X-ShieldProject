local UserClass;
local QuestNum;
local Ret = 0;
local Level=0;
local NPC = 14413;

if EVENT == 190 then
   Level = CheckLevel(UID);
   if Level == 46 then
      EVENT = 200
   elseif Level > 46 then
      SelectMsg(UID, 2, -1, 4430, NPC, 10, 193);
   elseif Level < 46 then
      SelectMsg(UID, 2, -1, 664, NPC, 10, 193);
   end
end

if EVENT == 193 then
   Ret = 1;
end

if EVENT == 200 then
   SelectMsg(UID, 4, 109, 1247, NPC, 22, 202, 4172, 210);
end

if EVENT == 202 then
   ShowMap(UID, 14);
end

local ItemA = 0;

if EVENT == 210 then
   ItemA = HowmuchItem(UID, 379204000);
   if ItemA == 0 then
      SelectMsg(UID, 2, 109, 1248, NPC, 18, 212);
   else
      EVENT = 211
   end
end

if EVENT == 211 then
   RobItem(UID, 379204000, 1)
   GoldGain(UID, 10000)
end

if EVENT == 212 then
   ShowMap(UID, 14);
end

return Ret;
