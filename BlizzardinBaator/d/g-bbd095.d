BEGIN g-bbD095
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD095 g-bbD095.start
@0 /*You see a young woman in dirty, torn clothes typical of the area. Her face is covered in nasty lichens and marred with traces of past illnesses, but she does not seem to care at all. She grins, slowly moving her hand in the air next to her hip. As you approach, she turns to you cheerfully: "He's beautiful, isn't he?" */
END
IF~~THEN REPLY @2 /*"Excuse me? Who's beautiful?" */ DO~~ + g-bbD095.A1
IF~~THEN REPLY @3 /*Lie: "Of course! I haven't seen a more beautiful one!" */ DO~IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD095.B1
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD095 g-bbD095.start2
@6 /*The girl continues to pace, stroking the air. As you pass her, you could swear you heard a growl. */
END
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.A1
@10 /*The girl becomes comically offended. "What do you mean by 'who'? Bobby!" She waves her hand again, a gesture that you can now identify as an attempt to pet an empty space. She chirps at this nothingness in a sweet voice, as if addressing a small child. "Who's a good dog? Who?" */
END
IF~~THEN REPLY @12 /*"Interesting... How did you get Bobby?" */ DO~~ + g-bbD095.D1
IF~~THEN REPLY @13 /*"You do realize that Bobby does not exist, right?" */ DO~~ + g-bbD095.E1
IF~~THEN REPLY @14 /*"Well. You're completely mad. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.B1
@16 /*The girl's radiant smile grows even wider. "Isn't he just? Bobby has no equal in all of Sigil! Nay, in the entire multiverse!" She waves her hand again, a gesture that you can now identify as an attempt to pet an empty space. She chirps at this nothingness in a sweet voice, as if addressing a small child. "Who's a good dog? Who?" */
END
IF~~THEN REPLY @18 /*"Interesting... How did you get Bobby?" */ DO~~ + g-bbD095.D1
IF~~THEN REPLY @19 /*"You do realize that Bobby does not exist, right?" */ DO~~ + g-bbD095.E1
IF~~THEN REPLY @20 /*"Well. You're completely mad. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.D1
@22 /*The girl shrugs. "I don't know. I always really wanted a companion, and he just showed up here one day. I think fate brought us together on purpose. The planes wanted us to meet." */
END
IF~!NearbyDialog("DMorte")~THEN REPLY @24 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1a
IF~NearbyDialog("DMorte") NearbyDialog("DAnnah") !NearbyDialog("DGrace")~THEN REPLY @25 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1b
IF~NearbyDialog("DMorte") !NearbyDialog("DAnnah") !NearbyDialog("DGrace")~THEN REPLY @26 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1a
IF~NearbyDialog("DMorte") !NearbyDialog("DAnnah") NearbyDialog("DGrace")~THEN REPLY @27 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1d
IF~NearbyDialog("DMorte") NearbyDialog("DAnnah") NearbyDialog("DGrace")~THEN REPLY @28 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1e
IF~~THEN REPLY @29 /*"You do realize that Bobby does not exist, right?" */ DO~~ + g-bbD095.E1
IF~~THEN REPLY @30 /*"Well. You're completely mad. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.E1
@32 /*The girl purses her lips and gives you a reproachful look. If glares could kill, you might not be dead, but you'd definitely be in danger of indigestion. "Oh, so you're one of them, those sad, blind people? Fine, we have nothing to talk about then. Go away." The girl stops paying attention to you, busy with her dream dog.         */
END
IF~!NearbyDialog("DMorte")~THEN REPLY @34 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1a
IF~NearbyDialog("DMorte") NearbyDialog("DAnnah") !NearbyDialog("DGrace")~THEN REPLY @35 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1b
IF~NearbyDialog("DMorte") !NearbyDialog("DAnnah") !NearbyDialog("DGrace")~THEN REPLY @36 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1a
IF~NearbyDialog("DMorte") !NearbyDialog("DAnnah") NearbyDialog("DGrace")~THEN REPLY @37 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1d
IF~NearbyDialog("DMorte") NearbyDialog("DAnnah") NearbyDialog("DGrace")~THEN REPLY @38 /*"Well, then. In that case, I wish you and Bobby all the best. Goodbye." */ DO~~ + g-bbD095.G1e
IF~~THEN REPLY @39 /*"Well. You're completely mad. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.G1a
@41 /*You turn to leave when you hear an animal panting heavily behind you. You glance over your shoulder, but nothing has changed. The girl continues to stroke the air. Your ears must have played a trick on you.  */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @42 /*Morte gives you a reproachful look. "Hey, chief. You could pet me sometime and ask who's a good skull." */
EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.G1b
@45 /*You turn to leave when you hear an animal panting heavily behind you. You glance over your shoulder, but nothing has changed. The girl continues to stroke the air. Your ears must have played a trick on you.  */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @46 /*Morte gives you a reproachful look. "Hey, chief. You could pet me sometime and ask who's a good skull." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @47 /*"Why would anyone other than collectors want to touch you, skull?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @48 /*"Funny you should say that, cause just the other day I was asking them how much they'd pay for you!" Morte huffs. "I've got feelings too, you know?" [MRT531] */
EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.G1d
@51 /*You turn to leave when you hear an animal panting heavily behind you. You glance over your shoulder, but nothing has changed. The girl continues to stroke the air. Your ears must have played a trick on you.  */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @52 /*Morte gives you a reproachful look. "Hey, chief. You could pet me sometime and ask who's a good skull." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @53 /*"If you're a good boy, we'll see what we can do." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @54 /*"Oh, the gods are merciful!" [MRT485] */
EXIT
CHAIN IF~~THEN g-bbD095 g-bbD095.G1e
@58 /*You turn to leave when you hear an animal panting heavily behind you. You glance over your shoulder, but nothing has changed. The girl continues to stroke the air. Your ears must have played a trick on you.  */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @59 /*Morte gives you a reproachful look. "Hey, chief. You could pet me sometime and ask who's a good skull." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @60 /*"Why would anyone other than collectors want to touch you, skull?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @61 /*"Funny you should say that, cause just the other day I was asking them how much they'd pay for you!" Morte huffs. "I've got feelings too, you know?" [MRT531] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @62 /*"If you're a good boy, we'll see what we can do." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @63 /*"Oh, the gods are merciful!" [MRT485] */
EXIT