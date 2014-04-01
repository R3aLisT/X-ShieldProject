local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 13009;

if EVENT == 3000 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
      SelectMsg(UID, 2, -1, 1186, NPC, 10, 3001);
      Ret = 1;
   elseif QuestNum > 1 and  QuestNum < 100 then
      NpcMsg(UID, 1187, NPC)
   else
      EVENT = QuestNum
   end
end

if EVENT == 3001 then
   Ret = 1;
end


if EVENT == 3002 then
   SelectMsg(UID, 1, 11, 1188, NPC, 28, 3003);
end

if EVENT == 3003 then
   ShowMap(UID, 6);
   SaveEvent(UID, 3033);
end

if EVENT == 3004 then
   SelectMsg(UID, 1, 11, 1189, NPC, 10, 3003);
end


if EVENT == 3005 then
   SelectMsg(UID, 2, 11, 1190, NPC, 10, 3006);
end

if EVENT == 3006 then
   SelectMsg(UID, 4, 11, 1191, NPC, 22, 3007, 23, 3001);
end

if EVENT == 3007 then
   ZoneChange(UID, 51, 150, 150)
   SaveEvent(UID, 3034);
end

local NATION = 0;

if EVENT == 3008 then
   SaveEvent(UID, 3036);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 11, 1192, NPC, 32, 3009);
   else
      SelectMsg(UID, 1, 11, 1193, NPC, 21, 3009);
   end
end

if EVENT == 3009 then
   ShowMap(UID, 6);
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 3010 then
   ITEM_COUNT = HowmuchItem(UID, 910038000);
   if ITEM_COUNT <= 9 then
      SelectMsg(UID, 2, 11, 1194, NPC, 18, 3011);
   else
      SelectMsg(UID, 2, 11, 1195, NPC, 4006, 3012, 23, 3001);
   end
end

if EVENT == 3011 then
   ZoneChange(UID, 51, 150, 150)
end

local Check;

if EVENT == 3012 then
   Check = CheckExchange(UID, 304)
   if Check == 1 then
      RunExchange(UID, 304);
      SaveEvent(UID, 3035);
   else
      Ret = 1;	
   end	 
end

local savenum = 600;
local savenum1 = 601;
local savenum2 = 602;

if EVENT == 6000 then
   NATION = CheckNation(UID);
   SaveEvent(UID, 6002);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 6000, NPC, 28, 6001);
   else
      SelectMsg(UID, 1, savenum, 6001, NPC, 28, 6001);
   end
end

if EVENT == 6001 then
   ShowMap(UID,6);
end

local Level = 0;

if EVENT == 6014 then
   Level = CheckLevel(UID);
   if Level >= 5 and Level <= 9 then
      SelectMsg(UID, 2, savenum, 6002, NPC, 6005, 6002);
   else 
      SelectMsg(UID, 2, savenum, 1311, NPC, 10, 3001);
   end
end

if EVENT == 6002 then
   SelectMsg(UID, 4, savenum, 6003, NPC, 22, 6003, 23, 3001);
end

local WATING = 0;

if EVENT == 6003 then
   WATING = CheckWaiting(1);  -- 1:Begginer  2:Medium  3:Higher
   if WATING == 1 then
      SelectMsg(UID, 2, savenum, 6004, NPC, 10, 3001);
   end
   SetCampaignGrade(UID, 1, 3, 9, 6004, "13009_Kuger.lua");  -- 1:Begginer  2:Medium  3:Higher, level limitation 3 ~ 9
   SelectMsg(UID, 8, savenum, 6005, NPC, 6003, 3001, 6004, 3001);
   -- 8 is Campaign Invitation Message...
end
   
if EVENT == 6004 then
   SetClearType(1, 81, 1, 1636, 20, 1001, 6008, UID, "13009_Kuger.lua");  -- complete condition setting 1:Boss Mob Eliminate, 12001: Mob ID
--   SetClearType(UID, 2, 30, 30, 101, 4010);  -- complete condition setting 2:Time Endure, 30:Endure time (minutes)
--   SetClearType(UID, 3, 128128, 20, 101, 4010); -- completecondition setting 3:Region Arrival 128128:position cordinate
end

if EVENT == 6005 then   -- A region passed  UID is contained zonenumber... broadcasting packets
   SelectMsg(UID, 6, 8101, 6006, NPC, 10, 3001);
end

if EVENT == 6006 then   -- B region passed
   SelectMsg(UID, 6, 8102, 6007, NPC, 10, 3001);
end

if EVENT == 6007 then   -- C region passed
   SelectMsg(UID, 6, 8103, 6008, NPC, 10, 3001);
end

