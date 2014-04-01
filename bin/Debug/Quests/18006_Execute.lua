
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 18006;

if EVENT == 190 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 191, NPC, 10, 193);
      Ret = 1;
   elseif QuestNum > 1 and  QuestNum < 100 then
      NpcMsg(UID, 192, NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 193 then
    Ret = 1;
end

if EVENT == 200 then
   SelectMsg(UID, 2, 605, 6024, 18006, 6000, 201, 6001, 204);
end

if EVENT == 201 then
   SelectMsg(UID, 2, 605, 6025, 18006, 6000, 202);
end

if EVENT == 202 then
   SelectMsg(UID, 2, 605, 6026, 18006, 6000, 203);
end

if EVENT == 203 then
   SelectMsg(UID, 2, 605, 6027, 18006, 27, 193);
end

if EVENT == 204 then
   ZoneChange(UID, 21, 100, 100);
end


