local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 13013;

if EVENT == 165 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 166, NPC, 10, 168);
      Ret = 1;
   elseif QuestNum > 1 and QuestNum < 100 then
      NpcMsg(UID, 167, NPC);
   else
      EVENT = QuestNum
   end
end

if EVENT == 168 then
   Ret = 1;
end

local NATION = 0;

if EVENT == 170 then
   SelectMsg(UID, 1, 101, 170, NPC, 24, 171);
end

if EVENT == 171 then
   ShowMap(UID, 4);
   SaveEvent(UID, 48);
end

if EVENT == 172 then
   SelectMsg(UID, 1, 101, 172, NPC, 24, 171);
end

if EVENT == 175 then
   SelectMsg(UID, 2, 101, 175, NPC,  25, 176, 13, 177);
end   

if EVENT == 9205 then
   SelectMsg(UID, 2, 886, 175, NPC,  25, 9206, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9206 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 886, 8667, NPC, 22, 9608, 23, 168);
   else
      SelectMsg(UID, 2, 886, 8667, NPC, 10, 168);
   end
end

if EVENT == 9207 then
   SaveEvent(UID, 5276);
   GoldGain(UID, 50000)
   ExpChange(UID, 3750)
end

if EVENT == 9608 then
   SaveEvent(UID, 5275);
end

if EVENT == 9215 then
   MonsterCount = CountMonsterQuestSub(UID, 886, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 886, 8667, NPC, 10, 9218);
   else
      SelectMsg(UID, 4, 886, 8667, NPC, 10, 9207, 27, 168);
   end
end

if EVENT == 9218 then
   ShowMap(UID, 326);
end

if EVENT == 176 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 101, 176, NPC, 22, 178, 23, 168);
   else
      SelectMsg(UID, 2, 101, 173, NPC, 10, 168);
   end
end

if EVENT == 178 then
   SaveEvent(UID, 49);
end

if EVENT == 180 then
   SaveEvent(UID, 51);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 101, 181, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 101, 182, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 185 then
   MonsterCount  = CountMonsterQuestSub(UID, 101, 1);
   if MonsterCount < 5 then
      SelectMsg(UID, 2, 101, 186, NPC, 10, 188);
   else
      SelectMsg(UID, 4, 101, 187, NPC, 10, 177, 27, 168);
   end
end

if EVENT == 188 then
   ShowMap(UID, 1);
end

if EVENT == 177 then
   Check = isRoomForItem(UID, 910041000);
   if Check == -1 then
   SelectMsg(UID, 2, -1, 832, NPC ,27);
   else
   ExpChange(UID, 17)
   GiveItem(UID, 389016000, 5)
   GiveItem(UID, 389010000, 10)
   SaveEvent(UID, 50);
   end
end

if EVENT == 220 then
   SelectMsg(UID, 1, 103, 220, NPC, 24, 221, 14, 222);
end

if EVENT == 221 then
   ShowMap(UID, 4);
   SaveEvent(UID, 63);
end

if EVENT == 222 then
   SaveEvent(UID, 63);
end

if EVENT == 223 then
   SelectMsg(UID, 1, 103, 223, NPC, 24, 221, 14, 222);
end

if EVENT == 225 then
   SelectMsg(UID, 2, 103, 225, NPC,  33, 226);
end

local MonsterSub = 0;

if EVENT == 226 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 103, 228, NPC, 22, 229, 23, 168);
   else
      SelectMsg(UID, 2, 103, 173, NPC, 10, 168);
   end
end

if EVENT == 229 then
   SaveEvent(UID, 64);
end

if EVENT == 231 then
   SaveEvent(UID, 66);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 103, 232, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 103, 233, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 235 then
   MonsterCount  = CountMonsterQuestSub(UID, 103, 1);
   if  MonsterCount < 5 then
      SelectMsg(UID, 2, 103, 237, NPC, 18, 239);
   else
      SelectMsg(UID, 4, 103, 236, NPC, 10, 238, 27, 168);
   end
end

if EVENT == 239 then
   ShowMap(UID, 7);
end

if EVENT == 238 then
  SaveEvent(UID, 65);
  ExpChange (UID, 150)
  GoldGain(UID, 700)  
end

if EVENT == 370 then
   SelectMsg(UID, 1, 320, 3150, NPC, 24, 371);
end

if EVENT == 371 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3322);
end

if EVENT == 372 then
   SelectMsg(UID, 1, 320, 3151, NPC, 24, 371);
end

if EVENT == 300 then
   SelectMsg(UID, 2, 320, 3152, NPC,  3012, 301, 13, 168);
end

local MonsterSub = 0;

if EVENT == 301 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 320, 3153, NPC, 22, 302, 23, 308);
   else
      SelectMsg(UID, 2, 320, 173, NPC, 10, 168);
   end