--if EVENT == 6008 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
--   GiveItem(UID, 910117000, 1);		
--   SaveEvent(UID, 6004);
--   SelectMsg(UID, 2, savenum1, 6012, NPC, 4006, 7200, 27, 3001); 
--end

local Check;

if EVENT == 6008 then
   GiveItem(UID, 910117000, 1);		
   Check = CheckExchange(UID, 86)
   if Check ==1 then
      RunExchange(UID, 86);
   else
      Ret = 1;	
   end	 
   SaveEvent(UID, 6004);
end

local quest_ITEM_COUNT = 0;

if EVENT == 6009 then
   quest_ITEM_COUNT = HowmuchItem(UID, 910117000);
   if quest_ITEM_COUNT == 1 then
      NATION = CheckNation(UID);
      SaveEvent(UID, 6005);
      if NATION == 1 then
         SelectMsg(UID, 1, savenum1, 6009, NPC, 28, 6010);
      else
         SelectMsg(UID, 1, savenum1, 6010, NPC, 28, 6010);
      end
   end
end

if EVENT == 6010 then
   ShowMap(UID, 53);
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 6011 then
   ITEM_COUNT = HowmuchItem(UID, 910117000);
   if ITEM_COUNT <= 0 then
      SelectMsg(UID, 2, savenum1, 6011, NPC, 18, 6012);
   else
      --SaveEvent(UID, 6004);
      SelectMsg(UID, 2, savenum1, 6012, NPC, 4006, 6013, 27, 3001);
   end
end

if EVENT == 6012 then
-- SaveEvent(UID, 6002);
   ShowMap(UID, 53);
end

local Check;

if EVENT == 6013 then
   Check = CheckExchange(UID, 86)
   if Check ==1 then
      RunExchange(UID, 86);
   else
      Ret = 1;	
   end	 
end

if EVENT == 6060 then
   SelectMsg(UID, 1, 7, 6014, NPC, 28, 6061);
end

if EVENT == 6061 then
   ShowMap(UID, 6);
   SaveEvent(UID, 6023);
end

if EVENT == 6062 then
   SelectMsg(UID, 1, 7, 6015, NPC, 10, 6061);
end


if EVENT == 6063 then
   SelectMsg(UID, 2, 7, 6016, NPC, 10, 6064);
end

local Level ;

if EVENT == 6064 then
   Level = CheckLevel(UID)
   if Level < 21 then 
      SelectMsg(UID, 4, 7, 6017, NPC, 22, 6065, 23, 3001);
   else
      SelectMsg(UID, 2, 7, 6018, NPC, 10, 3001);
   end
end

if EVENT == 6065 then
   ZoneChange(UID, 52, 150, 150)
   SaveEvent(UID, 6024);
end

local NATION = 0;

if EVENT == 6066 then
   SaveEvent(UID, 6026);
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, 7, 6019, NPC, 32, 6067);
   else
      SelectMsg(UID, 1, 7, 6020, NPC, 21, 6067);
   end
end

if EVENT == 6067 then
   ShowMap(UID, 6);
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;

if EVENT == 6068 then
   ITEM_COUNT = HowmuchItem(UID, 910039000);
   if ITEM_COUNT <= 9 then
      SelectMsg(UID, 2, 7, 6021, NPC, 18, 6069);
   else
      SelectMsg(UID, 2, 7, 6022, NPC, 4006, 6070, 27, 3001);
   end
end

if EVENT == 6069 then
   ZoneChange(UID, 52, 150, 150)
end

local Check;

if EVENT == 6070 then
   Check = CheckExchange(UID, 600)
   if Check == 1 then
      RunExchange(UID, 600);
      SaveEvent(UID, 6025);
   else
      Ret = 1;	
   end	 
end

if EVENT == 6080 then
   SelectMsg(UID, 1, 602, 6030, NPC, 28, 6061);
end

if EVENT == 6081 then
   ShowMap(UID, 6);
   SaveEvent(UID, 6033);
end

if EVENT == 6082 then
   SelectMsg(UID, 1, 602, 6031, NPC, 10, 6081);
end

if EVENT == 6083 then
   SelectMsg(UID, 2, 602, 6032, NPC, 10, 6084);
end

local Level ;

if EVENT == 6084 then
   Level = CheckLevel(UID)
   if Level > 1 and Level < 39 then  
      SelectMsg(UID, 2, 602, 6033, NPC, 10, 3001);
   elseif Level == 40 then
      SelectMsg(UID, 2, 602, 6034, NPC, 59, 6085, 60, 3001);
   else
      SelectMsg(UID, 2, 602, 6035, NPC, 10, 3001);
   end
end

if EVENT == 6085 then
   ZoneChange(UID, 53, 150, 150)
   SaveEvent(UID, 6034);
end

local NATION = 0;
local Level = 0 ;

