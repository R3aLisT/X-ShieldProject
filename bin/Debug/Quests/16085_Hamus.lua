
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16085;

if EVENT == 165 then
	SelectMsg(UID, 3, -1, 4131, NPC, 2013, 201, 2014, 200, 4479, 300, 2015, 600, 4130, 500, 4404, 400);
end

local savenum = 426;

if EVENT ==  201 then
   SelectMsg(UID, 3, -1, 1111, NPC, 4583, 203, 4584, 204, 4585, 205, 4586, 206, 7162, 207, 7163, 208, 4005, 168);
end


local ITEMA = 0;

if EVENT == 203 then
   -- Premium hp potion 100 ea
   ITEMA = HowmuchItem(UID, 889310000);
   if ITEMA == 0 then
      SelectMsg(UID, 2, -1, 1113, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1112, NPC, 4006, 209, 4005, 168);
   end
end

if EVENT == 209 then
   RobItem(UID, 889310000, 1)
   GiveItem(UID, 389310000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

local ITEMB = 0;

if EVENT == 204 then
   -- Premium hp potion 300 ea
   ITEMB = HowmuchItem(UID, 889320000);
   if ITEMB == 0 then
      SelectMsg(UID, 2, -1, 1116, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1115, NPC, 4006, 210, 4005, 168);
   end
end

if EVENT == 210 then
   RobItem(UID, 889320000, 1)
   GiveItem(UID, 389320000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

local ITEMC = 0;

if EVENT == 205 then
   -- Premium mp potion 100 ea
   ITEMC = HowmuchItem(UID, 889340000);
   if ITEMC == 0 then
      SelectMsg(UID, 2, -1, 1118, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1117, NPC, 4006, 211, 4005, 168);
   end
end

if EVENT == 211 then
   RobItem(UID, 889340000, 1)
   GiveItem(UID, 389340000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

local ITEMD = 0;

if EVENT == 206 then
   -- Premium mp potion 300 ea
   ITEMD = HowmuchItem(UID, 889350000);
   if ITEMD == 0 then
      SelectMsg(UID, 2, -1, 1120, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1119, NPC, 4006, 212, 4005, 168);
   end
end

if EVENT == 212 then
   RobItem(UID, 889350000, 1)
   GiveItem(UID, 389350000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

local ITEME = 0;

if EVENT == 207 then
   -- Premium hp potion 500 ea
   ITEME = HowmuchItem(UID, 889330000);
   if ITEME == 0 then
      SelectMsg(UID, 2, -1, 1669, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1668, NPC, 4006, 213, 4005, 168);
   end
end

if EVENT == 213 then
   RobItem(UID, 889330000, 1)
   GiveItem(UID, 389330000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

local ITEMF = 0;

if EVENT == 208 then
   -- Premium mp potion 500 ea
   ITEMF = HowmuchItem(UID, 889360000);
   if ITEMF == 0 then
      SelectMsg(UID, 2, -1, 1671, NPC, 27, 168);
   else
      SelectMsg(UID, 2, -1, 1670, NPC, 4006, 214, 4005, 168);
   end
end

if EVENT == 214 then
   RobItem(UID, 889360000, 1)
   GiveItem(UID, 389360000, 1)
   SelectMsg(UID, 2, -1, 1114, NPC, 27, 168);
end

if EVENT == 168 then
   Ret = 1;
end

if EVENT == 200 then --NCS
   ITEM_COUNTA = HowmuchItem(UID, 800032000);
    if ITEM_COUNTA > 0 then
       SendNameChange(UID)
    else
       SelectMsg(UID, 2, savenum, 4454, NPC, 10, 168);
    end
end

local savenum = 450;

if EVENT == 600 then
   ITEM_COUNTA = HowmuchItem(UID, 800086000);
    if ITEM_COUNTA > 0 then
        Check = isClanLeader(UID)
        if Check then 
           SendClanNameChange(UID) --Lua Fonksiyonu Eksik
        else
           SelectMsg(UID, 2, savenum, 4671, NPC, 10, 168);
        end
    else
        SelectMsg(UID, 2, savenum, 4670, NPC, 10, 168);
    end
end

local savenum = 427;

if EVENT == 300 then -- Skill ve Stat Point Sýfýrlama Redisbition Item ile
   ITEM_COUNTA = HowmuchItem(UID, 700001000);
    if ITEM_COUNTA > 0 then
       SelectMsg(UID, 2, savenum, 4456, NPC, 4189, 301, 4190, 302);
    else
       SelectMsg(UID, 2, savenum, 4455, NPC, 10, 168);
    end
end

local Check1 = 0;

if EVENT == 301 then
    Check1 = CheckSkillPoint(UID)
    if Check1 > 0 then    
       RobItem(UID, 700001000, 1)
	   ResetSkillPoints(UID)
       SelectMsg(UID, 2, savenum, 4473, NPC, 10, 168);   
    else
       Ret = 1;
    end
end

if EVENT == 302 then
    GetStat = CheckStatPoint(UID)
    if GetStat > 0 then    
       RobItem(UID, 700001000, 1)
	   ResetStatPoints(UID)
       SelectMsg(UID, 2, savenum, 4474, NPC, 10, 168);
    else
       Ret = 1;
    end
end

local savenum = 451; 

if EVENT == 700 then -- Skill ve Stat Point Sýfýrlama Redisbition Item ile (Middle Class)
    Level = CheckLevel(UID)
    if Level > 59 then
       SelectMsg(UID, 2, savenum, 4674, NPC, 10, 168);
    else 
        ITEM_COUNTA = HowmuchItem(UID, 700008000);
        if ITEM_COUNTA > 0 then
           SelectMsg(UID, 2, savenum, 4673, NPC, 4189, 701, 4190, 702);
        else
           SelectMsg(UID, 2, savenum, 4672, NPC, 10, 168);
        end
    end
end

local Skill=0;
local Stat=0;

if EVENT == 701 then
    Skill = CheckSkillPoint(UID)
    if Skill > 0 then    
       RobItem(UID, 700008000, 1)
	   ResetSkillPoints(UID)
       SelectMsg(UID, 2, savenum, 4473, NPC, 10, 168);   
    else
       Ret = 1;
    end
end

if EVENT == 702 then
    Stat = CheckStatPoint(UID)
    if Stat > 0 then    
       RobItem(UID, 700008000, 1)
	   ResetStatPoints(UID)
       SelectMsg(UID, 2, savenum, 4474, NPC, 10, 168);
    else
       Ret = 1;
    end
end

if EVENT == 500 then
   SelectMsg(UID, 3, -1, 4901, NPC, 4285, 558, 4286, 501, 4287, 502, 4420, 511, 4421, 516, 4589, 521, 4588, 526, 4504, 531);
end

local ITEMARMOR = 0;
local ITEMHELMET = 0;

if EVENT == 558 then
   SelectMsg(UID, 11, savenum, 4432, NPC);
end

if EVENT == 501 then
   ITEMARMOR = HowmuchItem(UID, 800180000);
   if ITEMARMOR > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4288, 503, 4289, 504, 4290, 505, 4291, 506);
   else
      SelectMsg(UID, 2, -1, 4921, NPC, 27, 168);
   end
end

if EVENT == 502 then
   ITEMHELMET = HowmuchItem(UID, 800170000);
   if ITEMHELMET > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4292, 507, 4293, 508, 4294, 509, 4295, 510);
   else
      SelectMsg(UID, 2, -1, 4911, NPC, 27, 168);
   end
end

if EVENT == 503 then
   RobItem(UID, 800180000, 1)
   GiveItem(UID, 508011441, 1)
end

if EVENT == 504 then
   RobItem(UID, 800180000, 1)
   GiveItem(UID, 508011442, 1)
end

if EVENT == 505 then
   RobItem(UID, 800180000, 1)
   GiveItem(UID, 508011443, 1)
end

if EVENT == 506 then
   RobItem(UID, 800180000, 1)
   GiveItem(UID, 508011444, 1)
end

if EVENT == 507 then
   RobItem(UID, 800170000, 1)
   GiveItem(UID, 508013318, 1)
end

if EVENT == 508 then
   RobItem(UID, 800170000, 1)
   GiveItem(UID, 508013319, 1)
end

if EVENT == 509 then
   RobItem(UID, 800170000, 1)
   GiveItem(UID, 508013320, 1)
end

if EVENT == 510 then
   RobItem(UID, 800170000, 1)
   GiveItem(UID, 508013321, 1)
end

local ITEMGRYPA = 0;
local ITEMGRYPH = 0;
local ITEMBHMTA = 0;
local ITEMBHMTH = 0;
local ITEMPTHS = 0;

if EVENT == 511 then
   ITEMGRYPA = HowmuchItem(UID, 800240000);
   if ITEMGRYPA > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4288, 512, 4289, 513, 4290, 514, 4291, 515);
   else
      SelectMsg(UID, 2, -1, 6488, NPC, 27, 168);
   end
end

if EVENT == 512 then
   RobItem(UID, 800240000, 1)
   GiveItem(UID, 508471453, 1)
end

if EVENT == 513 then
   RobItem(UID, 800240000, 1)
   GiveItem(UID, 508471454, 1)
end

if EVENT == 514 then
   RobItem(UID, 800240000, 1)
   GiveItem(UID, 508471455, 1)
end

if EVENT == 515 then
   RobItem(UID, 800240000, 1)
   GiveItem(UID, 508471456, 1)
end

if EVENT == 516 then
   ITEMGRYPH = HowmuchItem(UID, 800230000);
   if ITEMGRYPH > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4288, 517, 4289, 518, 4290, 519, 4291, 520);
   else
      SelectMsg(UID, 2, -1, 6497, NPC, 27, 168);
   end
end

if EVENT == 517 then
   RobItem(UID, 800230000, 1)
   GiveItem(UID, 508473453, 1)
end

if EVENT == 518 then
   RobItem(UID, 800230000, 1)
   GiveItem(UID, 508473454, 1)
end

if EVENT == 519 then
   RobItem(UID, 800230000, 1)
   GiveItem(UID, 508473455, 1)
end

if EVENT == 520 then
   RobItem(UID, 800230000, 1)
   GiveItem(UID, 508473456, 1)
end

if EVENT == 521 then
   ITEMBHMTA = HowmuchItem(UID, 800270000);
   if ITEMBHMTA > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4288, 522, 4289, 523, 4290, 524, 4291, 525);
   else
      SelectMsg(UID, 2, -1, 1126, NPC, 27, 168);
   end