end

if EVENT == 302 then
   SaveEvent(UID, 3323);
   SelectMsg(UID, 2, 320, 3154, NPC, 10, 168);
end

if EVENT == 303 then
   SaveEvent(UID, 3325);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 320, 3157, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 320, 3158, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 305 then
   MonsterCount  = CountMonsterQuestSub(UID, 320, 1);
   if MonsterCount < 5 then
      SelectMsg(UID, 2, 320, 3156, NPC, 10, 306);
   else
      SelectMsg(UID, 4, 320, 3159, NPC, 10, 307, 27, 306);
   end
end

if EVENT == 306 then
   ShowMap(UID, 11);
end

if EVENT == 307 then
   SaveEvent(UID, 3324);
   ExpChange(UID, 625)   
end

if EVENT == 308 then
   SelectMsg(UID, 2, 320, 3155, NPC, 10, 168);
end

if EVENT == 470 then
   SelectMsg(UID, 1, 321, 170, NPC, 24, 471);
end

if EVENT == 471 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3332);
end

if EVENT == 472 then
   SelectMsg(UID, 1, 321, 172, NPC, 24, 471);
end

if EVENT == 400 then
   SelectMsg(UID, 2, 321, 3160, NPC,  3012, 401, 13, 168);
end

local MonsterSub = 0;

if EVENT == 401 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 321, 3161, NPC, 22, 402, 23, 408);
   else
      SelectMsg(UID, 2, 321, 173, NPC, 10, 168);
   end
end

if EVENT == 402 then
   SaveEvent(UID, 3333);
   SelectMsg(UID, 2, 320, 3162, NPC, 10, 168);
end

if EVENT == 403 then
   SaveEvent(UID, 3335);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 321, 3165, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 321, 3166, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 405 then
   MonsterCount  = CountMonsterQuestSub(UID, 321, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 321, 3164, NPC, 10, 406);
   else
      SelectMsg(UID, 4, 321, 3167, NPC, 10, 407, 27, 406);
   end
end

if EVENT == 406 then
   ShowMap(UID, 34);
end

if EVENT == 407 then
   SaveEvent(UID, 3334);
   ExpChange(UID, 1167) 
end

if EVENT == 408 then
   SelectMsg(UID, 2, 320, 3163, NPC, 10, 168);
end

if EVENT == 570 then
   SelectMsg(UID, 1, 322, 170, NPC, 24, 571);
end

if EVENT == 571 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3342);
end

if EVENT == 572 then
   SelectMsg(UID, 1, 322, 172, NPC, 24, 571);
end

if EVENT == 500 then
   SelectMsg(UID, 2, 322, 3168, NPC,  3012, 501, 13, 168);
end

if EVENT == 9265 then
   SelectMsg(UID, 2, 890, 3168, NPC,  3012, 9266, 13, 168);
end

local MonsterSub = 0;

if EVENT == 9266 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 890, 3169, NPC, 22, 9267, 23, 508);
   else
      SelectMsg(UID, 2, 890, 173, NPC, 10, 168);
   end
end

if EVENT == 9267 then
   SelectMsg(UID, 2, 890, 3170, NPC, 10, 168);
   SaveEvent(UID, 5303);
end

if EVENT == 9273 then
   SelectMsg(UID, 2, 890, 3171, NPC, 10, 168);
end

if EVENT == 501 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 322, 3169, NPC, 22, 502, 23, 508);
   else
      SelectMsg(UID, 2, 322, 173, NPC, 10, 168);
   end
end

if EVENT == 502 then
   SelectMsg(UID, 2, 320, 3170, NPC, 10, 168);
   SaveEvent(UID, 3343);
end

if EVENT == 503 then
   SaveEvent(UID, 3345);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 322, 3173, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 322, 3174, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 505 then
   MonsterCount  = CountMonsterQuestSub(UID,322, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 322, 3172, NPC, 10, 506);
   else
      SelectMsg(UID, 4, 322, 3175, NPC, 10, 507, 27, 506);
   end
end

if EVENT == 506 then
   ShowMap(UID, 325);
end

if EVENT == 507 then
   SaveEvent(UID, 3344);
   ExpChange(UID, 1500)
end

if EVENT == 508 then
   SelectMsg(UID, 2, 320, 3171, NPC, 10, 168);
end

if EVENT == 670 then
   SelectMsg(UID, 1, 323, 3176, NPC, 3013, 3000);
end

if EVENT == 3000 then
   SelectMsg(UID, 1, 323, 3178, NPC, 3014, 3003);
end

local MonsterSub = 0;