if EVENT == 6086 then
   Level = CheckLevel(UID)
   if Level == 41 then
      SaveEvent(UID, 6035);
      NATION = CheckNation(UID);
      if NATION == 1 then
         SelectMsg(UID, 1, 602, 6036, NPC, 61, 3001);
      else
         SelectMsg(UID, 1, 602, 6037, NPC, 62, 3001);
      end
   end
end

local savenum = 444;

if EVENT == 630 then
   Class = CheckClass (UID);
   if Class == 1 or Class == 5 or Class == 6 then
      SaveEvent(UID, 4377);
      EVENT = 631
   elseif Class == 2 or Class == 7 or Class == 8 then
       SaveEvent(UID, 4382);
       EVENT = 631
   elseif Class == 3 or Class == 9 or Class == 10 then
       SaveEvent(UID, 4387);
       EVENT = 631
   elseif Class == 4 or Class == 11 or Class == 12 then
       SaveEvent(UID, 4392);
       EVENT = 631
   end
end

if EVENT == 631 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4635, NPC, 4080, 193);
   else
      SelectMsg(UID, 1, savenum, 4636, NPC, 4080, 193);
   end
end

local MonsterSub = 0;

if EVENT == 632 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
      SelectMsg(UID, 4, savenum, 4637, NPC, 22, 633, 23, 3001);
   else
      SelectMsg(UID, 2, savenum, 4638, NPC, 10, 3001);
   end
end



if EVENT == 633 then
   Class = CheckClass (UID);
    if Class == 1 or Class == 5 or Class == 6 then
       SaveEvent(UID, 4378);
    elseif Class == 2 or Class == 7 or Class == 8 then
       SaveEvent(UID, 4383);
    elseif Class == 3 or Class == 9 or Class == 10 then
       SaveEvent(UID, 4388);
    elseif Class == 4 or Class == 11 or Class == 12 then
       SaveEvent(UID, 4393);
   end
end

if EVENT == 280 then
   Class = CheckClass (UID);
   if Class == 1 or Class == 5 or Class == 6 then
      SaveEvent(UID, 4380);
      EVENT = 281
   elseif Class == 2 or Class == 7 or Class == 8 then
      SaveEvent(UID, 4385);
      EVENT = 281
   elseif Class == 3 or Class == 9 or Class == 10 then
      SaveEvent(UID, 4390);
      EVENT = 281
   elseif Class == 4 or Class == 11 or Class == 12 then
      SaveEvent(UID, 4395);
      EVENT = 281
   end
end

if EVENT == 281 then
   NATION = CheckNation(UID);
   if NATION == 1 then
      SelectMsg(UID, 1, savenum, 4639, NPC, 4080, 193);
   else
      SelectMsg(UID, 1, savenum, 4640, NPC, 4080, 193);
   end
end

local MonsterCount01 = 0;
local MonsterCount02 = 0;
local MonsterCount03 = 0;
local MonsterCount04 = 0;


if EVENT == 636 then
   MonsterCount01  = CountMonsterQuestSub(UID, 1);
   if MonsterCount01  > 0 then
      Class = CheckClass (UID);
      if Class == 2 or Class == 7 or Class == 8 then
         SelectMsg(UID, 5, savenum, 4642, NPC, 4161, 637, 4162, 193);
      else
         SelectMsg(UID, 4, savenum, 4642, NPC, 4161, 637, 4162, 193);
      end
   else
      SelectMsg(UID, 2, savenum, 4641, NPC, 10, 193);
   end
end

local Check;

if EVENT == 637 then
   Class = CheckClass (UID);
   if Class == 1 or Class == 5 or Class == 6 then
      Check = CheckExchange(UID, 501)
      if Check ==1 then        
         RunExchange(UID, 501);
         SaveEvent(UID, 4379);
         ShowEffect(UID, 300391)
      else
         Ret = 1; 
      end  
   elseif Class == 2 or Class == 7 or Class == 8 then
      Check = CheckExchange(UID, 502)
      if Check ==1 then        
         RunSelectExchange(UID, 502);
         SaveEvent(UID, 4384);
         ShowEffect(UID, 300391)
      else
         Ret = 1; 
      end  
   elseif Class == 3 or Class == 9 or Class == 10 then
      Check = CheckExchange(UID, 503)
      if Check ==1 then        
         RunExchange(UID, 503);
         SaveEvent(UID, 4389);
         ShowEffect(UID, 300391)
      else
         Ret = 1; 
      end  
   elseif Class == 4 or Class == 11 or Class == 12 then
      Check = CheckExchange(UID, 504)
      if Check ==1 then        
         RunExchange(UID, 504);
         SaveEvent(UID, 4394);
         ShowEffect(UID, 300391)
      else
         Ret = 1; 
      end  
   end	 
end
