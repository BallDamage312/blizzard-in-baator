BEGIN g-bbD009
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD009 g-bbD009.start
@0 /*"Gather round! Trip to the Ditch beach, leaving now! Warm yer weary bones at the hottest spot in the whole Hive! Just 10 coppers for a safe ride to the port!" */
END
IF~PartyGoldGT(9)~THEN REPLY @2 /*"Here's 10 coppers. Let's go." */ DO~TakePartyGold(10) TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~PartyGoldLT(10)~THEN REPLY @3 /*"I don't have that much money." */ DO~~ + g-bbD009.poor
IF~~THEN REPLY @4 /*"Is it really the hottest spot in the Hive?" */ DO~~ + g-bbD009.hot
IF~~THEN REPLY @5 /*"Not today." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD009 g-bbD009.start2
@7 /*"Gather round! Trip to the Ditch beach, leaving now! Warm yer weary bones at the hottest spot in the whole Hive! Just 10 coppers for a safe ride to the port!" */
END
IF~Global("G-rattemplequest","GLOBAL",2)~THEN REPLY @9 /*"Do you know anything about a secret wererat temple? I've heard it has been located by some kids." */ DO~~ + g-bbD009.rattemple
IF~PartyGoldGT(9)~THEN REPLY @10 /*"Here's 10 coppers. Let's go." */ DO~TakePartyGold(10) TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~PartyGoldLT(10)~THEN REPLY @11 /*"I don't have that much money." */ DO~~ + g-bbD009.poor
IF~CheckStatGT(Protagonist,18,DEX)~THEN REPLY @12 /*Wait until the guide leaves and follow him at safe distance. */ DO~TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~~THEN REPLY @13 /*"Not today." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD009 g-bbD009.hot
@15 /*"Yes, yes. Portal to the warm, sunny beaches of Lee-sium, opened right under the sand. Best for ye bones." */
END
IF~PartyGoldGT(9)~THEN REPLY @17 /*"You convinced me. Here's 10 coppers. Let's go." */ DO~TakePartyGold(10) TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~PartyGoldLT(10)~THEN REPLY @18 /*"I don't have that much money..." */ DO~~ + g-bbD009.poor
IF~CheckStatGT(Protagonist,18,DEX)~THEN REPLY @19 /*Wait until the guide leaves and follow him at safe distance. */ DO~TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~~THEN REPLY @20 /*"Not today." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD009 g-bbD009.poor
@22 /*The child shrugs and continues to call out for other people. */
EXIT
CHAIN IF~~THEN g-bbD009 g-bbD009.rattemple
@25 /*"It's the Ditch boys who are into that stuff. I'm from *here*. Look for a trio, who like to play Blood War... and make costumes." */
END
IF~PartyGoldGT(9)~THEN REPLY @27 /*"Thanks. Here's 10 coppers. Let's head to the port." */ DO~TakePartyGold(10) TeleportParty("ARG-IN",[450.1380],3)~ EXIT
IF~~THEN REPLY @28 /*"Thanks. See you later." */ DO~~ EXIT