
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 26056;


if EVENT == 168 then
	Ret = 1;
end

local ItemA;
local savenum = 421;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910055000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4420, NPC, 10, 168);
    else
    SelectMsg(UID, 4, savenum, 4421, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4422, NPC, 4184, 102, 4185, 103);
end


if EVENT == 103 then
   --ChangePosition(UID)
   RobItem(UID, 910055000, 1)
   GiveItem(UID, 910056000, 1)
   SaveEvent(UID, 4227);   
end

if EVENT == 102 then
    --ChangePosition(UID)
    RobItem(UID, 910055000, 1)
    SelectMsg(UID, 2, savenum, 4423, NPC, 10, 168);
end
