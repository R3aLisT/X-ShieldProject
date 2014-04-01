local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14202;

if EVENT == 190 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 3825, NPC, 10, 193);
      Ret = 1;
   elseif QuestNum > 1 and  QuestNum < 100 then
      NpcMsg(UID, 3825,NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 193 then
   Ret = 1;
end

if EVENT == 220 then
   SelectMsg(UID, 1, 313, 3114, NPC, 3013, 231);
end

if EVENT == 231 then
   SelectMsg(UID, 1, 313, 3115, NPC, 3003, 221);
end

if EVENT == 221 then
   ShowMap(UID, 306);
   SaveEvent(UID, 3202);
end

if EVENT == 222 then
   SelectMsg(UID, 1, 313, 3112, NPC, 3013, 232);
end

if EVENT == 232 then
   SelectMsg(UID, 1, 313, 3113, NPC, 3003, 233);
end

if EVENT == 233 then
   ShowMap(UID, 307);
   SaveEvent(UID, 3202);
end

-- Magic Shield Scroll of Rogues

if EVENT == 223 then
   SelectMsg(UID, 2, 313, 3088, NPC, 3000, 224);
end

if EVENT == 224 then
   SelectMsg(UID, 4, 313, 3089, NPC, 22, 225, 23, 193);
end

if EVENT == 225 then
   SaveEvent(UID, 3203);
end

local NATION = 0;

if EVENT == 226 then
   SaveEvent(UID, 3205);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 313, 3093, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 313, 3094, NPC, 32, 193);
   end
end

local ITEM_COUNTA=0;

if EVENT == 228 then
   ITEM_COUNTA = HowmuchItem(UID, 900017000);
   if ITEM_COUNTA  > 6 then
      SelectMsg(UID, 4, 313, 3095, NPC, 10, 230, 27, 193);
   else
      SelectMsg(UID, 4, 313, 3098, NPC, 27, 193);
   end
end

if EVENT == 229 then
   ShowMap(UID, 7);
end

if EVENT == 230 then
   Check = isRoomForItem(UID, 910041000);
   if Check == -1 then
   SelectMsg(UID, 2, -1, 832, NPC ,27);
   else
   RobItem(UID, 900017000, 7)
   GiveItem(UID, 379064000, 1)
   SaveEvent(UID, 3222);
   end
end

if EVENT == 300 then
   SelectMsg(UID, 1, 314, 3001, NPC, 28, 301);
end

if EVENT == 301 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3222);
end

if EVENT == 302 then
   SelectMsg(UID, 1, 314, 3002, NPC, 28, 301);
end

if EVENT == 303 then
   SelectMsg(UID, 2, 314, 3096, NPC, 3011, 304);
end

if EVENT == 304 then
   SelectMsg(UID, 4, 314, 3097, NPC, 22, 305, 23, 193);
end

if EVENT == 305 then
   SaveEvent(UID, 3223);
end

local NATION = 0;

if EVENT == 306 then
   SaveEvent(UID, 3225);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 314, 3101, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 314, 3102, NPC, 21, 193);
   end
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local RUN_EXCHANGE ;

if EVENT == 308 then
   ITEM_COUNTA = HowmuchItem(UID, 379113000);
   ITEM_COUNTB = HowmuchItem(UID, 379201000);
   ITEM_COUNTC = HowmuchItem(UID, 379014000);
   if ITEM_COUNTA  > 4 and  ITEM_COUNTB  > 49 and  ITEM_COUNTC  > 29 then
      SelectMsg(UID, 4, 314, 3103, NPC, 10, 310, 27, 193);
   else
      if ITEM_COUNTA <= 4 then
         SelectMsg(UID, 2, 314, 3100, NPC, 10, 193);
      elseif ITEM_COUNTB <= 49 then
         SelectMsg(UID, 2, 314, 3100, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 314, 3100, NPC, 10, 193);
      end
   end
end

if EVENT == 309 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 310 then
   Check = CheckExchange(UID, 400)
   if Check ==1 then
      RunExchange(UID, 314);
      SaveEvent(UID, 3226);
   else
      Ret = 1;	
   end	 
end

if EVENT == 400 then
   SelectMsg(UID, 1, 315, 3001, NPC, 28, 401);
end

if EVENT == 401 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3242);
end

if EVENT == 402 then
   SelectMsg(UID, 1, 315, 3002, NPC, 28, 401);
end

if EVENT == 403 then
   SelectMsg(UID, 2, 315, 3104, NPC, 10, 404);
end

if EVENT == 404 then
   SelectMsg(UID, 4, 315, 3105, NPC, 22, 405, 23, 193);
end

if EVENT == 405 then
   SaveEvent(UID, 3243);
end

local NATION = 0;

if EVENT == 406 then
   SaveEvent(UID, 3245);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 315, 3109, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 315, 3110, NPC, 21, 193);
   end
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local RUN_EXCHANGE ;

