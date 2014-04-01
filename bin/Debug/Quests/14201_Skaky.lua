local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14201;

if EVENT == 190 then
   SelectMsg(UID, 3, -1, 3824, NPC, 3010, 224, 27, 193);
end

if EVENT == 193 then
   Ret = 1;
end

if EVENT == 224 then
   SelectMsg(UID, 3, 310, 3065, NPC, 4006, 226, 27, 193);
end

local ITEM = 0;

if EVENT == 226 then
   ITEM = HowmuchItem(UID, 900017000);
   if ITEM > 6 then
   Check = isRoomForItem(UID, 910041000);
      if Check == -1 then
      SelectMsg(UID, 2, -1, 832, NPC ,27);
      else
      RobItem(UID, 900017000, 7)
      GiveItem(UID, 379063000, 1)
      end
   else
      SelectMsg(UID, 2, 310, 3067, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;

if EVENT == 228 then
   ITEM_COUNT1 = HowmuchItem(UID, 379046000);
   ITEM_COUNT2 = HowmuchItem(UID, 389074000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 29 and ITEM_COUNT3  > 4999999  then
      SelectMsg(UID, 4, 310, 3071, NPC, 10, 230, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, 310, 3068, NPC, 10, 193);
      elseif ITEM_COUNT2 <=29 then
         SelectMsg(UID, 2, 310, 3068, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 310, 3068, NPC, 10, 193);
      end
   end
end

if EVENT == 229 then
   ShowMap(UID, 304);
end

local Check;

if EVENT == 230 then
   Check = CheckExchange(UID, 310)
   if Check ==1 then
      RunExchange(UID, 310);
      SaveEvent(UID, 3146);
   else
      Ret = 1;	
   end	 
end

if EVENT == 300 then
   SelectMsg(UID, 3, 311, 3001, NPC, 28, 301);
end

if EVENT == 301 then
   ShowMap(UID, 304);
   SaveEvent(UID, 3162);
end

if EVENT == 302 then
   SelectMsg(UID, 1, 311, 3002, NPC, 28, 301);
end

if EVENT == 303 then
   SelectMsg(UID, 2, 311, 3072, NPC, 3002, 304);
end

if EVENT == 304 then
   SelectMsg(UID, 4, 311, 3073, NPC, 22, 305, 23, 193);
end

if EVENT == 305 then
   SaveEvent(UID, 3163);
end

local NATION = 0;

if EVENT == 306 then
   SaveEvent(UID, 3165);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 311, 3077, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 311, 3078, NPC, 21, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;

if EVENT == 308 then
   ITEM_COUNT1 = HowmuchItem(UID, 910042000);
   ITEM_COUNT2 = HowmuchItem(UID, 389076000);
   ITEM_COUNT3 = HowmuchItem(UID, 379067000);
   if ITEM_COUNT1  > 29 and ITEM_COUNT2  > 29 and ITEM_COUNT3  > 0 then
      SelectMsg(UID, 4, 311, 3079, NPC, 10, 310, 27, 193);
   else
      if ITEM_COUNT1 <= 29 then
         SelectMsg(UID, 2, 311, 3076, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 29 then
         SelectMsg(UID, 2, 311, 3076, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 311, 3076, NPC, 10, 193);
      end
   end
end


if EVENT == 309 then
   ShowMap(UID, 304);
end

local Check;

if EVENT == 310 then
   Check = CheckExchange(UID, 400)
   if Check ==1 then
      RunExchange(UID, 311);
      SaveEvent(UID, 3166);
   else
      Ret = 1;	
   end	 
end

if EVENT == 400 then
   SelectMsg(UID, 1, 312, 3001, NPC, 28, 401);
end

if EVENT == 401 then
   ShowMap(UID, 304);
   SaveEvent(UID, 3182);
end

if EVENT == 402 then
   SelectMsg(UID, 1, 312, 3002, NPC, 28, 401);
end

if EVENT == 403 then
   SelectMsg(UID, 2, 312, 3080, NPC, 3000, 404);
end

if EVENT == 404 then
   SelectMsg(UID, 4, 312, 3081, NPC, 22, 405, 23, 193);
end

if EVENT == 405 then
   SaveEvent(UID, 3183);
end

local NATION = 0;

if EVENT == 406 then
   SaveEvent(UID, 3185);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 312, 3085, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 312, 3086, NPC, 21, 193);
   end
end

if EVENT == 407 then
   SaveEvent(UID, 3185);
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;

if EVENT == 408 then
   ITEM_COUNT1 = HowmuchItem(UID, 379204000);
   ITEM_COUNT2 = HowmuchItem(UID, 379041000);
   ITEM_COUNT3 = HowmuchItem(UID, 379099000);
   if ITEM_COUNT1  > 49 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 19 then
      SelectMsg(UID, 4, 312, 3087, NPC, 10, 410, 27, 193);
   else
      if ITEM_COUNT1 <= 49 then
         SelectMsg(UID, 2, 312, 3084, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, 312, 3084, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 312, 3084, NPC, 10, 193);
      end
   end
end

if EVENT == 409 then
   ShowMap(UID, 304);
end

local Check;

if EVENT == 410 then
   Check = CheckExchange(UID, 400)
   if Check ==1 then
      RunExchange(UID, 312);
      SaveEvent(UID, 3186);
   else
      Ret = 1;	
  end	 
end

local savenum = 408;

if EVENT == 530 then
   Class = CheckClass (UID);
   if Class == 5 then
      SaveEvent(UID, 4087);
      NATION = CheckNation(UID);
      if NATION == 1 then
         SelectMsg(UID, 1, savenum, 4080, NPC, 4080, 538);
      else
         SelectMsg(UID, 1, savenum, 4081, NPC, 4080, 538);
      end
   else
      Ret = 1;
   end
end

if EVENT == 532 then   
Level = CheckLevel(UID)
   if Level > 59 then
      Class = CheckClass (UID);
      if Class == 5 or Class == 7 or Class == 9 or Class == 11 then
         SelectMsg(UID, 4, savenum, 4084, NPC, 22, 533, 23, 534);
      else
         SaveEvent(UID, 4089);
         SelectMsg(UID, 2, savenum, 4083, NPC, 10, 193);
      end
   else 
      SelectMsg(UID, 2, savenum, 4082, NPC, 10, 193);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4088);
end

if EVENT == 534 then
   SaveEvent(UID, 4091); 
end

local NATION = 0;

if EVENT == 535 then
   SaveEvent(UID, 4090);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4089, NPC, 4080, 193);
   else
      SelectMsg(UID, 1, savenum, 4090, NPC, 4080, 193);
   end
