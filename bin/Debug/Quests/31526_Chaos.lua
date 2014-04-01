local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 31526;


if EVENT == 100 then
   SelectMsg(UID, 3, -1, 9264, NPC, 7143, 3001, 7139, 3002, 7116, 3003, 7118, 3005, 7117, 3004);
end

if EVENT == 3001 then
   NpcMsg(UID, NPC) -- Guide
end

if EVENT == 3002 then
   IsTakeToday = GetUserDailyOp(UID, 1);
   if IsTakeToday == 1 then
   GiveItem(UID, 910246000, 1);
   else
   SelectMsg(UID, 2, -1, 9280, NPC, 10, 241);
   end
end

if EVENT == 3003 then
   ITEM = HowmuchItem(UID, 810150000);
   if ITEM > 0 then
   SelectMsg(UID, 2, -1, 9265, NPC, 4006, 200, 27, 241);
   else
   SelectMsg(UID, 2, -1, 9266, NPC, 32, 241);
   end
end

if EVENT == 200 then
   SelectMsg(UID, 2, -1, 9267, NPC, 65, 201, 66, 241);
end

if EVENT == 201 then
   RobItem(UID, 810150000, 1)
   GiveItem(UID, 910246000, 1)
   SelectMsg(UID, 2, -1, 9268, NPC, 20, 241);
end   

if EVENT == 3005 then
   ITEMA = HowmuchItem(UID, 900184000);
   if ITEMA > 0 then
   SelectMsg(UID, 2, -1, 9269, NPC, 7119, 202, 7120, 204);
   else
   SelectMsg(UID, 2, -1, 9276, NPC, 10, 241);
   end
end

if EVENT == 202 then
   ITEMB = HowmuchItem(UID, 810160000);
   if ITEMB > 0 then
   SelectMsg(UID, 2, -1, 9271, NPC, 4006, 203, 27, 241);
   else
   SelectMsg(UID, 2, -1, 9270, NPC, 10, 241);
   end
end

if EVENT == 203 then
   RobItem(UID, 900184000, 1)
   RobItem(UID, 810160000, 1)
   GiveItem(UID, 900180669, 1)
   SelectMsg(UID, 2, -1, 9273, NPC, 20, 241);   
end

if EVENT == 204 then
   ITEMC = HowmuchItem(UID, 900000000);
   Level = CheckLevel(UID);
   if ITEMC > Level * 6000 then
   SelectMsg(UID, 2, -1, 9275, NPC, 4006, 205, 27, 241);
   else
   SelectMsg(UID, 2, -1, 9274, NPC, 10, 241);
   end   
end

if EVENT == 205 then
   RobItem(UID, 900184000, 1)
   GoldLose(UID, Level * 6000)
   GiveItem(UID, 900180669, 1)
   SelectMsg(UID, 2, -1, 9273, NPC, 20, 241); 
end

if EVENT == 3004 then
   SelectMsg(UID, 3, -1, 9277, NPC, 7121, 206, 7122, 207, 7123, 208, 7124, 209);
end

if EVENT == 206 then
   KingWingTime = GetUserDailyOp(UID, 4);
   King = isKing(UID);
   if King then
   if KingWingTime == 1 then
   GiveItem(UID, 900181671, 1)
   SelectMsg(UID, 2, -1, 9279, NPC, 20, 241);
   else
   SelectMsg(UID, 2, -1, 9280, NPC, 10, 241);
   end
   else
   SelectMsg(UID, 2, -1, 9279, NPC, 10, 241);
   end
end

if EVENT == 207 then
   --KeeperKiller = isKeeperKiller(UID);
   KeeperTime = GetUserDailyOp(UID, 7);
   if KeeperTime == 1 then
   --if KeeperKiller then
   GiveItem(UID, 900182674, 1)
   SelectMsg(UID, 2, -1, 9282, NPC, 20, 241);
   --else
   --SelectMsg(UID, 2, -1, 9278, NPC, 10, 241);
   --end
   else
   SelectMsg(UID, 2, -1, 9280, NPC, 10 ,241);
   end
end

if EVENT == 208 then
   --Captain1Killer = isCaptain1Killer(UID);
   Captain1Time = GetUserDailyOp(UID, 5);
   if Captain1Time == 1 then
   --if Captain1Killer then
   GiveItem(UID, 900182674, 1)
   SelectMsg(UID, 2, -1, 9283, NPC, 20, 241);
   --else
   --SelectMsg(UID, 2, -1, 9278, NPC, 10, 241);
   --end
   else
   SelectMsg(UID, 2, -1, 9280, NPC, 10 ,241);
   end
end

if EVENT == 209 then
   --Captain2Killer = isCaptain2Killer(UID);
   Captain2Time = GetUserDailyOp(UID, 6);
   if Captain2Time == 1 then
   --if Captain2Killer then
   GiveItem(UID, 900182674, 1)
   SelectMsg(UID, 2, -1, 9284, NPC, 20, 241);
   --else
   --SelectMsg(UID, 2, -1, 9278, NPC, 10, 241);
   --end
   else
   SelectMsg(UID, 2, -1, 9280, NPC, 10 ,241);
   end
end

if EVENT == 241 then
   Ret = 1;
end