if EVENT == 3003 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 1, 323, 3180, NPC, 22, 671, 23,3005);
   else
      SelectMsg(UID, 1, 323, 3191, NPC, 10, 168);
   end
end

if EVENT == 671 then
   SaveEvent(UID, 3353);
   SelectMsg(UID, 1, 323, 3182, NPC, 10, 168);
end

if EVENT == 672 then
   SelectMsg(UID, 1, 323, 3177, NPC, 24, 3002);
end

if EVENT == 3002 then
   SelectMsg(UID, 1, 323, 3179, NPC, 3014, 3004);
end

local MonsterSub = 0;

if EVENT == 3004 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 1, 323, 3181, NPC, 22, 3007, 23, 3006);
   else
      SelectMsg(UID, 1, 323, 3192, NPC, 10, 168);
   end
end

if EVENT == 3007 then
   SaveEvent(UID, 3353);
   SelectMsg(UID, 1, 323, 3183, NPC, 10, 168);
end

if EVENT == 3005 then
   SelectMsg(UID, 1, 323, 3184, NPC, 10, 168);
end

if EVENT == 3006 then
   SelectMsg(UID, 1, 323, 3185, NPC, 10, 168);
end

if EVENT == 600 then
   SelectMsg(UID, 2, 323, 3193, NPC, 3017, 601);
end

local MonsterSub = 0;

if EVENT == 601 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 323, 3195, NPC, 3018, 602, 3019, 608);
   else
      SelectMsg(UID, 2, 323, 3197, NPC, 3001, 168);
   end
end

if EVENT == 602 then
   SelectMsg(UID, 2, 320, 3193, NPC, 10, 168);
   SaveEvent(UID, 3353);
end

if EVENT == 603 then
   SaveEvent(UID, 3355);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 323, 3187, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 323, 3188, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 605 then
   MonsterCount  = CountMonsterQuestSub(UID, 323, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 323, 3197, NPC, 10, 606);
   else
      SelectMsg(UID, 4, 323, 3189, NPC, 10, 607, 27, 168);
   end
end

if EVENT == 606 then
   ShowMap(UID, 326);
end

if EVENT == 607 then
   SaveEvent(UID, 3354);
   ExpChange(UID, 2084)
   SelectMsg(UID, 2, 323, 3190, NPC, 10, 168); 
end

if EVENT == 608 then
   SelectMsg(UID, 2, 320, 3197, NPC, 10, 168);
end

if EVENT == 770 then
   SelectMsg(UID, 1, 324, 3798, NPC, 10, 771);
end

if EVENT == 771 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3362);
end

if EVENT == 772 then
   SelectMsg(UID, 1, 324, 3799, NPC, 10, 771);
end

if EVENT == 700 then
   SelectMsg(UID, 2, 324, 3800, NPC,  3012, 701, 13, 168);
end

local MonsterSub = 0;

if EVENT == 701 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 324, 3801, NPC, 22, 702, 23, 708);
   else
      SelectMsg(UID, 2, 324, 173, NPC, 10, 168);
   end
end

if EVENT == 702 then
   SelectMsg(UID, 2, 320, 3802, NPC, 10, 168);
   SaveEvent(UID, 3363);
end

if EVENT == 703 then
   SaveEvent(UID, 3365);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 324, 3805, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 324, 3806, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 705 then
   MonsterCount  = CountMonsterQuestSub(UID, 324, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 324, 3804, NPC, 10, 706);
   else
      SelectMsg(UID, 4, 324, 3807, NPC, 10, 707, 27, 706);
   end
end

if EVENT == 706 then
   ShowMap(UID, 12);
end

if EVENT == 707 then
   SaveEvent(UID, 3364);
   ExpChange(UID, 2084)
end

if EVENT == 708 then
   SelectMsg(UID, 2, 320, 3803, NPC, 10, 168);
end

if EVENT == 870 then
   SelectMsg(UID, 1, 325, 170, NPC, 24, 871);
end

if EVENT == 871 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3372);
end

if EVENT == 872 then
   SelectMsg(UID, 1, 325, 172, NPC, 24, 871);
end

if EVENT == 800 then
   SelectMsg(UID, 2, 325, 3808, NPC,  3012, 801, 13, 168);
end

local MonsterSub = 0;

if EVENT == 801 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 325, 3809, NPC, 22, 802, 23, 808);
   else
      SelectMsg(UID, 2, 325, 173, NPC, 10, 168);
   end
end

if EVENT == 802 then
   SelectMsg(UID, 2, 320, 3810, NPC, 10, 168);
   SaveEvent(UID, 3373);
end

if EVENT == 803 then
   SaveEvent(UID, 3375);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 325, 3813, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 325, 3814, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 805 then
   MonsterCount  = CountMonsterQuestSub(UID, 325, 1);
   if MonsterCount < 15 then
      SelectMsg(UID, 2, 325, 3812, NPC, 10, 806);
   else
      SelectMsg(UID, 4, 325, 3815, NPC, 10, 807, 27, 806);
   end