end

if EVENT == 522 then
   RobItem(UID, 800270000, 1)
   GiveItem(UID, 508051466, 1)
end

if EVENT == 523 then
   RobItem(UID, 800270000, 1)
   GiveItem(UID, 508051467, 1)
end

if EVENT == 524 then
   RobItem(UID, 800270000, 1)
   GiveItem(UID, 508051468, 1)
end

if EVENT == 525 then
   RobItem(UID, 800270000, 1)
   GiveItem(UID, 508051469, 1)
end

if EVENT == 526 then
   ITEMBHMTH = HowmuchItem(UID, 800260000);
   if ITEMBHMTH > 0 then
      SelectMsg(UID, 3, -1, 4902, NPC, 4288, 527, 4289, 528, 4290, 529, 4291, 530);
   else
      SelectMsg(UID, 2, -1, 1126, NPC, 27, 168);
   end
end

if EVENT == 527 then
   RobItem(UID, 800260000, 1)
   GiveItem(UID, 508053466, 1)
end

if EVENT == 528 then
   RobItem(UID, 800260000, 1)
   GiveItem(UID, 508053467, 1)
end

if EVENT == 529 then
   RobItem(UID, 800260000, 1)
   GiveItem(UID, 508053468, 1)
end

if EVENT == 530 then
   RobItem(UID, 800260000, 1)
   GiveItem(UID, 508053469, 1)
