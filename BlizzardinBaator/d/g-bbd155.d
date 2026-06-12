BEGIN g-bbD155
CHAIN IF~True()~THEN g-bbD155 g-bbD155.start
@0 /*The female wererat's body is frozen solid, her mouth held in place by the unrelenting grasp of ice which has formed over it. The words come but sound faint and distant. "Where am I?" */
END
IF~Global("G-ratidla1","GLOBAL",0)~THEN REPLY @2 /*"You are dead. You have been sucked into the eighth layer of the Hells. You got quite far from the portal, you must have been tough." */ DO~SetGlobal("G-ratidla1","GLOBAL",1)~ + g-bbD155.tough
IF~PartyHasItem("g-bbi048") Global("G-ratidla2","GLOBAL",0)~THEN REPLY @3 /*"You stole Ulfbrand's earring? Impressive, but ultimately you paid the final price for it in these frozen depths." */ DO~SetGlobal("G-ratidla2","GLOBAL",1)~ + g-bbD155.earring
IF~PartyHasItem("g-bbi051") Global("G-ratidla3","GLOBAL",0)~THEN REPLY @4 /*"You had the marraenoloth's flute on you. How did you get it?" */ DO~SetGlobal("G-ratidla3","GLOBAL",1)~ + g-bbD155.flute
IF~~THEN REPLY @5 /*"Rest now, Ratilda." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD155 g-bbD155.tough
@7 /*"I was... the toughest... of them all... weak ratty boys... I was peak wererat performance." */
END
IF~Global("G-ratidla1","GLOBAL",0)~THEN REPLY @9 /*"You are dead. You have been sucked into the eighth layer of the Hells. You got quite far from the portal, you must have been tough." */ DO~SetGlobal("G-ratidla1","GLOBAL",1)~ + g-bbD155.tough
IF~PartyHasItem("g-bbi048") Global("G-ratidla2","GLOBAL",0)~THEN REPLY @10 /*"You stole Ulfbrand's earring? Impressive, but ultimately you paid the final price for it in these frozen depths." */ DO~SetGlobal("G-ratidla2","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.earring
IF~PartyHasItem("g-bbi051") Global("G-ratidla3","GLOBAL",0)~THEN REPLY @11 /*"You had the marraenoloth's flute on you. How did you get it?" */ DO~SetGlobal("G-ratidla3","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.flute
IF~~THEN REPLY @12 /*"Rest now, Ratilda." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD155 g-bbD155.earring
@14 /*"Fat... rich... treat. Earring cold... sad." */
END
IF~Global("G-ratidla1","GLOBAL",0)~THEN REPLY @16 /*"You are dead. You have been sucked into the eighth layer of the Hells. You got quite far from the portal, you must have been tough." */ DO~SetGlobal("G-ratidla1","GLOBAL",1)~ + g-bbD155.tough
IF~PartyHasItem("g-bbi048") Global("G-ratidla2","GLOBAL",0)~THEN REPLY @17 /*"You stole Ulfbrand's earring? Impressive, but ultimately you paid the final price for it in these frozen depths." */ DO~SetGlobal("G-ratidla2","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.earring
IF~PartyHasItem("g-bbi051") Global("G-ratidla3","GLOBAL",0)~THEN REPLY @18 /*"You had the marraenoloth's flute on you. How did you get it?" */ DO~SetGlobal("G-ratidla3","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.flute
IF~~THEN REPLY @19 /*"Rest now, Ratilda." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD155 g-bbD155.flute
@21 /*"Forbidden... love. Present from beloved..." */
END
IF~Global("G-ratidla1","GLOBAL",0)~THEN REPLY @23 /*"You are dead. You have been sucked into the eighth layer of the Hells. You got quite far from the portal, you must have been tough." */ DO~SetGlobal("G-ratidla1","GLOBAL",1)~ + g-bbD155.tough
IF~PartyHasItem("g-bbi048") Global("G-ratidla2","GLOBAL",0)~THEN REPLY @24 /*"You stole Ulfbrand's earring? Impressive, but ultimately you paid the final price for it in these frozen depths." */ DO~SetGlobal("G-ratidla2","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.earring
IF~PartyHasItem("g-bbi051") Global("G-ratidla3","GLOBAL",0)~THEN REPLY @25 /*"You had the marraenoloth's flute on you. How did you get it?" */ DO~SetGlobal("G-ratidla3","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD155.flute
IF~~THEN REPLY @26 /*"Rest now, Ratilda." */ DO~~ EXIT