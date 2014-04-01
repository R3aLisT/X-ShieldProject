local NPC = 16094;

if EVENT == 500 then
   SelectMsg(UID, 2, -1, 4071, NPC, 4071, 501, 4072, 502);
end

local NATION = 0;

if EVENT == 501 then
   Level = CheckLevel(UID)
   if Level < 30 then
      NATION = CheckNation(UID);
      if NATION == 1 then
         ZoneChange(UID, 1, 441, 1625)
      else
         ZoneChange(UID, 2, 1595, 412)
      end
   else
      NATION = CheckNation(UID);
      if NATION == 1 then
         ZoneChange(UID, 71, 1380, 1090)
      else
         ZoneChange(UID, 71, 630, 920)
      end
   end
end

if EVENT == 502 then
   Ret = 1;
end


