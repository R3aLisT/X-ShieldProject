
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 21510;
local Level = 0;

if EVENT == 190 then
	Level = CheckLevel(UID);
	if Level < 45 then
	   SelectMsg(UID, 2, 8, 664, NPC, 10, 193);
    elseif Level == 45 then
	   EVENT = 200
	elseif Level >= 46 and Level < 50 then
	   EVENT = 6092
	elseif Level == 50 then
	   EVENT = 532
    elseif Level > 50 then
	   SelectMsg(UID, 2, 8, 4430, NPC, 10, 193);
	end
end

if EVENT == 193 then
    Ret = 1;
end

if EVENT == 200 then
   SelectMsg(UID, 2, 8, 667, NPC, 10, 201);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 8, 668, NPC, 22, 202, 23, 193);
end

local ItemD=0;
local ItemE=0;
local ItemF=0;

if EVENT == 202 then
    ItemD = HowmuchItem(UID, 910040000); 
    ItemE = HowmuchItem(UID, 910041000);
	ItemF = HowmuchItem(UID, 910044000);
	if ItemF == 0 then
	Check = isRoomForItem(UID, 910041000);
    if Check == -1 then
    SelectMsg(UID, 2, -1, 832, NPC ,27);
	else
	GiveItem(UID, 910044000, 1)
	end
	end
    if ItemD < 3 then 
       SelectMsg(UID, 2, 8, 671, NPC, 18, 213);
    elseif ItemE < 1 then
       SelectMsg(UID, 2, 8, 672, NPC, 18, 213);
    elseif ItemD > 2 and ItemE > 0 then
       SelectMsg(UID, 4, 8, 673, NPC, 41, 214, 27, 193);
	end
end

if EVENT == 213 then
   ShowMap(UID, 40);
end

if EVENT == 214 then
   RobItem(UID, 910040000, 3)
   RobItem(UID, 910041000, 1)
   RobItem(UID, 910044000, 1)
   ExpChange(UID,1000000)
   GoldGain(UID, 100000)
   SaveEvent(UID, 441);
end

if EVENT == 532 then-- 7 Keys Quest
    SelectMsg(UID, 4, 9, 4296, NPC, 22, 533, 23, 534);
end

local ItemC
local ItemA
local ItemB

if EVENT == 533 then
   ItemC = HowmuchItem(UID, 910050000);
   ItemA = HowmuchItem(UID, 910057000);
   if ItemC <= 0 then
   Check = isRoomForItem(UID, 910041000);
   if Check == -1 then
   SelectMsg(UID, 2, -1, 832, NPC ,27);
   else
    SaveEvent(UID, 4211);
    GiveItem(UID, 910050000, 1);
	end
   elseif ItemA > 0 and ItemC > 0 then
    EVENT = 536
   else
    SelectMsg(UID, 2, 9, 4298, NPC, 10, 193);
   end
end

if EVENT == 534 then
   SaveEvent(UID, 4214);
   RobItem(UID, 910050000, 1)
end

if EVENT == 536 then
   SelectMsg(UID, 4, 9, 4297, NPC, 4172, 537, 4173, 193);
end 

if EVENT == 537 then
   ExpChange(UID , 15218948)
   RobItem(UID,910057000,1)
   RobItem(UID,910050000,1)
   SaveEvent(UID, 6082);
end

------------------------------------------------------------------------
-- SANJUK Campaign Troops Start --- 46 Quest
------------------------------------------------------------------------

local savenum = 603;

if EVENT == 6092 then
   SelectMsg(UID, 2, savenum, 6041, NPC, 6007, 6093, 6008, 7002);
end

if EVENT == 6093 then
    SelectMsg(UID, 4, savenum, 6043, NPC, 22, 6094, 23, 193);
end


local Check3 = 0;

if EVENT == 6094 then
   Check3 = isInParty(UID);
   if Check3 then
	  ZoneChangeParty(UID , 81 , 202 ,199);
   else
      SelectMsg(UID, 2, savenum, 6044, NPC, 10, 193);
   end
end