end

if EVENT == 806 then
   ShowMap(UID, 325);
end

if EVENT == 807 then
   SaveEvent(UID, 3374);
   ExpChange(UID, 4584)
end

if EVENT == 808 then
   SelectMsg(UID, 2, 320, 3811, NPC, 10, 168);
end

if EVENT == 970 then
   SelectMsg(UID, 1, 326, 170, NPC, 24, 971);
end

if EVENT == 971 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3382);
end

if EVENT == 972 then
   SelectMsg(UID, 1, 326, 172, NPC, 24, 971);
end

if EVENT == 900 then
   SelectMsg(UID, 2, 326, 3816, NPC,  3012, 901, 13, 168);
end

local MonsterSub = 0;

if EVENT == 901 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 326, 3817, NPC, 22, 902, 23, 908);
   else
      SelectMsg(UID, 2, 326, 173, NPC, 10, 168);
   end
end

if EVENT == 902 then
   SelectMsg(UID, 2, 320, 3818, NPC, 10, 168);
   SaveEvent(UID, 3383);
end

if EVENT == 903 then
   SaveEvent(UID, 3385);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 326, 3821, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 326, 3822, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 905 then
   MonsterCount  = CountMonsterQuestSub(UID, 326, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 326, 3820, NPC, 10, 906);
   else
      SelectMsg(UID, 4, 326, 3823, NPC, 10, 907, 27, 906);
   end
end

if EVENT == 906 then
   ShowMap(UID, 60);
end

local Check;

if EVENT == 907 then
   Check = CheckExchange(UID, 326)
   if Check ==1 then
      RunExchange(UID, 326);
      SaveEvent(UID, 3384);
   else
      Ret = 1;	
   end	 
end

if EVENT == 908 then
   SelectMsg(UID, 2, 320, 3819, NPC, 10, 168);
end

if EVENT == 1070 then
   SelectMsg(UID, 1, 327, 3827, NPC, 3005, 1080);
end

if EVENT == 1080 then
   SelectMsg(UID, 1, 327, 3829, NPC, 3013, 1081);
end

if EVENT == 1081 then
   SelectMsg(UID, 1, 327, 3831, NPC, 3014, 1082);
end

if EVENT == 1082 then
   SelectMsg(UID, 1, 327, 3833, NPC, 3003, 1071);
end

if EVENT == 1071 then
   ShowMap(UID, 4);
   SaveEvent(UID, 3392);
end

if EVENT == 1072 then
   SelectMsg(UID, 1, 327, 3828, NPC, 3005, 1083);
end

if EVENT == 1083 then
   SelectMsg(UID, 1, 327, 3830, NPC, 3013, 1084);
end

if EVENT == 1084 then
   SelectMsg(UID, 1, 327, 3832, NPC, 3014, 1085);
end

if EVENT == 1085 then
   SelectMsg(UID, 1, 327, 3834, NPC, 3003, 1071);
end

if EVENT == 1000 then
   SelectMsg(UID, 2, 327, 3835, NPC,  3012, 1001, 13, 168);
end

local MonsterSub = 0;

if EVENT == 1001 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, 327, 3836, NPC, 22, 1002, 23, 1008);
   else
      SelectMsg(UID, 2, 327, 173, NPC, 10, 168);
   end
end

if EVENT == 1002 then
   SelectMsg(UID, 2, 320, 3838, NPC, 10, 168);
   SaveEvent(UID, 3393);
end

if EVENT == 1003 then
   SaveEvent(UID, 3395);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 327, 3841, NPC, 14, 168);
   else
      SelectMsg(UID, 1, 327, 3842, NPC, 14, 168);
   end
end

local MonsterCount = 0;

if EVENT == 1005 then
   MonsterCount  = CountMonsterQuestSub(UID,327, 1);
   if MonsterCount < 10 then
      SelectMsg(UID, 2, 327, 3840, NPC, 10, 1006);
   else
      SelectMsg(UID, 4, 327, 3843, NPC, 10, 1007, 27, 1006);
   end
end

if EVENT == 1006 then
   ShowMap(UID, 35);
end

local Check;

if EVENT == 1007 then
   Check = CheckExchange(UID, 400)
   if Check == 1 then
      RunExchange(UID, 327);
      SaveEvent(UID, 3394);
      SelectMsg(UID, 2, 320, 3844, NPC, 10, 168);
   else
      Ret = 1;	
   end	 
end

if EVENT == 1008 then
   SelectMsg(UID, 2, 320, 3839, NPC, 10, 168);
end
