BEGIN g-bbD228
CHAIN IF~True()~THEN g-bbD228 g-bbD228.box2
@0 /*This is the bag that the storage manager at the port auctioned to you. It is a simple leather pouch. The contents are unknown. */
END
IF~~THEN REPLY @2 /*Examine the bag. */ DO~~ + g-bbD228.LOOK
IF~Global("g-lootbox","GLOBAL",1)~THEN REPLY @3 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0) GiveItemCreate("SPPR502",Protagonist,3,1,0)  GivePartyGold(20000)~ EXIT
IF~GlobalGT("g-lootbox","GLOBAL",1) GlobalLT("g-lootbox","GLOBAL",5)~THEN REPLY @4 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("SPPR502",Protagonist,3,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0)~ EXIT
IF~GlobalGT("g-lootbox","GLOBAL",4)~THEN REPLY @5 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("ROCHCHARM",Protagonist,3,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0)~ EXIT
IF~~THEN REPLY @6 /*Put the bag away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD228 g-bbD228.LOOK
@8 /*There are not many identifying marks on it, but the buckle on the attached belt features a sea foam wave design. */
END
IF~Global("g-lootbox","GLOBAL",1)~THEN REPLY @10 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0) GiveItemCreate("SPPR502",Protagonist,3,1,0)  GivePartyGold(20000)~ EXIT
IF~GlobalGT("g-lootbox","GLOBAL",1) GlobalLT("g-lootbox","GLOBAL",5)~THEN REPLY @11 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("SPPR502",Protagonist,3,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0)~ EXIT
IF~GlobalGT("g-lootbox","GLOBAL",4)~THEN REPLY @12 /*Open the bag. */ DO~DestroyPartyItem("g-bbi114",0) AddexperienceParty(10000) GiveItemCreate("g-bbi098",Protagonist,1,1,0) GiveItemCreate("ROCHCHARM",Protagonist,3,1,0) GiveItemCreate("g-bbi099",Protagonist,1,1,0)~ EXIT
IF~~THEN REPLY @13 /*Put the bag away. */ DO~~ EXIT