--if EVENT == 6095 then
--   SetClearType(2, 82, 1, 3500, 20, 2001, 6099);  -- complete condition setting 1:Boss Mob Eliminate, 12001: Mob ID
--   SetClearType(UID, 2, 30, 30, 101, 4010);  -- complete condition setting 2:Time Endure, 30:Endure time (minutes)
--   SetClearType(UID, 3, 128128, 20, 101, 4010); -- completecondition setting 3:Region Arrival 128128:position cordinate
--end

if EVENT == 6096 then   -- A region passed  UID is contained zonenumber... broadcasting packets
  SelectMsg(UID, 6, 8201, 6059, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--/*��ü UI ����
if EVENT == 6097 then   -- B region passed
  SelectMsg(UID, 6, 8202, 6060, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 6098 then   -- C region passed
   SelectMsg(UID, 6, 8203, 6061, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 6099 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910135000, 1);		
       SaveEvent(UID, 6041);
          EVENT = 7204
 end


if EVENT == 6099 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910135000, 1);		
  SaveEvent(UID, 6080);
end

local ITEM_COUNT=0;
local ITEM_COUNT1=0;

if EVENT == 7002 then
   ITEM_COUNT = HowmuchItem(UID, 910135000);   
   ITEM_COUNT1 = HowmuchItem(UID, 910138000);
   if  ITEM_COUNT <= 0 then
      SelectMsg(UID, 2, savenum1, 6048, NPC, 32, 193);
   end
   if  ITEM_COUNT1 <= 2 then
      SelectMsg(UID, 2, savenum1, 6048, NPC, 32, 193);
   end
   if ITEM_COUNT  > 0 and ITEM_COUNT1 > 2 then
      EVENT = 7004
   end
end

if EVENT == 7004 then
   Class = CheckClass (UID);
       if Class == 1 or Class == 5 or Class == 6 then
       EVENT = 7005
       elseif Class == 2 or Class == 7 or Class == 8 then
       EVENT = 7006
       elseif Class == 3 or Class == 9 or Class == 10 then
       EVENT = 7007
       elseif Class == 4 or Class == 11 or Class == 12 then
       EVENT = 7008
       end
end


if EVENT == 7005 then
   GoldGain(UID, 100000)
   ExpChange(UID, 1000000)
   RobItem(UID, 910135000, 1)
   RobItem(UID , 910138000, 3)
   SaveEvent(UID, 4210);
end 

if EVENT == 7006 then
   GoldGain(UID, 100000)
   ExpChange(UID, 1000000)
   RobItem(UID, 910135000, 1)
   RobItem(UID , 910138000, 3)
   SaveEvent(UID, 4210); 
end


if EVENT == 7007 then
   GoldGain(UID, 100000)
   ExpChange(UID, 1000000)
   RobItem(UID, 910135000, 1)
   RobItem(UID , 910138000, 3)
   SaveEvent(UID, 4210);
end


if EVENT == 7008 then
   GoldGain(UID, 100000)
   ExpChange(UID, 1000000)
   RobItem(UID, 910135000, 1)
   RobItem(UID, 910138000, 3)
   SaveEvent(UID, 4212); 
end



--San-juck captian start

local savenum = 607;
local savenum1 = 608;


if EVENT == 7010 then
       SaveEvent(UID, 6071);
   NATION = CheckNation(UID);
   if NATION == 1 then --ī罺 � 
   SelectMsg(UID, 1, savenum, 6080, NPC, 28, 7011, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �϶
   SelectMsg(UID, 1, savenum, 6081, NPC, 28, 7011, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 7011 then
   ShowMap(UID,39);
end

------------------------------------------------------------------------
-- SANJUK Campaign Troops Start
------------------------------------------------------------------------

local Level = 0;
if EVENT == 7012 then
   Level = CheckLevel(UID);
   if Level >= 60 and Level <= 80 then
   	SelectMsg(UID, 2, savenum, 6051, NPC, 6009, 7013, 6008, 7022, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else 
	SelectMsg(UID, 2, savenum, 6052, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 7013 then
   SelectMsg(UID, 4, savenum, 6053, NPC, 22, 7014, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local WATING = 0;
local PARTYCOUNT = 0;
if EVENT == 7014 then
--   WATING = CheckWaiting(3);  -- 1:Begginer  2:Medium  3:Higher
--   if WATING == 1 then
--      SelectMsg(UID, 2, savenum, 6054, NPC, 10, 3001, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
--      return;
--   end
--   SaveEvent(UID, 6003);
   --ī�Ͱ ����� ����� 
--   SetCampaignGrade(UID, 3, 60, 80, 7015);  -- 1:Begginer  2:Medium  3:Higher, level limitation 40 ~ 50
--   SelectMsg(UID, 8, savenum, 6055, NPC, 6003, 3001, 6004, 3001, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   -- 8 is Campaign Invitation Message...
   PARTYCOUNT = PartyCountMembers(UID, 0);
   if PARTYCOUNT < 1 then
	SelectMsg(UID, 2, savenum, 6054, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
   if PARTYCOUNT > 1 then
	SetClearType(4, 83, 1, 4800, 30, 3001, 7019, UID, "21510_Forkwain.lua");  -- complete condition setting 1:Boss Mob Eliminate, 12001: Mob ID
   end

end
   
--if EVENT == 7015 then
--   SetClearType(3, 83, 1, 4800, 30, 3001, 7019);  -- complete condition setting 1:Boss Mob Eliminate, 12001: Mob ID
--   SetClearType(UID, 2, 30, 30, 101, 4010);  -- complete condition setting 2:Time Endure, 30:Endure time (minutes)
--   SetClearType(UID, 3, 128128, 20, 101, 4010); -- completecondition setting 3:Region Arrival 128128:position cordinate
--end
if EVENT == 7026 then   -- A region passed  UID is contained zonenumber... broadcasting packets
   SelectMsg(UID, 6, 8304, 6084, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 7016 then   -- A region passed  UID is contained zonenumber... broadcasting packets
   SelectMsg(UID, 6, 8301, 6062, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--/*�ü UI f�
if EVENT == 7017 then   -- B region passed
  SelectMsg(UID, 6, 8302, 6063, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 7018 then   -- C region passed
   SelectMsg(UID, 6, 8303, 6064, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


local ITEM_COUNT=0;
local ITEM_COUNT1=0;
local RUN_EXCHANGE ;--��ü ��� ��

local Check;
if EVENT == 7019 then   -- Quest Completed  WARNINIG!!! UID is contained zonenumber... broadcasting packets
     GiveItem(UID, 910136000, 1);		
        RunExchange(UID, 98)
      SaveEvent(UID, 6073);
end




--�ü UIf�*/
------------------------------------------------------------------------
-- SANJUK Campaign Troops End
------------------------------------------------------------------------

---------� ���

local quest_ITEM_COUNT=0;
if EVENT == 7020 then
   quest_ITEM_COUNT = HowmuchItem(UID, 910136000);
if quest_ITEM_COUNT == 1 then
   NATION = CheckNation(UID);
   if NATION == 1 then --ī罺 � 
   SelectMsg(UID, 1, savenum1, 6082, NPC, 28, 7021, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �϶
   SelectMsg(UID, 1, savenum1, 6083, NPC, 28, 7021, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
  end
end

if EVENT == 7021 then
      ShowMap(UID, 6);
end

--1, 3
local ITEM_COUNT=0;
local ITEM_COUNT1=0;
local RUN_EXCHANGE ;--��ü ��� ��

if EVENT == 7022 then
   ITEM_COUNT1 = HowmuchItem(UID, 910137000);
   ITEM_COUNT = HowmuchItem(UID, 910136000);
   if  ITEM_COUNT <= 0 then -- ��;
      SelectMsg(UID, 2, savenum1, 6056, NPC, 18, 7023, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
   if  ITEM_COUNT1 <= 2 then -- ��;
      SelectMsg(UID, 2, savenum1, 6056, NPC, 18, 7023, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
   if ITEM_COUNT  > 0 and  ITEM_COUNT1 > 2 then-- ���;
      --SaveEvent(UID, 6004);
      SelectMsg(UID, 2, savenum1, 6057, NPC, 4006, 7025, 27, 3001, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 7023 then
--   SaveEvent(UID, 6002);
   ShowMap(UID, 39);
end


local Check;
if EVENT == 7025 then
        Check = CheckExchange(UID, 98)
        if  Check ==1 then
        RunExchange(UID, 98)
        else
        Ret = 1;	
        end	 
end

return Ret;
