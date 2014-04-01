
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 26052;


if EVENT == 168 then
	Ret = 1;
end

local ItemA;
local savenum = 417;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910051000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4404, NPC, 10, 168);
    else 
    SelectMsg(UID, 4, savenum, 4405, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4406, NPC, 4176, 102, 4177, 103);
end


if EVENT == 102 then
   --ChangePosition(UID)
   RobItem(UID, 910051000, 1)
   GiveItem(UID, 910052000, 1)
   SaveEvent(UID, 4223);   
end

if EVENT == 103 then
    --ChangePosition(UID)
    RobItem(UID, 910051000, 1)
    SelectMsg(UID, 2, savenum, 4407, NPC, 10, 168);
end