if EVENT == 408 then
   ITEM_COUNTA = HowmuchItem(UID, 379045000);
   ITEM_COUNTB = HowmuchItem(UID, 379042000);
   ITEM_COUNTC = HowmuchItem(UID, 379067000);
   if ITEM_COUNTA  > 19 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 then
      SelectMsg(UID, 4, 315, 3111, NPC, 10, 410, 27, 193);
   else
      if ITEM_COUNTA <= 19 then
         SelectMsg(UID, 2, 315, 3108, NPC, 10, 193);
      elseif  ITEM_COUNTB <= 0 then
         SelectMsg(UID, 2, 315, 3108, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 315, 3108, NPC, 10, 193);
      end
   end
end

if EVENT == 409 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 410 then
   Check = CheckExchange(UID, 315)
   if Check ==1 then
      RunExchange(UID, 315);
      SaveEvent(UID, 3246);
   else
      Ret = 1;	
   end	 
end

if EVENT == 500 then
   SelectMsg(UID, 1, 316, 3112, NPC, 28, 1000);
end

if EVENT == 1000 then
   SelectMsg(UID, 1, 316, 3113, NPC, 28, 501);
end

if EVENT == 501 then
   ShowMap(UID, 306);
   SaveEvent(UID, 3262);
end

if EVENT == 502 then
   SelectMsg(UID, 1, 316, 3114, NPC, 28, 1001);
end

if EVENT == 1001 then
   SelectMsg(UID, 1, 316, 3115, NPC, 28, 501);
end

-- Holy Water of Poison

if EVENT == 503 then
   SelectMsg(UID, 2, 316, 3116, NPC, 10, 504);
end

if EVENT == 504 then
   SelectMsg(UID, 2, 316, 3117, NPC, 22, 505, 23, 193);
end

if EVENT == 505 then
   SaveEvent(UID, 3263);
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local ITEM_COUNTD=0;

if EVENT == 508 then
   ITEM_COUNTA = HowmuchItem(UID, 379040000);
   ITEM_COUNTB = HowmuchItem(UID, 379041000);
   ITEM_COUNTC = HowmuchItem(UID, 379042000);
   ITEM_COUNTD = HowmuchItem(UID, 379014000);
   if ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 9 then
      SelectMsg(UID, 3, 316, 3123, NPC, 10, 510, 27, 193);
   else
      if ITEM_COUNTA <= 0 then
         SelectMsg(UID, 2, 316, 3120, NPC, 10, 193);
      elseif  ITEM_COUNTB <= 0 then
         SelectMsg(UID, 2, 316, 3120, NPC, 10, 193);
      elseif  ITEM_COUNTB <= 0 then
         SelectMsg(UID, 2, 316, 3120, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 316, 3120, NPC, 10, 193);
      end
   end
end

if EVENT == 509 then
   ShowMap(UID, 7);
end

if EVENT == 510 then
   Check = isRoomForItem(UID, 910041000);
   if Check == -1 then
   SelectMsg(UID, 2, -1, 832, NPC ,27);
   else
   RobItem(UID, 379040000, 1) 
   RobItem(UID, 379041000, 1) 
   RobItem(UID, 379042000, 1) 
   RobItem(UID, 379014000, 10)
   GiveItem(UID, 379241000, 1)
   SaveEvent(UID, 3261);
   end
end

if EVENT == 600 then
   SelectMsg(UID, 1, 317, 3001, NPC, 28, 601);
end

if EVENT == 601 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3282);
end

if EVENT == 602 then 
   SelectMsg(UID, 1, 317, 3002, NPC, 28, 601);
end


if EVENT == 603 then -- Asga Fruit
   SelectMsg(UID, 2, 317, 3124, NPC, 10, 604);
end

if EVENT == 604 then
   SelectMsg(UID, 4, 317, 3125, NPC, 22, 605, 23, 193);
end

if EVENT == 605 then
   SaveEvent(UID, 3283);
end

local ItemA = 0 ;
local NATION = 0;

if EVENT == 608 then
   ItemA = HowmuchItem(UID, 910082000);
   if ItemA == 0 then
      SelectMsg(UID, 2, 317, 3128, NPC, 18, 609);
   else
      SelectMsg(UID, 4, 317, 3130, NPC, 10, 610, 27, 193);
   end
end

if EVENT == 609 then
   ShowMap(UID, 314);
end

local Check;

if EVENT == 610 then
   RobItem(UID, 910082000, 1)
   GoldGain(UID, 100000)
   SaveEvent(UID, 3281);
end

if EVENT == 700 then
   SelectMsg(UID, 1, 318, 3001, NPC, 28, 701);
end

if EVENT == 701 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3292);
end

