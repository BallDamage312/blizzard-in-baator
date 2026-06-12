BEGIN g-bbD217
CHAIN IF~!PartyHasItem("CUBE")~THEN g-bbD217 g-bbD217.start
@0 /*"Oi! Going to the beach today? Mere 30 coppers." */
END
IF~PartyGoldGT(29)~THEN REPLY @2 /*"Here's 30 coppers. Let's go." */ DO~TakePartyGold(30) TeleportParty("ARG-00",[1020.2020],3) PlaySound("g-boat")~ EXIT
IF~Global("g-knowknifeintheriver","GLOBAL",1) PartyGoldGT(29)~THEN REPLY @3 /*"Can you take me to the Knife in the River instead?" */ DO~TakePartyGold(30) TeleportParty("ARG-ek",[1000.1400],3) PlaySound("g-boat")~ EXIT
IF~PartyGoldLT(30)~THEN REPLY @4 /*"I don't have that much money." */ DO~~ + g-bbD217.poor
IF~~THEN REPLY @5 /*"Not today." */ DO~~ EXIT
CHAIN IF~PartyHasItem("CUBE")~THEN g-bbD217 g-bbD217.start2
@7 /*"Oi! Going to the beach today? Mere-" */
==g-bbd237 @8 /*"Warning! Warning! Portal key detected. Boarding terminated; review INVENTORY. Key to..." The strange, small modron whirs wildly. "...CLOCKWORK NIRVANA OF MECHANUS."  [MODRO02] */
==g-bbd217 @9 /*"Oh, sorry, mate. You have contraband. The raft goes under Seafarer's Arch, so my little friend here protects me from unsolicited travel. In my opinion, that's more reliable than all those keycloaks or cloak-keys. You must have something that opens one of the portals on our path. Get rid of it and we can travel together." */
==g-bbd217 @10 /*The man points back to the shore. "If you haven't yet rented it, the shack offers storage." */
END
IF~~THEN REPLY @12 /*"I will be back, then." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD217 g-bbD217.poor
@14 /*The skipper shrugs and continues to watch the waves. */
EXIT