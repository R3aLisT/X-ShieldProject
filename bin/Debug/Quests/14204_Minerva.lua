
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14204;

if EVENT == 190 then
	QuestNum = SearchQuest(UID, NPC);
	if QuestNum == 0 then
	   SelectMsg(UID, 2, -1, 3826, NPC, 10, 193);
	   Ret = 1;
	elseif QuestNum > 1 and  QuestNum < 100 then
       NpcMsg(UID, 3826, NPC)
    else
       EVENT = QuestNum
	end
end

if EVENT == 193 then
    Ret = 1;
end

if EVENT == 195 then
   SelectMsg(UID, 1, 70, 3026, NPC, 10, 196);
end

if EVENT == 196 then
   ShowMap(UID, 303);
   SaveEvent(UID, 3063);
end

if EVENT == 232 then
   ShowMap(UID, 302);
   SaveEvent(UID, 3073);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 70, 3027, NPC, 28, 232);
end

if EVENT == 200 then
   SelectMsg(UID, 2, 70, 3010, NPC, 10, 1000);
end

if EVENT == 1000 then
   SelectMsg(UID, 2, 70, 3011, NPC, 10, 1001);
end

if EVENT == 1001 then
   SelectMsg(UID, 2, 70, 3012, NPC, 10, 1002);
end

if EVENT == 1002 then
   SelectMsg(UID, 2, 70, 3013, NPC, 10, 1003);
end

if EVENT == 1003 then
   SelectMsg(UID, 2, 70, 3014, NPC, 3002, 1004);
end

if EVENT == 1004 then
   SelectMsg(UID, 2, 70, 3015, NPC, 10, 1005);
end

if EVENT == 1005 then
   SelectMsg(UID, 2, 70, 3016, NPC, 3002, 201);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 70, 3017, NPC, 22, 202, 23, 193);
end

if EVENT == 202 then
   SaveEvent(UID, 3064);
end

local NATION = 0;

if EVENT == 205 then
   SaveEvent(UID, 3066);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 70, 3021, NPC, 3016, 193);
   else
      SelectMsg(UID, 1, 70, 3020, NPC, 3016, 193);
   end
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 379104000);
   if  ITEM_COUNT <= 0 then
      SelectMsg(UID, 2, 70, 3019, NPC, 10, 193);
   elseif ITEM_COUNT  > 0 then
      SelectMsg(UID, 4, 70, 3022, NPC, 10, 214, 27, 193);
   end
end

if EVENT == 213 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 214 then
   Check = CheckExchange(UID, 306)
   if  Check ==1 then
   RunExchange(UID, 306);
   SaveEvent(UID, 3065);
   else
  Ret = 1;	
  end	 
end

if EVENT == 220 then
   SelectMsg(UID, 1, 307, 3028, NPC, 3004, 1100, 3005, 1100);
end

if EVENT == 1100 then
   SelectMsg(UID, 1, 307, 3029, NPC, 3006, 1101);
end

if EVENT == 1101 then
   SelectMsg(UID, 1, 307, 3030, NPC, 3007, 221, 3008, 1102);
end

if EVENT == 1102 then
   SelectMsg(UID, 1, 307, 3028, NPC, 3006, 221);
end

if EVENT == 221 then
   SaveEvent(UID, 3082);
end

if EVENT == 222 then
   SelectMsg(UID, 1, 307, 3032, NPC, 3003, 1110);
end

if EVENT == 1110 then
   SelectMsg(UID, 1, 307, 3029, NPC, 3006, 1111);
end

if EVENT == 1111 then
   SelectMsg(UID, 1, 307, 3030, NPC, 3007, 221, 3008, 1112);
end

if EVENT == 1112 then
   SelectMsg(UID, 1, 307, 3028, NPC, 3006, 221);
end

if EVENT == 223 then
   SelectMsg(UID, 2, 307, 3036, NPC, 10, 227);
end

if EVENT == 227 then
   SelectMsg(UID, 2, 307, 3037, NPC, 3002, 224);
end

if EVENT == 224 then
   SelectMsg(UID, 4, 307, 3038, NPC, 22, 225, 23, 193);
end

if EVENT == 225 then
   SaveEvent(UID, 3083);
end

local NATION = 0;

if EVENT == 226 then
   SaveEvent(UID, 3085);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 307, 3042, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 307, 3045, NPC, 32, 193);
   end
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local RUN_EXCHANGE ;