end

if EVENT == 531 then
   ITEMPTHS = HowmuchItem(UID, 800250000);
   if ITEMPTHS > 0 then
      SelectMsg(UID, 3, -1, 748, NPC, 4509, 532, 4510, 533);
   else
      SelectMsg(UID, 2, -1, 749, NPC, 27, 168);
   end
end

if EVENT == 532 then
   SelectMsg(UID, 3, -1, 750, NPC, 4505, 534, 4506, 535, 4507, 536, 4508, 537);
end

if EVENT == 534 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 502573462, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 535 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 503573463, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 536 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID , 504573464, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 537 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 505573465, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 533 then
   SelectMsg(UID, 3, -1, 751, NPC, 4514, 538, 4515, 539, 4516, 540, 4517, 541);
end

if EVENT == 538 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 511573471, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 539 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 512573472, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 540 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID , 513573473, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

if EVENT == 541 then
   RobItem(UID, 800250000, 1)
   GiveItem(UID, 514573474, 1)
   SelectMsg(UID, 2, -1, 752, NPC, 27, 168);
end

local ITEMEVENT = 0;

if EVENT == 400 then
   ITEMEVENT = HowmuchItem(UID, 810191000);
   if ITEMEVENT > 0 then
      SelectMsg(UID, 3, -1, 106, NPC, 4403, 401, 4404, 402, 4479, 403);
   else
      SelectMsg(UID, 2, -1, 8092, NPC, 27, 168);
   end
end

if EVENT == 401 then
   SelectMsg(UID, 2, -1, 8093, NPC, 4006, 404, 4005, 168);
end

if EVENT == 404 then
   RobItem(UID, 810191000, 1)
   GiveItem(UID, 700002000, 1)
   SelectMsg(UID, 2, -1 , 8094, NPC, 27, 168);
end

if EVENT == 402 then
   SelectMsg(UID, 2, -1, 8095, NPC, 4006, 405, 4005, 168);
end

if EVENT == 405 then
   RobItem(UID, 810191000, 1)
   GiveItem(UID, 379258000, 1)
   SelectMsg(UID, 2, -1 , 8094, NPC, 27, 168);
end

if EVENT == 403 then
   SelectMsg(UID, 2, -1, 8102, NPC, 4006, 406, 4005, 168);
end

if EVENT == 406 then
   RobItem(UID, 810191000, 1)
   GiveItem(UID, 700001000, 1)
   SelectMsg(UID, 2, -1 , 8094, NPC, 27, 168);
end