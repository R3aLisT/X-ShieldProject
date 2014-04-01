
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 17010;

if EVENT == 190 then
    SelectMsg(UID, 2, -1, 4708, NPC, 4238, 191, 4240, 168);        
end

if EVENT == 191 then
    RobItem(UID, 900000000, 6000)
    ZoneChange(UID, 21, 87, 13)
end

--if EVENT == 191 then
--    RobItem(UID, 900000000, 6000)
--    ZoneChange(UID, 39, 450, 300)
--end

if EVENT == 168 then
    Ret = 1;
end
