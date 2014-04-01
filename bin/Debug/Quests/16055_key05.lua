
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16055;


if EVENT == 168 then
	Ret = 1;
end

local ItemA;
local savenum = 420;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910054000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4316, NPC, 10, 168);
    else
    SelectMsg(UID, 4, savenum, 4317, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4318, NPC, 4182, 102, 4183, 103);
end


if EVENT == 102 then
   --ChangePosition(UID)
   RobItem(UID, 910054000, 1)
   GiveItem(UID, 910055000, 1)
   SaveEvent(UID, 4240);   
end

if EVENT == 103 then
    --ChangePosition(UID)
    RobItem(UID, 910054000, 1)
    SelectMsg(UID, 2, savenum, 4319, NPC, 10, 168);
end