if EVENT == 702 then
   SelectMsg(UID, 1, 318, 3002, NPC, 28, 701);
end

if EVENT == 703 then
   SelectMsg(UID, 2, 318, 3131, NPC, 10, 704);
end

if EVENT == 704 then
   SelectMsg(UID, 4, 318, 3132, NPC, 22, 705, 23, 193);
end

if EVENT == 705 then
   SaveEvent(UID, 3293);
end

local NATION = 0;

if EVENT == 706 then
   SaveEvent(UID, 3295);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 318, 3136, NPC, 3015, 193);
   else
      SelectMsg(UID, 1, 318, 3006, NPC, 3015, 193);
   end
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 708 then
   ITEM_COUNT = GetMaxExchange(UID, 318);
   if ITEM_COUNT == 0 then
      SelectMsg(UID, 2, 318, 3135, NPC, 10, 193);
   else
      SelectMsg(UID, 4, 318, 3137, NPC, 10, 710, 27, 193);
   end
end

if EVENT == 709 then
   ShowMap(UID, 314);
end

local Check;

if EVENT == 710 then
   Check = CheckExchange(UID, 400)
   if Check ==1 then
      min_count = GetMaxExchange(UID, 318);
      RunCountExchange(UID, 318, min_count);	
      SaveEvent(UID, 3296);
   else
      Ret = 1;	
   end	 
end

local savenum = 408;

if EVENT == 530 then
   Class = CheckClass (UID);
   if Class == 7 then
      SaveEvent(UID, 4099);
      NATION = CheckNation(UID);
      if NATION == 1 then
         SelectMsg(UID, 1, savenum, 4094, NPC, 4080, 193);
      else
         SelectMsg(UID, 1, savenum, 4095, NPC, 4080, 193);
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
         SelectMsg(UID, 4, savenum, 4098, NPC, 22, 533, 23, 534);
      else
         SaveEvent(UID, 4101);
         SelectMsg(UID, 2, savenum, 4097, NPC, 10, 193);
      end
   else
      SelectMsg(UID, 2, savenum, 4096, NPC, 10, 193);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4100);
end

if EVENT == 534 then
   SaveEvent(UID, 4103);
end

local NATION = 0;

if EVENT == 535 then
   SaveEvent(UID, 4102);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4101, NPC, 4080, 193);
   else
      SelectMsg(UID, 1, savenum, 4102, NPC, 4080, 193);
   end
end

if EVENT == 536 then
   ITEM_COUNTA = HowmuchItem(UID, 379241000);
   ITEM_COUNTB = HowmuchItem(UID, 379236000);
   if ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0  then
      SelectMsg(UID, 2, savenum, 4103, NPC, 4062, 537, 4063, 193);
   else
      if ITEM_COUNTA <= 0 then
         SelectMsg(UID, 2, savenum, 4099, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 4100, NPC, 10, 193);
      end
   end
end

if EVENT == 537 then
   SaveEvent(UID, 4101);
   RobItem(UID, 379241000, 1);
   RobItem(UID, 379236000, 1);
   PromoteUser(UID)
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4092, NPC, 4064, 193);
   else
      SelectMsg(UID, 1, savenum, 4093, NPC, 4064, 193);
   end
end

-- 70Lv skill - start

if EVENT == 820 then
   SelectMsg(UID, 1, 52, 3225, NPC, 3006, 821);
end

if EVENT == 821 then
   ShowMap(UID, 306);
   SaveEvent(UID, 3422);
end

if EVENT == 822 then
   SelectMsg(UID, 1, 52, 3224, NPC, 3006, 821);
end

-- 70Lv skill no.52 type 0 or 4

if EVENT == 823 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, 52, 3226, NPC, 10, 824);
   else
      SelectMsg(UID, 2, 52, 4711, NPC, 10, 193);
   end
end

if EVENT == 823 then
   SelectMsg(UID, 2, 52, 3226, NPC, 10, 824);
end

if EVENT == 824 then
   SelectMsg(UID, 4, 52, 3227, NPC, 22, 825, 23, 831);
end

if EVENT == 825 then
   SaveEvent(UID, 3423);
   SelectMsg(UID, 2, 52, 3228, NPC, 10, 193);
end

