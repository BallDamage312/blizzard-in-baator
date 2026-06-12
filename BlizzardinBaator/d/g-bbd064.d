BEGIN g-bbD064
CHAIN IF~NumTimesTalkedTo(0) TimeLT(1) PartyHasItem("g-bbi045") OR(2) Global("G-BBmain","GLOBAL",17) GlobalGT("G-BBmain","GLOBAL",18)~THEN g-bbD064 g-bbD064.Start
@0 /*The nearby opening in a half-sunken tower suddenly starts shimmering. A cold breeze tickles your face. In a split second, a portal appears in front of you. */
=@1 /*^NNOTE
In the first act, there is only one location on the other side of the portal. The portal only works in one direction. Make sure you are ready to continue.^- */
END
IF~!PartyHasItem("g-bbi041") NumInPartyGT(4)~THEN REPLY @3 /*Step through the portal. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.toomany
IF~!PartyHasItem("g-bbi041") NumInPartyLT(5)~THEN REPLY @4 /*Step through the portal. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.butwait
IF~PartyHasItem("g-bbi041") NumInPartyGT(4)~THEN REPLY @7 /*Step through the portal, feeling the comfort of the robe given to you by Tergush'tekhn. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.toomany
IF~PartyHasItem("g-bbi041") NumInPartyLT(5)~THEN REPLY @8 /*Step through the portal, feeling the comfort of the robe given to you by Tergush'tekhn. */ DO~SaveGame(5) ActionOverride("g-bb064",DestroySelf()) StartMovie("g-cania") SetGlobal("G-BBmain","GLOBAL",21) TeleportParty("ARG-10",[1010.740],0)~ EXIT
IF~~THEN REPLY @9 /*Step back from the portal. */ DO~ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) TimeLT(1) PartyHasItem("g-bbi045") OR(2) Global("G-BBmain","GLOBAL",17) GlobalGT("G-BBmain","GLOBAL",18)~THEN g-bbD064 g-bbD064.Start2
@11 /*The nearby opening in a half-sunken tower suddenly starts shimmering. A cold breeze tickles your face. In a split second, a portal appears in front of you. */
=@12 /*^NNOTE
In the first act, there is only one location on the other side of the portal. The portal only works in one direction. Make sure you are ready to continue.^- */
END
IF~!PartyHasItem("g-bbi041") NumInPartyGT(4)~THEN REPLY @14 /*Step through the portal. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.toomany
IF~!PartyHasItem("g-bbi041") NumInPartyLT(5)~THEN REPLY @15 /*Step through the portal. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.butwait
IF~PartyHasItem("g-bbi041") NumInPartyGT(4)~THEN REPLY @18 /*Step through the portal, feeling the comfort of the robe given to you by Tergush'tekhn. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.toomany
IF~PartyHasItem("g-bbi041") NumInPartyLT(5)~THEN REPLY @19 /*Step through the portal, feeling the comfort of the robe given to you by Tergush'tekhn. */ DO~SaveGame(5) ActionOverride("g-bb064",DestroySelf()) StartMovie("g-cania") SetGlobal("G-BBmain","GLOBAL",21) TeleportParty("ARG-10",[1010.740],0)~ EXIT
IF~~THEN REPLY @20 /*Step back from the portal. */ DO~ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD064 g-bbD064.Fail
@22 /*There seems to be some frozen debris around the hole in the half submerged tower. But there doesn't seem to be any reason behind it. */
EXIT
CHAIN IF~~THEN g-bbD064 g-bbD064.toomany
@25 /*The portal does not seem to let you through. The cold air is blasting you but the passage itself seems to be sealed somehow. */
==g-bbD006 @26 /*"We're too many. Need to leave one behind, yes!" */
END
IF~~THEN REPLY @28 /*Step back from the portal. */ DO~ActionOverride("g-bb006",DestroySelf() ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD064 g-bbD064.butwait
~~ ==g-bbD006 @30 /*"Mister! We have no protection! We need to go back to the Smoldering Corpse. Prod will be fine, but you... will freeze solid..." */
END
IF~~THEN REPLY @32 /*"I know what I'm doing, Prod." Step through the portal. */ DO~SaveGame(5) ActionOverride("g-bb064",DestroySelf()) ActionOverride("g-bb006",DestroySelf()) SetGlobal("G-BBfreezing","GLOBAL",1) StartMovie("g-frz") TeleportParty("ARG-10",[1010.740],0) ~ EXIT
IF~~THEN REPLY @33 /*Step back from the portal. */ DO~ActionOverride("g-bb006",DestroySelf()) ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD064 g-bbD064.butwait2
~~ ==g-bbD006 @35 /*"Mister! We have no protection! You need to put on your robe! Prod will be fine, but you... will freeze solid..." */
END
IF~~THEN REPLY @37 /*"I know what I'm doing, Prod." Step through the portal. */ DO~SaveGame(5) ActionOverride("g-bb064",DestroySelf()) ActionOverride("g-bb006",DestroySelf()) SetGlobal("G-BBfreezing","GLOBAL",1) StartMovie("g-frz") TeleportParty("ARG-10",[1010.740],0) ~ EXIT
IF~~THEN REPLY @38 /*Step back from the portal. */ DO~ActionOverride("g-bb006",DestroySelf()) ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~!PartyHasItem("g-bbi045") Global("G-awareportal","GLOBAL",1)~THEN g-bbD064 g-bbD064.Startnokey
@40 /*The nearby opening in a half-sunken tower looks like a perfect place for a portal. */
END
IF~~THEN REPLY @42 /*Step through it. */ DO~CreateCreatureObject("g-bb006",Player1,0,0,0)~ + g-bbD064.nokey2
IF~~THEN REPLY @43 /*Step back. */ DO~ActionOverride("g-bb064",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD064 g-bbD064.nokey2
@45 /*Nothing seems to be happening. */
==g-bbD006 @46 /*"Mister? We do not have the key. Did you forget you need it?" */
END
IF~~THEN REPLY @48 /*Step back. "Ah... right." */ DO~ActionOverride("g-bb006",DestroySelf()) ActionOverride("g-bb064",DestroySelf())~ EXIT