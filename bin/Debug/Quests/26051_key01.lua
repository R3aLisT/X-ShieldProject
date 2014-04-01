
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 26051;


if EVENT == 168 then
	Ret = 1;
end


local ItemA;
local savenum = 416;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910050000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4400, NPC, 10, 168);
    else
    SelectMsg(UID, 4, savenum, 4401, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4402, NPC, 4174, 102, 4175, 103);
end


if EVENT == 102 then -- Doðru cevap
   --ChangePosition(UID)
   GiveItem(UID, 910051000, 1)	 
   SaveEvent(UID, 4222);
end

if EVENT == 103 then -- Yanlýþ cevap
    --ChangePosition(UID)
    RobItem(UID, 910050000, 1);
    SelectMsg(UID, 2, savenum, 4403, NPC, 10, 168);
end
