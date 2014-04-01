
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16057;


if EVENT == 168 then
	Ret = 1;
end

local ItemA;
local savenum = 422;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910056000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4324, NPC, 10, 168);
    else
    SelectMsg(UID, 4, savenum, 4325, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4326, NPC, 4186, 102, 4187, 103);
end


if EVENT == 103 then
   --ChangePosition(UID)
   RobItem(UID, 910056000, 1)
   GiveItem(UID, 910057000, 1)
   SaveEvent(UID, 4242);   
end

if EVENT == 102 then
    --ChangePosition(UID)
    RobItem(UID, 910056000, 1)
    SelectMsg(UID, 2, savenum, 4327, NPC, 10, 168);
end
