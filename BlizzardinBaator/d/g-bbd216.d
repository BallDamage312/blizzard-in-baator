BEGIN g-bbD216
CHAIN IF~True()~THEN g-bbD216 g-bbD216.start
@0 /*"Gather round! Trip back to the Smoldering Corpse coming right up!  Get home safe with me. Mere 10 coppers." */
END
IF~Global("G-rattemplequest","GLOBAL",2)~THEN REPLY @2 /*"Do you know anything about a secret wererat temple? I've heard it has been located by some kids." */ DO~~ + g-bbD216.rattemple
IF~PartyGoldGT(9)~THEN REPLY @3 /*"Here's 10 coppers. Let's go." */ DO~TakePartyGold(10) TeleportParty("ar0400",[2320.1820],12)~ EXIT
IF~PartyGoldLT(10)~THEN REPLY @4 /*"I don't have that much money." */ DO~~ + g-bbD216.poor
IF~CheckStatGT(Protagonist,18,DEX)~THEN REPLY @5 /*Wait until the guide leaves and follow him at a safe distance. */ DO~TeleportParty("ar0400",[2320.1820],12)~ EXIT
IF~~THEN REPLY @6 /*"Not today." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD216 g-bbD216.poor
@8 /*"Ah. I'm going there anyway.... come along." */
END
IF~~THEN REPLY @10 /*Follow the tout. */ DO~TeleportParty("ar0400",[2320.1820],12)~ EXIT
IF~~THEN REPLY @11 /*"Not today." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD216 g-bbD216.rattemple
@13 /*"It's the Ditch boys who are into that stuff. I'm from *here*. Look for a trio, who like to play Blood War... and make costumes." */
END
IF~PartyGoldGT(9)~THEN REPLY @15 /*"Thanks. Here's 10 copper. Let's head to the Smoldering Corpse." */ DO~TakePartyGold(10) TeleportParty("ar0400",[2320.1820],12)~ EXIT
IF~~THEN REPLY @16 /*"Thanks. See you later." */ DO~~ EXIT