end

if EVENT == 536 then
   ITEM_COUNTA = HowmuchItem(UID, 320410011);
   ITEM_COUNTB = HowmuchItem(UID, 320410012);
   ITEM_COUNTC = HowmuchItem(UID, 320410013);
   ITEM_COUNTD = HowmuchItem(UID, 379236000);
   if ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then
      SelectMsg(UID, 2, savenum, 4091, NPC, 4062, 537, 4063, 193);
   else
      if ITEM_COUNTA <= 0 then
         SelectMsg(UID, 2, savenum, 4085, NPC, 10, 193);
      elseif  ITEM_COUNTB <= 0 then
         SelectMsg(UID, 2, savenum, 4086, NPC, 10, 193);
      elseif  ITEM_COUNTC <= 0 then
         SelectMsg(UID, 2, savenum, 4087, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 4088, NPC, 10, 193);
      end
   end
end

if EVENT == 537 then
   SaveEvent(UID, 4089);
   RobItem(UID, 320410011, 1);
   RobItem(UID, 320410012, 1);
   RobItem(UID, 320410013, 1);
   RobItem(UID, 379236000, 1);
   PromoteUser(UID)
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4092, NPC, 4064, 193);
   else
      SelectMsg(UID, 1, savenum, 4093, NPC, 4064, 193);
   end
end

if EVENT == 538 then
   ShowMap(UID, 304);
end

if EVENT == 620 then
   SelectMsg(UID, 1, 51, 3215, NPC, 3006, 621);
end

if EVENT == 621 then
   ShowMap(UID, 304);
   SaveEvent(UID, 3402);
end

if EVENT == 622 then
   SelectMsg(UID, 1, 51, 3214, NPC, 3006, 621);
end

-- 70Lv skill no.51 type 0 or 4

if EVENT == 623 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, 51, 3216, NPC, 10, 624);
   else
      SelectMsg(UID, 2, 51, 4710, NPC, 10, 193);
   end