if EVENT == 831 then
   SelectMsg(UID, 2, 52, 3229, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 826 then
   SaveEvent(UID, 3425);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 52, 3231, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 52, 3232, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;

if EVENT == 828 then
   ITEM_COUNT1 = HowmuchItem(UID, 379245000);
   ITEM_COUNT2 = HowmuchItem(UID, 379246000);
   ITEM_COUNT3 = HowmuchItem(UID, 379064000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 0 then
      SelectMsg(UID, 4, 52, 3233, NPC, 41, 830, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, 52, 3230, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, 52, 3230, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 52, 3230, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 830 then
   Check = CheckExchange(UID, 330)
   if Check == 1 then
      Exchange = RunExchange(UID, 330);
      if Exchange ==0 then
         SaveEvent(UID, 3424);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 70Lv skill - end

-- 72Lv skill - start

local savenum = 512;

if EVENT == 920 then
   SelectMsg(UID, 1, savenum, 5122, NPC, 3006, 921);
end

if EVENT == 921 then
   ShowMap(UID, 306);
   SaveEvent(UID, 5125);
end

if EVENT == 922 then
   SelectMsg(UID, 1, savenum, 5123, NPC, 3006, 921);
end

--  type 0 or 4

if EVENT == 923 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, savenum, 5125, NPC, 10, 924);
   else
      SelectMsg(UID, 2, savenum, 5124, NPC, 10, 193);
   end
end

if EVENT == 924 then
   SelectMsg(UID, 4, savenum, 5126, NPC, 22, 925, 23, 931);
end

if EVENT == 925 then
   SaveEvent(UID, 5126);
   SelectMsg(UID, 2, savenum, 5127, NPC, 10, 193);
end

if EVENT == 931 then
   SelectMsg(UID, 2, savenum, 5128, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 926 then
   SaveEvent(UID, 5128);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5130, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5131, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 928 then
   ITEM_COUNT1 = HowmuchItem(UID, 379241000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5132, NPC, 41, 930, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, savenum, 5129, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5129, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5129, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5129, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 930 then
   Check = CheckExchange(UID, 522)
   if Check == 1 then
      Exchange = RunExchange(UID, 522);
      if Exchange ==0 then
         SaveEvent(UID, 5127);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 72Lv skill - end

-- 75Lv skill - start

local savenum = 513;

if EVENT == 1020 then
   SelectMsg(UID, 1, savenum, 5133, NPC, 3006, 1021);
end

if EVENT == 1021 then
   ShowMap(UID, 306);
   SaveEvent(UID, 5137);
end

if EVENT == 1022 then
   SelectMsg(UID, 1, savenum, 5134, NPC, 3006, 1021);
end

--  type 0 or 4

if EVENT == 1023 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, savenum, 5136, NPC, 10, 1024);
   else
      SelectMsg(UID, 2, savenum, 5135, NPC, 10, 193);
   end
end

if EVENT == 1024 then
   SelectMsg(UID, 4, savenum, 5137, NPC, 22, 1025, 23, 1031);
end

if EVENT == 1025 then
   SaveEvent(UID, 5138);
   SelectMsg(UID, 2, savenum, 5138, NPC, 10, 193);
end

if EVENT == 1031 then
   SelectMsg(UID, 2, savenum, 5139, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 1026 then
   SaveEvent(UID, 5140);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5141, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5142, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 1028 then
   ITEM_COUNT1 = HowmuchItem(UID, 379246000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5143, NPC, 41, 1030, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, savenum, 5140, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5140, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5140, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5140, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 1030 then
   Check = CheckExchange(UID, 523)
   if Check == 1 then
      Exchange = RunExchange(UID, 523);
      if Exchange ==0 then
         SaveEvent(UID, 5139);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 75Lv skill - end

-- 80Lv skill - start
local savenum = 514;

if EVENT == 1120 then
   SelectMsg(UID, 1, savenum, 5144, NPC, 3006, 1121);
end

if EVENT == 1121 then
   ShowMap(UID, 306);
   SaveEvent(UID, 5149);
end

if EVENT == 1122 then
   SelectMsg(UID, 1, savenum, 5145, NPC, 3006, 1121);
end

--  type 0 or 4

if EVENT == 1123 then
   Class = CheckClass (UID);
   if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
      SelectMsg(UID, 2, savenum, 5147, NPC, 10, 1124);
   else
      SelectMsg(UID, 2, savenum, 5146, NPC, 10, 193);
   end
end

if EVENT == 1124 then
   SelectMsg(UID, 4, savenum, 5148, NPC, 22, 1125, 23, 1131);
end

if EVENT == 1125 then
   SaveEvent(UID, 5150);
   SelectMsg(UID, 2, savenum, 5149, NPC, 10, 193);
end

if EVENT == 1131 then
   SelectMsg(UID, 2, savenum, 5150, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 1126 then
   SaveEvent(UID, 5152);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5152, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5153, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 1128 then
   ITEM_COUNT1 = HowmuchItem(UID, 379245000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5154, NPC, 41, 1130, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
         SelectMsg(UID, 2, savenum, 5151, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5151, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5151, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5151, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 1130 then
   Check = CheckExchange(UID, 524)
   if Check == 1 then
      Exchange = RunExchange(UID, 524);
      if Exchange ==0 then
         SaveEvent(UID, 5151);
      else
         Ret = 1;	
      end	 
   else
      Ret = 1;	
   end	 
end

-- 80Lv skill - end

return Ret;
