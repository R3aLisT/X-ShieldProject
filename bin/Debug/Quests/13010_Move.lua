
local NPC = 13010;
local NATION = 0;

if EVENT == 500 then
   SelectMsg(UID, 2, -1, 4072, NPC, 4071, 501, 4072, 502);
end

if EVENT == 501 then
   NATION = CheckNation(UID);
   if NATION == 2 then
      ZoneChange(UID, 21, 741, 428)
   else
      ZoneChange(UID, 21, 742, 424)
   end
end

if EVENT == 502 then
   Ret = 1;
end

