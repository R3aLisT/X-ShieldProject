
local NPC = 29056;
local NATION = 0;

if EVENT == 100 then
   SelectMsg(UID, 3, -1, 9427, NPC, 7679, 542, 7242, 547);
end


local ITEMDRGN = 0;

if EVENT == 542 then
   ITEMDRGN = HowmuchItem(UID, 810164000);
   if ITEMDRGN > 0 then
      SelectMsg(UID, 3, -1, 10592, NPC, 7680, 543, 7681, 544, 7682, 545, 7683, 546);
   else
      SelectMsg(UID, 2, -1, 10593, NPC, 27);
   end
end

if EVENT == 543 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810178835, 1)
   else
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810179839, 1)
   end
end

if EVENT == 544 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810178836, 1)
   else
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810179840, 1)
   end
end

if EVENT == 545 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810178837, 1)
   else
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810179841, 1)
   end
end

if EVENT == 546 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810178838, 1)
   else
      RobItem(UID, 810164000, 1)
      GiveItem(UID, 810179842, 1)
   end
end

local ITEMYENIA = 0;
local ITEMYENIH = 0;

if EVENT == 547 then
   SelectMsg(UID, 2, -1, 9938, NPC, 7244, 548, 7243, 549);
end

if EVENT == 548 then
   ITEMYENIA = HowmuchItem(UID, 508117000);
   if ITEMYENIA > 0 then
      SelectMsg(UID, 3, -1, 9941, NPC, 4288, 550, 4289, 551, 4290, 552, 4291, 553);
   else
      SelectMsg(UID, 2, -1, 9942, NPC, 27);
   end
end

if EVENT == 550 then
   RobItem(UID, 508117000, 1)
   GiveItem(UID, 518001636, 1)
end

if EVENT == 551 then
   RobItem(UID, 508117000, 1)
   GiveItem(UID, 518001637, 1)
end

if EVENT == 552 then
   RobItem(UID, 508117000, 1)
   GiveItem(UID, 518001638, 1)
end

if EVENT == 553 then
   RobItem(UID, 508117000, 1)
   GiveItem(UID, 518001639, 1)
end


if EVENT == 549 then
   ITEMYENIH = HowmuchItem(UID, 508116000);
   if ITEMYENIH > 0 then
      SelectMsg(UID, 3, -1, 9941, NPC, 4292, 554, 4293, 555, 4294, 556, 4295, 557);
   else
      SelectMsg(UID, 2, -1, 9940, NPC, 27);
   end
end

if EVENT == 554 then
   RobItem(UID, 508116000, 1)
   GiveItem(UID, 518003636, 1)
end

if EVENT == 555 then
   RobItem(UID, 508116000, 1)
   GiveItem(UID, 518003637, 1)
end

if EVENT == 556 then
   RobItem(UID, 508116000, 1)
   GiveItem(UID, 518003638, 1)
end

if EVENT == 557 then
   RobItem(UID, 508116000, 1)
   GiveItem(UID, 518003639, 1)
end