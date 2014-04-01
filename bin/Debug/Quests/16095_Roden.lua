
local UserClass;
local QuestNum;
local Ret = 0;
local NPC =16095;


if EVENT == 500 then
	SelectMsg(UID, 2, -1, 4431, NPC, 10, 502)
end

if EVENT == 168 then
    Ret = 1;
end

local savenum = 423;
local ITEMA = 0;

if EVENT == 502 then
   ITEMA = HowmuchItem(UID, 389190000);
   if ITEMA > 0 then
      EVENT = 505
   else
      SelectMsg(UID, 2, savenum, 4432, NPC, 4004, 503, 4005, 168);
   end
end

if EVENT == 503 then
   SaveEvent(UID, 4245);
   ITEM_COUNTA = HowmuchItem(UID, 389160000);
   ITEM_COUNTB = HowmuchItem(UID, 389161000);
   ITEM_COUNTC = HowmuchItem(UID, 389162000);
   ITEM_COUNTD = HowmuchItem(UID, 389163000);
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then
        RobItem(UID, 389160000, 1)
		RobItem(UID, 389161000, 1)
		RobItem(UID, 389162000, 1)
		RobItem(UID, 389163000, 1)
		GiveItem(UID, 389190000, 1)
    else
       if ITEM_COUNTA <= 0 then
       SelectMsg(UID, 2, savenum, 4433, NPC, 10, 168);
       elseif  ITEM_COUNTB <= 0 then 
       SelectMsg(UID, 2, savenum, 4434, NPC, 10, 168);
       elseif  ITEM_COUNTC <= 0 then 
       SelectMsg(UID, 2, savenum, 4435, NPC, 10, 168);
       else
       SelectMsg(UID, 2, savenum, 4436, NPC, 10, 168);
       end
   end
end

local savenum = 424;

if EVENT == 505 then
    SelectMsg(UID, 2, savenum, 4441, NPC, 4188, 506, 4005, 168);
end

if EVENT == 506 then
   SaveEvent(UID, 4246);
   ITEM_COUNTA = HowmuchItem(UID, 389190000);
   ITEM_COUNTB = HowmuchItem(UID, 389164000);
   ITEM_COUNTC = HowmuchItem(UID, 389165000);
   ITEM_COUNTD = HowmuchItem(UID, 389166000);
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then
        RobItem(UID, 389190000, 1)
		RobItem(UID, 389164000, 1)
		RobItem(UID, 389165000, 1)
		RobItem(UID, 389166000, 1)
        ZoneChangeParty(UID, 31, 940, 186)
    else
       if ITEM_COUNTA <= 0 then
       SelectMsg(UID, 2, savenum, 4437, NPC, 10, 168);
       elseif  ITEM_COUNTB <= 0 then
       SelectMsg(UID, 2, savenum, 4438, NPC, 10, 168);
       elseif  ITEM_COUNTC <= 0 then 
       SelectMsg(UID, 2, savenum, 4439, NPC, 10, 168);
       else
       SelectMsg(UID, 2, savenum, 4440, NPC, 10, 168);
       end
   end
end
