BEGIN g-bbD046
CHAIN IF~Global("G-beach","GLOBAL",0)~THEN g-bbD046 g-bbD046.start
@0 /*You have already realized that the beach is a unique place, very different from the rest of the Ditch. Most of the people you meet here are not typical residents of this part of town. You can see this, for example, in the two women lying on colorful towels near the shore. They must be around fifty, but their fancifully dyed hair, large straw hats, and low-cut swimsuits make them look several decades younger. One of them seems a little worried. You hear her speak to the other. */
==g-bbd045 @1 /*"I don't know, Mila. Was this really a good idea? It's so... weird here. Look at all the trash buried in the sand! I don't even know if it's real sand or just gravel! And look at the water, it's so dirty! And that shape floating on the surface by the pier? It looks like a dead rat!" */
==g-bbd046 @2 /*"Come on, give it a rest. It's all about your attitude! Sure, this beach may be a little... rustic, but it's not that bad! At least we got away from the Clerk's Ward for a while! Think about it, two weeks without our boring husbands, we're free as birds!" */
==g-bbd045 @3 /*"We should have saved up and gone to the beach in Portico or Arkenos with Tessa and Gisella in a year or two..." */
==g-bbd046 @4 /*"Nonsense! Elysium and Arborea are overrated, only rich snobs with no taste or originality go there! Trust me, at least this place has character. And you know, doctors recommend going to the seaside every year to breathe in the sea breeze. It's good for your complexion or something." */
==g-bbd045 @5 /*"I don't know if it's good for our complexion when someone sticks a knife under our ribs! Look how the locals are staring at us! As if we were piggy banks with coins inside!" */
==g-bbd046 @6 /*The woman rolls her eyes. "I didn't know you were so paranoid, Philomena. People are people, I don't know what you're talking about." At that moment, the woman notices that you have approached. */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @8 /*"Ladies..." */ DO~SetGlobal("G-beach","GLOBAL",1)~ + g-bbD046.partytime
IF~!CheckStatGT(Protagonist,18,CHR)
!CheckStatLT(Protagonist,12,CHR)~THEN REPLY @9 /*"Greetings..." */ DO~SetGlobal("G-beach","GLOBAL",2)~ + g-bbD046.neutral
IF~CheckStatLT(Protagonist,12,CHR)~THEN REPLY @10 /*"Uhh... hello..." */ DO~SetGlobal("G-beach","GLOBAL",3)~ + g-bbD046.scare
CHAIN IF~~THEN g-bbD046 g-bbD046.scare
@12 /*You feel their eyes on you as they scrutinize you from head to toe. They grimace. They clearly do not like what they see. */
==g-bbd046 @13 /*"You know, Philomena, maybe you're right. They're just uncouth brutes. And with faces you wouldn't want to meet in a dark alley. Or in a well-lit one, for that matter. Let's go home while we still can." */
==g-bbd045 @14 /*
She sighs with relief. "That's the best idea I've heard all day!'" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @15 /*"Hehe, you're so ugly, chief. You're just scaring people." */
END
IF~~THEN REPLY @17 /*"Ouch." */ DO~ActionOverride("g-bb045",EscapeArea()) ActionOverride("g-bb046",EscapeArea())~ EXIT
CHAIN IF~~THEN g-bbD046 g-bbD046.neutral
@19 /*You feel their eyes on you as they look you up and down. Their faces remain neutral. You did not make an impression on them, neither good nor bad. Maybe that is a good thing. */
==g-bbd046 @20 /*"Oh, you're exaggerating. People here look the same as everywhere else in Sigil," the woman says to her friend. She then turns to you directly, trying to be polite, but you get the impression she is not necessarily in the mood for conversation. "Can I help you?" */
END
IF~~THEN REPLY @22 /*"Hello, ladies. Who are you?" */ DO~~ + g-bbD046.A1
IF~~THEN REPLY @23 /*"No. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD046 g-bbD046.partytime
@25 /*You feel their eyes on you as they scan you from head to toe. You see their pupils dilate and a charming smile appear on their faces. You can read the signs. They've taken a liking to you. */
==g-bbd046 @26 /*"Oh my, Philomena, you're absolutely wrong! Look at the hottie who's come to our humble towel-clad doorstep!" */
==g-bbd045 @27 /*The second woman also takes a closer look at you. She nods approvingly and twirls a strand of hair around her finger in a flirtatious gesture. "Oh! Hello! Can we help you with anything?" */
END
IF~~THEN REPLY @29 /*"Hello, beautiful ladies. May I ask your names?" */ DO~~ + g-bbD046.E1
IF~~THEN REPLY @30 /*"No, thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD046 g-bbD046.A1
@32 /*You haven't gained her trust, so her response is rather curt. "I'm Mila, and this is Philomena, my friend. We're on vacation. Sorry, but we're not looking for company. See you later." */
END
IF~~THEN REPLY @34 /*"But I just wanted to ask a few questions!" */ DO~~ + g-bbD046.C1
IF~~THEN REPLY @35 /*"Well. Have fun." */ DO~~ EXIT
CHAIN IF~Global("G-beach","GLOBAL",2)~THEN g-bbD046 g-bbD046.C1
@37 /*The woman is ostentatiously ignoring you. She talks intensely to her friend about the weather, then deftly changes the subject to the latest fashion trends among the middle class in the Clerk's Ward. She considers the conversation over. */
EXIT
CHAIN IF~~THEN g-bbD046 g-bbD046.E1
@40 /*The woman giggles, stretching out her legs. The red nail polish on her left toe digs into the sand. "I'm Mila. And this is Filomena, my friend. We're on vacation, but we're so bored!" She sighs deeply with a practiced gesture designed to make her breasts sway as much as possible. "Would you like to keep us company, sweetie?" */
END
IF~~THEN REPLY @42 /*"With wild delight." */ DO~SetGlobal("G-beachest","GLOBAL",1) RestPartyEx(0, 0, true)~ EXIT
IF~~THEN REPLY @43 /*"Not right now. Goodbye." */ DO~~ EXIT
CHAIN IF~Global("G-beach","GLOBAL",1) Global("G-beachest","GLOBAL",1)~THEN g-bbD046 g-bbD046.G1
@45 /*"Oh, how wonderful! It was worth coming here, wasn't it, Philomena?" */
==g-bbd046 @46 /*"Oh, yes!" The woman fixes her tousled hair and winks at you. "Definitely!" */
==g-bbd045 @47 /*"Come see us again sometime when you're in the area. We'll have fun." */
END
IF~~THEN REPLY @49 /*"Sure. See you later." */ DO~SetGlobal("G-beachest","GLOBAL",0)~ EXIT
IF~~THEN REPLY @50 /*"We'll see. Goodbye." */ DO~SetGlobal("G-beachest","GLOBAL",0)~ EXIT
CHAIN IF~Global("G-beach","GLOBAL",1) Global("G-beachest","GLOBAL",0)~THEN g-bbD046 g-bbD046.H1
@52 /*The woman smiles broadly when she sees you. "Ah, it's you! You're back! Want to have some fun, sweetie?" */
END
IF~~THEN REPLY @54 /*"Of course! Let's go dancing." */ DO~SetGlobal("G-beachest","GLOBAL",1) RestPartyEx(0, 0, true)  ~ EXIT
IF~~THEN REPLY @55 /*"Maybe later. See you." */ DO~~ EXIT