end

if EVENT == 624 then
   SelectMsg(UID, 4, 51, 3217, NPC, 22, 625, 23, 631);
end

if EVENT == 625 then
   SaveEvent(UID, 3403);
   SelectMsg(UID, 2, 51, 3218, NPC, 10, 193);
end

if EVENT == 631 then
   SelectMsg(UID, 2, 51, 3219, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 626 then
   SaveEvent(UID, 3405);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 51, 3221, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 51, 3222, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 628 then
   ITEM_COUNT1 = HowmuchItem(UID, 379243000);
   ITEM_COUNT2 = HowmuchItem(UID, 379244000);
   ITEM_COUNT3 = HowmuchItem(UID, 379063000);
   ITEM_COUNT4 = HowmuchItem(UID, 389076000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 0  and ITEM_COUNT4  > 29  then
      SelectMsg(UID, 4, 51, 3223, NPC, 41, 630, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, 51, 3220, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, 51, 3220, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, 51, 3220, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 51, 3220, NPC, 10, 193);
      end
   end
end

if EVENT == 629 then
   ShowMap(UID, 304);
end

local Check;

if EVENT == 630 then
   Check = CheckExchange(UID, 329)
   if Check == 1 then
      Exchange =RunExchange(UID, 329);
      if Exchange == 0 then
         SaveEvent(UID, 3404);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 70Lv skill - end
-----------------------------
-- 75Lv skill - start

local savenum = 510;


if EVENT == 720 then
   SelectMsg(UID, 1, savenum, 5100, NPC, 3006, 721);
end

if EVENT == 721 then
   ShowMap(UID, 304);
   SaveEvent(UID, 5101);
end

if EVENT == 722 then
   SelectMsg(UID, 1, savenum, 5101, NPC, 3006, 721);
end

-- 70Lv skill no.51 type 0 or 4

if EVENT == 723 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, savenum, 5103, NPC, 10, 724);
   else
      SelectMsg(UID, 2, savenum, 5102, NPC, 10, 193);
   end
end

if EVENT == 724 then
   SelectMsg(UID, 4, savenum, 5104, NPC, 22, 725, 23, 731);
end

if EVENT == 725 then
   SaveEvent(UID, 5102);
   SelectMsg(UID, 2, savenum, 5105, NPC, 10, 193);
end

if EVENT == 731 then
   SelectMsg(UID, 2, savenum, 5106, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 726 then
   SaveEvent(UID, 5104);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5108, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5109, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 728 then
   ITEM_COUNT1 = HowmuchItem(UID, 379244000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5110, NPC, 41, 730, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 730 then
   Check = CheckExchange(UID, 520)
   if Check == 1 then
      Exchange =RunExchange(UID, 520);
      if Exchange ==0 then
         SaveEvent(UID, 5103);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 75Lv skill - end
---------------------
-- 80Lv skill - start
local savenum = 511;

if EVENT == 820 then
   SelectMsg(UID, 1, savenum, 5111, NPC, 3006, 821);
end

if EVENT == 821 then
   ShowMap(UID, 304);
   SaveEvent(UID, 5113);
end

if EVENT == 822 then
   SelectMsg(UID, 1, savenum, 5112, NPC, 3006, 821);
end

-- 70Lv skill no.51 type 0 or 4

if EVENT == 823 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, savenum, 5114, NPC, 10, 824);
   else
      SelectMsg(UID, 2, savenum, 5113, NPC, 10, 193);
   end
end

if EVENT == 824 then
   SelectMsg(UID, 4, savenum, 5115, NPC, 22, 825, 23, 831);
end

if EVENT == 825 then
   SaveEvent(UID, 5114);
   SelectMsg(UID, 2, savenum, 5116, NPC, 10, 193);
end

if EVENT == 831 then
   SelectMsg(UID, 2, savenum, 5117, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 826 then
   SaveEvent(UID, 5116);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5119, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5120, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 828 then
   ITEM_COUNT1 = HowmuchItem(UID, 379243000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5121, NPC, 41, 830, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 830 then
   Check = CheckExchange(UID, 521)
   if Check == 1 then
      Exchange =RunExchange(UID, 521);
      if Exchange ==0 then
         SaveEvent(UID, 5115);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 80Lv skill - end

return Ret;