if EVENT == 228 then
   ITEM_COUNTA = HowmuchItem(UID, 379044000);
   ITEM_COUNTB = HowmuchItem(UID, 389076000);
   ITEM_COUNTC = HowmuchItem(UID, 900000000);
   if ITEM_COUNTA  > 99 and ITEM_COUNTB  > 29 and ITEM_COUNTC  > 4999999 then
      SelectMsg(UID, 4, 307, 3043, NPC, 10, 230, 27, 193);
   else 
      if  ITEM_COUNTA <= 99 then
        SelectMsg(UID, 2, 307, 3041, NPC, 10, 193);
      elseif  ITEM_COUNTB <= 29 then
        SelectMsg(UID, 2, 307, 3041, NPC, 10, 193);
      else
        SelectMsg(UID, 2, 307, 3041, NPC, 10, 193);
      end
   end
end

if EVENT == 229 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 230 then
   Check = CheckExchange(UID, 307)
   if  Check == 1 then
   RunExchange(UID, 307);
   SaveEvent(UID, 3086);
   EVENT = 231
   else
  Ret = 1;	
  end	 
end

if EVENT == 231 then
   SelectMsg(UID, 2, 307, 3044, NPC, 10, 193);
end

if EVENT == 300 then
   SelectMsg(UID, 1, 308, 3001, NPC, 28, 301);
end

if EVENT == 301 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3102);
end

if EVENT == 302 then
   SelectMsg(UID, 1, 308, 3002, NPC, 28, 301);
end

if EVENT == 303 then
   SelectMsg(UID, 2, 308, 3048, NPC, 10, 304);
end

if EVENT == 304 then
   SelectMsg(UID, 4, 308, 3049, NPC, 22, 305, 23, 193);
end

if EVENT == 305 then
   SaveEvent(UID, 3103);
end

local NATION = 0;

if EVENT == 306 then
   SaveEvent(UID, 3105);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 308, 3053, NPC, 3009, 193);
   else
      SelectMsg(UID, 1, 308, 3054, NPC, 3009, 193);
   end
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local RUN_EXCHANGE ;

if EVENT == 308 then
   ITEM_COUNTA = HowmuchItem(UID, 379044000);
   ITEM_COUNTB = HowmuchItem(UID, 379112000);
   ITEM_COUNTC = HowmuchItem(UID, 379202000);
   if  ITEM_COUNTA >= 30 and  ITEM_COUNTB >= 2 and  ITEM_COUNTC >= 50 then
      SelectMsg(UID, 4, 308, 3055, NPC, 10, 310, 27, 193);
   else
      if ITEM_COUNTA < 30 then
        SelectMsg(UID, 2, 308, 3052, NPC, 18, 193);
      elseif  ITEM_COUNTB < 2 then
       SelectMsg(UID, 2, 308, 3053, NPC, 18, 193);
      else
      SelectMsg(UID, 2, 308, 3054, NPC, 18, 193);
      end
    end
end

if EVENT == 309 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 310 then
   Check = CheckExchange(UID, 308)
   if  Check ==1 then
   RunExchange(UID, 308);
   SaveEvent(UID, 3106);
   else
  Ret = 1;	
  end	 
end

if EVENT == 400 then
   SelectMsg(UID, 1, 309, 3001, NPC, 28, 401);
end

if EVENT == 401 then
   ShowMap(UID, 5);
   SaveEvent(UID, 3122);
end

if EVENT == 402 then
   SelectMsg(UID, 1, 309, 3002, NPC, 28, 401);
end

if EVENT == 403 then
   SelectMsg(UID, 2, 309, 3056, NPC, 10, 404);
end

if EVENT == 404 then
   SelectMsg(UID, 4, 309, 3057, NPC, 22, 405, 23, 193);
end

if EVENT == 405 then
   SaveEvent(UID, 3123);
end

local NATION = 0;

if EVENT == 406 then
   SaveEvent(UID, 3125);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 309, 3061, NPC, 3006, 193);
   else
      SelectMsg(UID, 1, 309, 3062, NPC, 3006, 193);
   end
end

local ITEM_COUNTA=0;
local ITEM_COUNTB=0;
local ITEM_COUNTC=0;
local RUN_EXCHANGE ;

if EVENT == 408 then
   ITEM_COUNTA = HowmuchItem(UID, 379046000);
   ITEM_COUNTB = HowmuchItem(UID, 389075000);
   ITEM_COUNTC = HowmuchItem(UID, 379067000);
   if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 29 and  ITEM_COUNTC  > 0 then
      SelectMsg(UID, 4, 309, 3063, NPC, 10, 410, 27, 193);
   else
      if ITEM_COUNTA <= 0 then
        SelectMsg(UID, 2, 309, 3060, NPC, 18, 193);
      elseif  ITEM_COUNTB <= 29 then
       SelectMsg(UID, 2, 309, 3060, NPC, 18, 193);
      else
      SelectMsg(UID, 2, 309, 3060, NPC, 18, 193);
      end
    end
