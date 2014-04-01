
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24426;

if EVENT == 190 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 4597, NPC, 10, 193);
      Ret = 1; 
   elseif QuestNum > 1 and  QuestNum < 100 then
      NpcMsg(UID, 4598, NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 193 then
    Ret = 1;
end

local savenum = 439;

if EVENT == 530 then
    SaveEvent(UID, 4320);
    SelectMsg(UID, 1, savenum, 4599, NPC, 4080, 193);
end

local MonsterSub = 0;

if EVENT == 532 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, savenum, 4600, NPC, 22, 533, 23, 534);
   else
      SelectMsg(UID, 2, savenum, 4601, NPC, 10, 193);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4321);
end


if EVENT == 534 then
   SaveEvent(UID, 4324);
end

if EVENT == 535 then
   SaveEvent(UID, 4323);
end

if EVENT == 180 then
    SaveEvent(UID, 4323);
    SelectMsg(UID, 1, savenum, 4602, NPC, 14, 193);
end

local MonsterCount = 0;

if EVENT == 536 then
   MonsterCount  = CountMonsterQuestSub(UID,439, 1);
   if MonsterCount < 100 then
      SelectMsg(UID, 2, savenum, 4603, NPC, 10, 193);
   else
      SelectMsg(UID, 2, savenum, 4604, NPC, 4172, 537, 4173, 193);
   end
end


local Check;

if EVENT == 537 then
   Check = CheckExchange(UID, 491)
   if Check ==1 then
   RunExchange(UID, 491);
   SaveEvent(UID, 4322);
   SaveEvent(UID, 4329);
   else
  Ret = 1;	
  end	 
end

local savenum = 906;
if EVENT == 9402 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, savenum, 8692, NPC, 22, 9403, 23, 534);
   else
      SelectMsg(UID, 2, savenum, 8693, NPC, 10, 193);
   end
end

if EVENT == 9403 then
   SaveEvent(UID, 9436);
end

if EVENT == 9404 then
   SaveEvent(UID, 9439);
end

if EVENT == 9405 then
   SaveEvent(UID, 9438);
end

local MonsterCount1 = 0;
local MonsterCount2 = 0;
local MonsterCount3 = 0;

if EVENT == 9407 then
   MonsterCount1  = CountMonsterQuestSub(UID,906, 1);
   MonsterCount2  = CountMonsterQuestSub(UID,906, 2);
   MonsterCount3  = CountMonsterQuestSub(UID,906, 3);
   if  MonsterCount1 < 1 and MonsterCount2 < 1 and MonsterCount3 < 1  then
      SelectMsg(UID, 2, savenum, 4605, NPC, 10, 193);
   else
      SelectMsg(UID, 4, savenum, 4606, NPC, 4172, 9408, 4173, 193);
   end
end


local Check;

if EVENT == 9408 then
   Check = CheckExchange(UID, 906)
   if Check == 1 then
   RunExchange(UID, 906);
   SaveEvent(UID, 9437);
   SaveEvent(UID, 9443);
   else
  Ret = 1;	
  end	 
end

return Ret;
