local NPC = 31505;

if EVENT == 100 then
   SelectMsg(UID, 2, -1, 9205, NPC, 7098, 200, 7099, 201);
end

if EVENT == 200 then
   ITEM = HowmuchItem(UID, 389514000);
   MONEY = HowmuchItem(UID, 900000000);
   if ITEM >= 1 and MONEY >= 30000 then
   SelectMsg(UID, 3, -1, 9206, NPC, 7091, 300, 7092, 301, 7093, 302, 7094, 303, 7095, 304, 7096, 305, 7097, 306);
   else
   NpcMsg(UID, 9135);
   end
end

if EVENT == 201 then
   MONEY = HowmuchItem(UID, 900000000);
   if MONEY >= 50000 then
   SelectMsg(UID, 3, -1, 9206, NPC, 7091, 666, 7092, 667, 7093, 668, 7094, 101, 7095, 102, 7096, 103, 7097, 104);
   else
   NpcMsg(UID, 9136);
   end	
end

if EVENT == 666 then
   Cast = CastSkill(UID, 302327);
   if Cast then
   CastSkill(UID, 302327)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 667 then
   Cast = CastSkill(UID, 302331);
   if Cast then
   CastSkill(UID, 302331)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 668 then
   Cast = CastSkill(UID, 302328);
   if Cast then
   CastSkill(UID, 302328)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 101 then
   Cast = CastSkill(UID, 302332);
   if Cast then
   CastSkill(UID, 302332)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 102 then
   Cast = CastSkill(UID, 302329);
   if Cast then
   CastSkill(UID, 302329)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 103 then
   Cast = CastSkill(UID, 302333);
   if Cast then
   CastSkill(UID, 302333)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 104 then
   Cast = CastSkill(UID, 302330);
   if Cast then
   CastSkill(UID, 302330)
   GoldLose(UID, 50000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 300 then
   Cast = CastSkill(UID, 302327);
   if Cast then
   CastSkill(UID, 302327)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 301 then
   Cast = CastSkill(UID, 302331);
   if Cast then
   CastSkill(UID, 302331)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 302 then
   Cast = CastSkill(UID, 302328);
   if Cast then
   CastSkill(UID, 302328)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 303 then
   Cast = CastSkill(UID, 302332);
   if Cast then
   CastSkill(UID, 302332)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 304 then
   Cast = CastSkill(UID, 302329);
   if Cast then
   CastSkill(UID, 302329)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 305 then
   Cast = CastSkill(UID, 302333);
   if Cast then
   CastSkill(UID, 302333)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end

if EVENT == 306 then
   Cast = CastSkill(UID, 302330);
   if Cast then
   CastSkill(UID, 302330)
   RobItem(UID, 389514000, 1)
   GoldLose(UID, 30000)
   else
   NpcMsg(UID, 9137);
   end
end