end

if EVENT == 409 then
   ShowMap(UID, 7);
end

local Check;

if EVENT == 410 then
   Check = CheckExchange(UID, 400)
   if  Check ==1 then
   RunExchange(UID, 309);
   SaveEvent(UID, 3126);
   else
  Ret = 1;	
  end	 
end

local savenum = 408;

if EVENT == 530 then
   Class = CheckClass (UID);
   if Class == 11 then
   SaveEvent(UID, 4123);
   NATION = CheckNation(UID);
      if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4116, NPC, 4080, 193);
      else
      SelectMsg(UID, 1, savenum, 4117, NPC, 4080, 193);
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
       SelectMsg(UID, 4, savenum, 4120, NPC, 22, 533, 23, 534);
      else
      SaveEvent(UID, 4125);
      SelectMsg(UID, 2, savenum, 4119, NPC, 10, 193);
      end
   else
   SelectMsg(UID, 2, savenum, 4118, NPC, 10, 193);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4124);
end

if EVENT == 534 then
   SaveEvent(UID, 4127);
end

local NATION = 0;

if EVENT == 535 then
   SaveEvent(UID, 4126);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4123, NPC, 4080, 193);
   else
      SelectMsg(UID, 1, savenum, 4124, NPC, 4080, 193);
   end
end

if EVENT == 536 then
   ITEM_COUNTA = HowmuchItem(UID, 379047000);
   ITEM_COUNTB = HowmuchItem(UID, 379236000);
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0  then
      SelectMsg(UID, 2, savenum, 4125, NPC, 4062, 537, 4063, 193);
    else
       if ITEM_COUNTA <= 0 then
       SelectMsg(UID, 2, savenum, 4121, NPC, 10, 193);
       else
       SelectMsg(UID, 2, savenum, 4122, NPC, 10, 193);
       end
   end
end

if EVENT == 537 then
   SaveEvent(UID, 4125);
   RobItem(UID, 379047000, 1);
   RobItem(UID, 379236000, 1);
   PromoteUser(UID)
   NATION = CheckNation(UID);
   if NATION == 1 then
   SelectMsg(UID, 1, savenum, 4092, NPC, 4064, 193);
   else
   SelectMsg(UID, 1, savenum, 4093, NPC, 4064, 193);
   end
end

if EVENT == 620 then
   SelectMsg(UID, 1, 54, 3245, NPC, 3006, 621);
end

if EVENT == 621 then
   ShowMap(UID, 302);
   SaveEvent(UID, 3462);
end

if EVENT == 622 then
   SelectMsg(UID, 1, 54, 3244, NPC, 3006, 621);
end

if EVENT == 623 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
   SelectMsg(UID, 2, 54, 3246, NPC, 10, 624);
    else
   SelectMsg(UID, 2, 54, 4713, NPC, 10, 193);
    end
end


if EVENT == 624 then
   SelectMsg(UID, 4, 54, 3247, NPC, 22, 625, 23, 631);
end

if EVENT == 625 then
   SaveEvent(UID, 3463);
   SelectMsg(UID, 2, 54, 3248, NPC, 10, 193);
end

