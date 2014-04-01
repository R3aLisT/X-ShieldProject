local Ret = 0;
local NPC = 15006;

if EVENT == 165 then
   SelectMsg(UID, 2, -1, 4132, NPC,4073, 169, 4074, 168);
end

if EVENT == 169 then
   ZoneChange(UID, 75, 54, 1963)
end

if EVENT == 168 then
   Ret = 1;
end