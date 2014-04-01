local NPC = 16084;

if EVENT == 500 then
   SelectMsg(UID, 2, -1, 4071, NPC, 4071, 501, 4072, 502);
end

local NATION = 0;

if EVENT == 501 then
   NATION = CheckNation(UID);
   if NATION == 1 then 
      ZoneChange(UID, 1, 354, 1610)
   else
      ZoneChange(UID, 2, 1670, 370)
   end
end

if EVENT == 502 then
    Ret = 1;
end