if EVENT == 631 then
   SelectMsg(UID, 2, 54, 3249, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 626 then
   SaveEvent(UID, 3465);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 54, 3251, NPC, 32, 193);
   else
      SelectMsg(UID, 1, 54, 3252, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;

if EVENT == 628 then
   ITEM_COUNT1 = HowmuchItem(UID, 379066000);
   ITEM_COUNT2 = HowmuchItem(UID, 379249000);
   ITEM_COUNT3 = HowmuchItem(UID, 379250000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 0 then
      SelectMsg(UID, 4, 54, 3253, NPC, 41, 630, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, 54, 3250, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, 54, 3250, NPC, 10, 193);
      else
         SelectMsg(UID, 2, 54, 3250, NPC, 10, 193);
      end
   end
end

if EVENT == 629 then
   ShowMap(UID, 304);
end

local Check;


if EVENT == 630 then
        Check = CheckExchange(UID, 332)
        if  Check == 1 then
            Exchange =RunExchange(UID, 332);
            if  Exchange ==0 then
            SaveEvent(UID, 3464);
            else
            Ret = 1;	
            end	 
        else
        Ret = 1;	
        end	 
end

local savenum = 518;

if EVENT == 720 then
   SelectMsg(UID, 1, savenum, 5188, NPC, 3006, 721);
end

if EVENT == 721 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5197);
end

if EVENT == 722 then
   SelectMsg(UID, 1, savenum, 5189, NPC, 3006, 721);
end

if EVENT == 723 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
    SelectMsg(UID, 2, savenum, 5191, NPC, 10, 724);
    else
    SelectMsg(UID, 2, savenum, 5190, NPC, 10, 193);
   end
end

if EVENT == 724 then
   SelectMsg(UID, 4, savenum, 5192, NPC, 22, 725, 23, 731);
end

if EVENT == 725 then
   SaveEvent(UID, 5198);
   SelectMsg(UID, 2, savenum, 5193, NPC, 10, 193);
end

if EVENT == 931 then
   SelectMsg(UID, 2, savenum, 5194, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 726 then
   SaveEvent(UID, 5200);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5196, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5197, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 728 then
   ITEM_COUNT1 = HowmuchItem(UID, 379250000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5198, NPC, 41, 730, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5195, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5195, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5195, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5195, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 730 then
   Check = CheckExchange(UID, 528)
   if  Check == 1 then
   Exchange =RunExchange(UID, 528);
        if  Exchange ==0 then
        SaveEvent(UID, 5199);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

local savenum = 519;

if EVENT == 820 then
   SelectMsg(UID, 1, savenum, 5199, NPC, 3006, 821);
end

if EVENT == 821 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5209);
end

if EVENT == 822 then
   SelectMsg(UID, 1, savenum, 5200, NPC, 3006, 821);
end

if EVENT == 823 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
    SelectMsg(UID, 2, savenum, 5202, NPC, 10, 824);
    else
    SelectMsg(UID, 2, savenum, 5201, NPC, 10, 193);
   end
end

if EVENT == 824 then
   SelectMsg(UID, 4, savenum, 5203, NPC, 22, 825, 23, 831);
end

if EVENT == 825 then
   SaveEvent(UID, 5210);
   SelectMsg(UID, 2, savenum, 5204, NPC, 10, 193);
end

if EVENT == 831 then
   SelectMsg(UID, 2, savenum, 5205, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 826 then
   SaveEvent(UID, 5212);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5207, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5208, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 828 then
   ITEM_COUNT1 = HowmuchItem(UID, 379249000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5209, NPC, 41, 830, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5206, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5206, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5206, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5206, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 830 then
   Check = CheckExchange(UID, 529)
   if  Check == 1 then
   Exchange =RunExchange(UID, 529);
        if  Exchange ==0 then
        SaveEvent(UID, 5211);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

local savenum = 520;

if EVENT == 920 then
   SelectMsg(UID, 1, savenum, 5210, NPC, 3006, 921);
end

if EVENT == 921 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5221);
end

if EVENT == 922 then
   SelectMsg(UID, 1, savenum, 5211, NPC, 3006, 921);
end

if EVENT == 923 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
    SelectMsg(UID, 2, savenum, 5213, NPC, 10, 924);
    else
    SelectMsg(UID, 2, savenum, 5212, NPC, 10, 193);
   end
end

if EVENT == 924 then
   SelectMsg(UID, 4, savenum, 5214, NPC, 22, 925, 23, 931);
end

if EVENT == 925 then
   SaveEvent(UID, 5222);
   SelectMsg(UID, 2, savenum, 5215, NPC, 10, 193);
end

if EVENT == 931 then
   SelectMsg(UID, 2, savenum, 5216, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 926 then
   SaveEvent(UID, 5224);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5218, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5219, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 928 then
   ITEM_COUNT1 = HowmuchItem(UID, 379250000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 1 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5220, NPC, 41, 930, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5217, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5217, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5217, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5217, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 930 then
   Check = CheckExchange(UID, 530)
   if  Check == 1 then
   Exchange =RunExchange(UID, 530);
        if  Exchange ==0 then
        SaveEvent(UID, 5223);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

local savenum = 521;

if EVENT == 1020 then
   SelectMsg(UID, 1, savenum, 5221, NPC, 3006, 1021);
end

if EVENT == 1021 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5233);
end

if EVENT == 1022 then
   SelectMsg(UID, 1, savenum, 5222, NPC, 3006, 1021);
end

if EVENT == 1023 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
    SelectMsg(UID, 2, savenum, 5224, NPC, 10, 1024);
    else
    SelectMsg(UID, 2, savenum, 5223, NPC, 10, 193);
   end
end

if EVENT == 1024 then
   SelectMsg(UID, 4, savenum, 5225, NPC, 22, 1025, 23, 1031);
end

if EVENT == 1025 then
   SaveEvent(UID, 5234);
   SelectMsg(UID, 2, savenum, 5226, NPC, 10, 193);
end

if EVENT == 1031 then
   SelectMsg(UID, 2, savenum, 5227, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 1026 then
   SaveEvent(UID, 5236);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5229, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5230, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 1028 then
   ITEM_COUNT1 = HowmuchItem(UID, 379249000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 1 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5231, NPC, 41, 1030, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5228, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5228, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5228, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5228, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 1030 then
   Check = CheckExchange(UID, 531)
   if  Check == 1 then
   Exchange =RunExchange(UID, 531);
        if  Exchange ==0 then
        SaveEvent(UID, 5235);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

local savenum = 522;

if EVENT == 1120 then
   SelectMsg(UID, 1, savenum, 5232, NPC, 3006, 1121);
end

if EVENT == 1121 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5245);
end

if EVENT == 1122 then
   SelectMsg(UID, 1, savenum, 5233, NPC, 3006, 1121);
end

if EVENT == 1123 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then 
    SelectMsg(UID, 2, savenum, 5235, NPC, 10, 1124);
    else
    SelectMsg(UID, 2, savenum, 5234, NPC, 10, 193);
   end
end

if EVENT == 1124 then
   SelectMsg(UID, 4, savenum, 5236, NPC, 22, 1125, 23, 1131);
end

if EVENT == 1125 then
   SaveEvent(UID, 5246);
   SelectMsg(UID, 2, savenum, 5237, NPC, 10, 193);
end

if EVENT == 1131 then
   SelectMsg(UID, 2, savenum, 5238, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 1126 then
   SaveEvent(UID, 5248);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5240, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5241, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 1128 then
   ITEM_COUNT1 = HowmuchItem(UID, 379250000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 5242, NPC, 41, 1130, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5239, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5239, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5239, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5239, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 1130 then
   Check = CheckExchange(UID, 532)
   if  Check == 1 then
   Exchange =RunExchange(UID, 532);
        if  Exchange ==0 then
        SaveEvent(UID, 5247);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

local savenum = 523;

if EVENT == 1220 then
   SelectMsg(UID, 1, savenum, 5243, NPC, 3006, 1221);
end

if EVENT == 1221 then
   ShowMap(UID, 302);
   SaveEvent(UID, 5257);
end

if EVENT == 1222 then
   SelectMsg(UID, 1, savenum, 5244, NPC, 3006, 1221);
end

if EVENT == 1223 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then
    SelectMsg(UID, 2, savenum, 5246, NPC, 10, 1224);
    else
    SelectMsg(UID, 2, savenum, 5245, NPC, 10, 193);
   end
end

if EVENT == 1224 then
   SelectMsg(UID, 4, savenum, 5247, NPC, 22, 1225, 23, 1231);
end

if EVENT == 1225 then
   SaveEvent(UID, 5258);
   SelectMsg(UID, 2, savenum, 5248, NPC, 10, 193);
end

if EVENT == 1231 then
   SelectMsg(UID, 2, savenum, 5249, NPC, 10, 193);
end

local NATION = 0;

if EVENT == 1226 then
   SaveEvent(UID, 5260);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 5251, NPC, 32, 193);
   else
      SelectMsg(UID, 1, savenum, 5252, NPC, 32, 193);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 1228 then
   ITEM_COUNT1 = HowmuchItem(UID, 379249000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then
      SelectMsg(UID, 4, savenum, 4704, NPC, 41, 1230, 27, 193);
   else
      if ITEM_COUNT1 <= 0 then
        SelectMsg(UID, 2, savenum, 5251, NPC, 10, 193);
      elseif ITEM_COUNT2 <= 0 then
         SelectMsg(UID, 2, savenum, 5251, NPC, 10, 193);
      elseif ITEM_COUNT3 <= 0 then
         SelectMsg(UID, 2, savenum, 5251, NPC, 10, 193);
      else
         SelectMsg(UID, 2, savenum, 5251, NPC, 10, 193);
      end
   end
end


local Check;

if EVENT == 1230 then
   Check = CheckExchange(UID, 533)
   if  Check == 1 then
   Exchange =RunExchange(UID, 533);
        if  Exchange ==0 then
        SaveEvent(UID, 5259);
        else
        Ret = 1;
        end	 
  else
  Ret = 1;	
  end	 
end
