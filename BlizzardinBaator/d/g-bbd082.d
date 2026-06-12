BEGIN g-bbD082
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD082 g-bbD082.start
@0 /*In front of you, you see a young woman in a sylphlike, floral dress. She dances barefoot to the rhythm of the clapping crowd of delighted spectators surrounding her. The girl smiles and tosses her red braid provocatively, placing her hands on her shapely hips. She resembles a nymph or a dryad cavorting carelessly in a meadow. A beautiful diamond hidden in the dirty depths of the Ditch. */
END
IF~PartyGoldGT(0)~THEN REPLY @2 /*Throw a copper coin into the cup on the ground in front of her. */ DO~TakePartyGold(1)~ + g-bbD082.A1
IF~~THEN REPLY @3 /*Observe for a while and then walk away. */ DO~~ EXIT
IF~~THEN REPLY @4 /*You don't have time for this. Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD082 g-bbD082.start2
@6 /*The girl keeps dancing and gives you a sultry look that sends a shiver down your spine. */
END
IF~PartyGoldGT(0)~THEN REPLY @8 /*Throw a copper coin into the cup on the ground in front of her. */ DO~TakePartyGold(1)~ + g-bbD082.A1
IF~~THEN REPLY @9 /*Observe for a while. */ DO~~ + g-bbD082.A1alt
IF~~THEN REPLY @10 /*You don't have time for this. Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD082 g-bbD082.A1
@12 /*As the coin clinks in the cup, the woman looks up at you. She smiles seductively, but with a touch of superiority and mockery. You get the impression that her blue eyes momentarily change color to dark purple. Maybe it is your imagination, maybe not, but the hair on the back of your neck stand on end. Suddenly, the whole scene develops a sinister angle. Do the faces of the fans, frozen in delight, seem artificial? With despair shining underneath? Better to leave while you still can. */
END
IF~Global("g-gracedancewarning","GLOBAL",1)~THEN REPLY @14 /*Turn away from her ostentatiously and walk away. */ DO~~ EXIT
IF~!InParty("Grace") Global("g-gracedancewarning","GLOBAL",0)~THEN REPLY @15 /*Turn away from her ostentatiously and walk away. */ DO~~ EXIT
IF~InParty("Grace") !StateCheck("!Grace",CD_STATE_NOTVALID) Global("g-gracedancewarning","GLOBAL",0)~THEN REPLY @16 /*Turn away from her ostentatiously and walk away. */ DO~SetGlobal("g-gracedancewarning","GLOBAL",1)~ + g-bbD082.B1
CHAIN IF~~THEN g-bbD082 g-bbD082.A1alt
@18 /*The woman looks up at you. She smiles seductively, but with a touch of superiority and mockery. You get the impression that her blue eyes momentarily change color to dark purple. Maybe it is your imagination, maybe not, but the hair on the back of your neck stand on end. Suddenly, the whole scene develops a sinister angle. Do the faces of the fans, frozen in delight, seem artificial? With despair shining underneath? Better to leave while you still can. */
END
IF~Global("g-gracedancewarning","GLOBAL",1)~THEN REPLY @20 /*Turn away from her ostentatiously and walk away. */ DO~~ EXIT
IF~!InParty("Grace") Global("g-gracedancewarning","GLOBAL",0)~THEN REPLY @21 /*Turn away from her ostentatiously and walk away. */ DO~~ EXIT
IF~InParty("Grace") !StateCheck("!Grace",CD_STATE_NOTVALID) Global("g-gracedancewarning","GLOBAL",0)~THEN REPLY @22 /*Turn away from her ostentatiously and walk away. */ DO~SetGlobal("g-gracedancewarning","GLOBAL",1)~ + g-bbD082.B1
CHAIN IF~~THEN g-bbD082 g-bbD082.B1
@24 /*Even when not looking in her direction, you can still feel her presence. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @25 /*"You did the right thing. Creatures like her are very dangerous. More so than you may think." */
END
IF~~THEN REPLY @27 /*She has a point. Leave. */ DO~~ EXIT