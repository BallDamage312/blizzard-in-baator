BEGIN g-bbD040
CHAIN IF~!PartyHasItem("CUBE")~THEN g-bbD040 g-bbD040.start
@0 /*"Oi! Fancy a trip back to the port? Mere thirty coppers." */
END
IF~Global("g-slimequestline","GLOBAL",5) AreaCheck("arg-ek")~THEN REPLY @2 /*"Do you perhaps have a decent length of a some rope?" */ DO~~ + g-bbD040.rope
IF~AreaCheck("arg-ek")~THEN REPLY @3 /*"Captain, do you know anything about this islet?" */ DO~~ + g-bbD040.knife
IF~Global("g-knowknifeintheriver","GLOBAL",1) PartyGoldGT(29) !AreaCheck("arg-ek")~THEN REPLY @4 /*"Can you take me to the Knife in the River instead?" */ DO~TakePartyGold(30) TeleportParty("ARG-ek",[1000.1400],3) PlaySound("g-boat")~ EXIT
IF~AreaCheck("arg-ek") PartyGoldGT(29)~THEN REPLY @5 /*"No, but take me to the beach again." */ DO~TakePartyGold(30) TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT
IF~PartyGoldGT(29)~THEN REPLY @6 /*"Here's 30 coppers. Let's go." */ DO~TakePartyGold(30) TeleportParty("arg-in",[1800.650],12) PlaySound("g-boat")~ EXIT
IF~PartyGoldLT(30)~THEN REPLY @7 /*"I don't have that much money." */ DO~~ + g-bbD040.poor
IF~~THEN REPLY @8 /*"Not today." */ DO~~ EXIT
CHAIN IF~PartyHasItem("CUBE")~THEN g-bbD040 g-bbD040.start2
@10 /*"Oi! Fancy a trip back to the port? Mere-" */
==g-bbd237 @11 /*"Warning! Warning! Portal key detected. Boarding terminated; review INVENTORY. Key to..." The strange, small modron whirrs wildly. "...CLOCKWORK NIRVANA OF MECHANUS."  [MODRO02] */
==g-bbd040 @12 /*"Oh, sorry, mate. You have contraband. The raft goes under Seafarer's Arch, so my little friend here protects me from unsolicited travel. You must have something that opens one of the portals on our path. Get rid of it and we can travel together." */
END
IF~~THEN REPLY @14 /*"I will be back, then." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.poor
@16 /*The skipper shrugs and continues to watch the waves. */
END
IF~AreaCheck("arg-ek")~THEN REPLY @18 /*"But now... I am stuck on this island." */ DO~~ + g-bbD040.poorrescue
IF~~THEN REPLY @19 /*"I will be back, then." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.rope
@21 /*"I do, but I need it. Back in the settlement, you'll surely find one at the market, with the loopy string merchant." */
=@22 /*"You ready to go?" */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @24 /*"Come on, I don't want to sail all the way back." */ DO~~ + g-bbD040.rope2S
IF~!CheckStatGT(Protagonist,18,CHR)~THEN REPLY @25 /*"Come on, I don't want to sail all the way back." */ DO~~ + g-bbD040.rope2F
IF~Global("g-slimequestline","GLOBAL",5) AreaCheck("arg-ek")~THEN REPLY @26 /*"Do you know anything about this islet?" */ DO~~ + g-bbD040.knife
IF~AreaCheck("arg-ek") PartyGoldGT(29)~THEN REPLY @27 /*"Here's 30 coppers. Take me to the beach again." */ DO~TakePartyGold(30) TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT
IF~PartyGoldGT(29)~THEN REPLY @28 /*"Here's 30 coppers. Let's go to the port." */ DO~TakePartyGold(30) TeleportParty("arg-in",[1800.650],12) PlaySound("g-boat")~ EXIT
IF~PartyGoldLT(30)~THEN REPLY @29 /*"I don't have enough money." */ DO~~ + g-bbD040.poor
IF~~THEN REPLY @30 /*"Not right now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.knife
@32 /*"Not many sail here, as there is nothing about," explains the captain, then he spits. "They say that the Knife itself is a piece of the Lady's crown blown off by the cannon from that ship sunken to the bottom of the Ditch. I say it's goristro shit. You think a cannon could hurt the Lady of Pain? Ha." */
==g-bbd237 @33 /*"Battlefield detected." */
==g-bbd040 @34 /*"Where in this bloody multiverse is not a former battlefield, huh?" He turns back to you. "You ready to go?" */
END
IF~Global("g-slimequestline","GLOBAL",5) AreaCheck("arg-ek")~THEN REPLY @36 /*"Do you perhaps have a decent length of a some rope?" */ DO~~ + g-bbD040.rope
IF~AreaCheck("arg-ek") PartyGoldGT(29)~THEN REPLY @37 /*"Here's 30 coppers. Take me to the beach again." */ DO~TakePartyGold(30) TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT
IF~PartyGoldGT(29)~THEN REPLY @38 /*"Here's 30 coppers. Let's go to the port." */ DO~TakePartyGold(30) TeleportParty("arg-in",[1800.650],12) PlaySound("g-boat")~ EXIT
IF~PartyGoldLT(30)~THEN REPLY @39 /*"I don't have enough money." */ DO~~ + g-bbD040.poor
IF~~THEN REPLY @40 /*"Not right now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.rope2S
@42 /*"Ugh... I actually have a bit of extra rope," the captain sighs, glancing at the deck of his boat. "I bought a coil of this special kind, for binding snakes. It wasn't cheap... I'll part with it for five hundred copper coins. What do you say?" */
END
IF~PartyGoldGT(499)~THEN REPLY @44 /*"All right. Let's trade. five hundred coppers coming your way." */ DO~SetGlobal("g-slimequestline","GLOBAL",6) GiveItemCreate("g-bbi130",Protagonist,1,1,0) TakePartyGold(500) ~ SOLVED_JOURNAL @20300 EXIT
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) ~THEN REPLY @45 /*"Five hundred is very steep. I need to think about it." */ DO~SetGlobal("g-fakemrtdialogue","GLOBAL",2)~ EXIT
IF~OR(2) !InParty("Morte") StateCheck("Morte",CD_STATE_NOTVALID) ~THEN REPLY @46 /*"Five hundred is very steep. I need to think about it." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.rope2F
@48 /*"I'm sorry, cutter. I can't sell what I have none of." */
END
IF~AreaCheck("arg-ek") PartyGoldGT(29)~THEN REPLY @50 /*"It's all right. Let's go to the beach, then." */ DO~TakePartyGold(30) TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT
IF~PartyGoldGT(29)~THEN REPLY @51 /*"It's all right. Let's go to the port, then." */ DO~TakePartyGold(30) TeleportParty("arg-in",[1800.650],12) PlaySound("g-boat")~ EXIT
IF~PartyGoldLT(30)~THEN REPLY @52 /*"I don't have enough copper to travel anywhere." */ DO~~ + g-bbD040.poor
IF~~THEN REPLY @53 /*"Thanks for nothing. I'll look for the rope in the trash." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD040 g-bbD040.poorrescue
@55 /*The captain sighs heavily. "Then there is no point in me sitting around here waiting on you, eh? I am heading back to the beach and I will take you with me out of the crystal goodness of my sailor's heart. Consider this rescue, not service. And *you* will be doing the rowing. Come on, let's go." */
END
IF~~THEN REPLY @57 /*"Thank you, captain." */ DO~TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT