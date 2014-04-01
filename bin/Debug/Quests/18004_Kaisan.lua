local UserClass;
local QuestNum;
local Ret = 0;
local NPC=18004;

if EVENT == 100 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 146, NPC, 10, 101);
      Ret = 1;
   elseif QuestNum > 0 and QuestNum < 100 then
      NpcMsg(UID, 147, NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 101 then
    SelectMsg(UID, 2, -1, 4060, NPC, 4062, 403);
end

local savenum = 406;

if EVENT == 403 then   
   Level = CheckLevel(UID)
   if Level > 9 then 
      Class = CheckClass(UID);
      if Class == 1 or Class == 2 or Class == 3 or Class == 4 then
         ITEM_COUNT = HowmuchItem(UID, 900000000);
         if ITEM_COUNT < 3000 then
            SelectMsg(UID, 2, savenum, 4065, NPC, 10, 101);
         else
            SelectMsg(UID, 2, savenum, 4064, NPC, 4062, 404, 4063, 101);
         end
      else
         SelectMsg(UID, 2, savenum, 4068, NPC, 10, 407);
      end
   else
      SelectMsg(UID, 2, savenum, 4069, NPC, 10);
   end
end

if EVENT == 404 then
   SaveEvent(UID, 4063);
   PromoteUserNovice(UID)
   GoldLose(UID, 3000)
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4066, NPC, 4064, 101);
   else
      SelectMsg(UID, 1, savenum, 4067, NPC, 4064, 101);
   end
end


local savenum = 407;

if EVENT == 407 then
   SaveEvent(UID, 4070);
   SelectMsg(UID, 2, savenum, 4070, NPC, 4070, 408);
end

if EVENT == 408 then
   SendStatSkillDistribute(UID)
end

local savenum = 453;


if EVENT == 500 then
   SelectMsg(UID, 3, savenum, 4704, NPC, 4238, 501, 4239, 502, 4240, 503);
end


if EVENT == 501 then
   SelectMsg(UID, 9, savenum, 4704, NPC, 4070, 408, 10, 101);
end

if EVENT == 502 then
   SelectMsg(UID, 9, savenum, 4704, NPC);
end

if EVENT == 503 then
   SelectMsg(UID, 9, savenum, 4704, NPC);
end
