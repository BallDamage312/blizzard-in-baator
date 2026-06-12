BEGIN g-bbD044
CHAIN IF~Global("g-beachintimid","GLOBAL",0) OR(3) NumInParty(6) CheckStatGT(Protagonist,18,STR) InParty("Vhail") Global("g-beachstatus","GLOBAL",1) Global("G-bouncertooweak","GLOBAL",0)~THEN g-bbD044 g-bbD044.override
@0 /*The entrance to the beach is guarded by a thug dressed in what looks like a stinking pile of old rags. His hair, glued with grease, is put up in an attempt to be intimidating. The boy is armed with a dagger. You notice that his pouch almost tears apart due to the weight of money hidden in it. His fingers are fidgeting nervously. */
=@1 /*He glances in your direction and quickly looks away as if he wanted nothing to do with you. */
END
IF~~THEN REPLY @3 /*"You had something to say to me?" */ DO~SetGlobal("G-bouncertooweak","GLOBAL",1)~ + g-bbD044.override2
IF~~THEN REPLY @4 /*Leave. */ DO~SetGlobal("G-bouncertooweak","GLOBAL",1)~ EXIT
CHAIN IF~Global("G-bouncertooweak","GLOBAL",1)~THEN g-bbD044 g-bbD044.overridetoo
@6 /*The bouncer glances in your direction and quickly looks away as if he wanted nothing to do with you. */
EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.override2
@9 /*"Well. You should... technically pay a hundred coppers to get in, but don't worry about it," the young man says apologetically.  */
==g-bbd044 IF~CheckStatGT(Protagonist,18,STR) !InParty("Vhail")~THEN @10 /*His eyes shift to your large biceps. */
==g-bbd044 IF~InParty("Vhail")~THEN @11 /*His eyes shift to Vhailor and he begins to tremble a bit. */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @12 /*The large Mercykiller does not seem to care about this exchange at all. His shining red eyes are piercing the young man with no emotion. */
END
IF~!PartyGoldLT(100)~THEN REPLY @14 /*"Oh. I will gladly pay if that's a requirement. Here." */ DO~SetGlobal("G-bouncertooweak","GLOBAL",1)~ + g-bbD044.pay
IF~~THEN REPLY @15 /*"Great, then I'll be on my way." */ DO~SetGlobal("G-bouncertooweak","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-beachstatus","GLOBAL",1) Global("g-beachintimid","GLOBAL",0) Global("G-bouncertooweak","GLOBAL",0)~THEN g-bbD044 g-bbD044.start1
@17 /*Your way is blocked by a young thug dressed in what looks like a stinking pile of old rags. His hair, glued with grease, is put up in an attempt to be intimidating. The boy is armed with a dagger. You notice that his pouch almost tears apart due to the weight of money hidden in it. His fingers are fidgeting nervously. */
=@18 /*"And where do you think you're going, berk?!" The bandit frowns in a threatening way. "Only regular guests can enter this beach freely. The entrance fee for everyone else is a hundred coppers!" */
END
IF~!PartyGoldLT(100)~THEN REPLY @20 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~PartyGoldLT(100)~THEN REPLY @21 /*Pay 100 coppers. */ DO~~ + g-bbD044.payfail
IF~CheckStatGT(Protagonist,13,DEX) Global("MoneyTaken","GLOBAL",0) Class(Protagonist,Thief)~THEN REPLY @22 /*Distract the bandit by knocking his dagger away and reach into his pouch. */ DO~GivePartyGold(125) SetGlobal("MoneyTaken","GLOBAL",1)~ + g-bbD044.takemoney
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @23 /*Spit in his face. */ DO~~ + g-bbD044.spit
IF~Global("g-beachpaid100","GLOBAL",0)~THEN REPLY @24 /*"I already paid for the ferry that took me to the beach. I just left for a moment." */ DO~~ + g-bbD044.shame
IF~Global("g-beachpaid100","GLOBAL",1)~THEN REPLY @25 /*"I already paid for the ferry that took me to the beach. I left, I came back, paid again and now you want me to pay *again*?" */ DO~~ + g-bbD044.shame
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @26 /*"I see what you're doing here. Perhaps you want to talk about it?" */ DO~~ + g-bbD044.talk
IF~~THEN REPLY @27 /*"I'll think about it. Time for me to go." */ DO~TeleportParty("ARG-00",[2143.1943],3) Face(4)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.shame
@30 /*"I didn't see ya. Give me a hundred coppers or get lost." */
END
IF~!PartyGoldLT(100)~THEN REPLY @32 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~PartyGoldLT(100)~THEN REPLY @33 /*Pay 100 coppers. */ DO~~ + g-bbD044.payfail
IF~CheckStatGT(Protagonist,13,DEX) Global("MoneyTaken","GLOBAL",0)~THEN REPLY @34 /*Distract the bandit by knocking his dagger away and reach into his pouch. */ DO~GivePartyGold(125) SetGlobal("MoneyTaken","GLOBAL",1)~ + g-bbD044.takemoney
IF~GlobalGT("G-money_beach","GLOBAL",200)~THEN REPLY @35 /*Spit in his face. */ DO~~ + g-bbD044.spit
IF~GlobalGT("G-money_beach","GLOBAL",200)~THEN REPLY @36 /*"I see what you're doing here. Perhaps you want to talk about it?" */ DO~~ + g-bbD044.talk
IF~~THEN REPLY @37 /*"I'll think about it. Time for me to go." */ DO~TeleportParty("ARG-00",[2143.1943],3) Face(4)~ EXIT
IF~~THEN REPLY @38 /*Attack the bouncer. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-beachalert","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-beachstatus","GLOBAL",0) Global("g-beachintimid","GLOBAL",0) Global("G-bouncertooweak","GLOBAL",0)~THEN g-bbD044 g-bbD044.start2
@40 /*Your way is blocked by a young thug dressed in what looks like a stinking pile of old rags. His hair, glued with grease, is put up in an attempt to be intimidating. The boy is armed with a dagger. You notice that his pouch almost tears apart due to the weight of money hidden in it. His fingers are fidgeting nervously. */
=@41 /*"G'day." */
END
IF~~THEN REPLY @43 /*"G'day." */ DO~~ EXIT
IF~~THEN REPLY @44 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.pay
@46 /*The young man's face lights up with a smile. "Thanks a lot, enjoy the beach." He deftly catches the money and hides it in his pouch. He does it very quickly, as if someone was trying to take away his prize. */
END
IF~~THEN REPLY @48 /*"Great." */ DO~SetGlobal("g-beachstatus","GLOBAL",0) SetGlobal("g-beachpaid100","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.payfail
@50 /*"Are you deaf?! Or simply daft?!" The bandit exhales loudly. "A hundred coppers. A hundred! You want me to spell it for you or what?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @51 /*"No worries, chief. Once we have a moment, I'll gladly teach you the basics of arithmetic." */
==g-bbd044 @52 /*The bouncer waits expectantly. */
END
IF~!PartyGoldLT(100)~THEN REPLY @54 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~CheckStatGT(Protagonist,13,DEX) Global("MoneyTaken","GLOBAL",0) Class(Protagonist,Thief)~THEN REPLY @56 /*Distract the bandit and reach into his pouch. */ DO~GivePartyGold(125) SetGlobal("MoneyTaken","GLOBAL",1)~ + g-bbD044.takemoney
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @57 /*Spit in his face. */ DO~~ + g-bbD044.spit
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @58 /*"I see what you're doing here. Perhaps you want to talk about it?" */ DO~~ + g-bbD044.talk
IF~~THEN REPLY @59 /*"I'll think about it. Time for me to go." */ DO~TeleportParty("ARG-00",[2143.1943],3) Face(4)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.takemoney
@61 /*With a swift movement, you knock the weapon from the thug's hand. He turns his back on you and reaches for the dagger lying on the ground. In the meantime, you quickly put your hand in the his pouch and pull out some of its contents. His jink goes straight into your pocket. */
=@62 /*With the dagger back in his hand, he glares at you. "You want to land in a box, punk?! Don't do that again!" Something tells you he will not be fooled with the same trick twice. */
END
IF~!PartyGoldLT(100)~THEN REPLY @64 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~PartyGoldLT(100)~THEN REPLY @65 /*Pay 100 coppers. */ DO~~ + g-bbD044.payfail
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @66 /*Spit in his face. */ DO~~ + g-bbD044.spit
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @67 /*"I see what you're doing here. Perhaps you want to talk about it?" */ DO~~ + g-bbD044.talk
IF~~THEN REPLY @68 /*"I'll think about it. Time for me to go." */ DO~TeleportParty("ARG-00",[2143.1943],3) Face(4)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.spit
@70 /*The young man automatically closes his eyes. Thick liquid running down his cheek allows him to understand what has just happened. He slowly opens his eyes. The first thing he sees is your cynical, challenging grin. He wipes the saliva with the back of his hand. */
=@71 /*"You just made a big mistake." He tries to hiss threateningly, but his self-esteem seems to have been broken into small pieces as if he could see that his words did not really impress you. */
END
IF~~THEN REPLY @73 /*"A true mistake was you being born. I bet this pathetic worm called your mother still grieves over this fact." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself)~ + g-bbD044.fight
IF~CheckStatGT(Protagonist,14,STR)~THEN REPLY @74 /*"You'll make an even bigger mistake if you ever approach me again. Now, get out of my way." */ DO~SetGlobal("g-beachintimid","GLOBAL",1)~ + g-bbD044.intimid
IF~CheckStatLT(Protagonist,15,STR)~THEN REPLY @75 /*"You'll make an even bigger mistake if you ever approach me again. Now, get out of my way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-beachalert","GLOBAL",1)~ + g-bbD044.fight2
CHAIN IF~~THEN g-bbD044 g-bbD044.fight
@77 /*At first, the young man looks like he is about to cry. However, sadness quickly transforms into fury. "I'll kill you, you son of a bitch!" The bandit launches at you. */
EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.talk
@80 /*"And what is there to talk about?!" The bandit scowls at you. "Give me the jink or get out of my sight." */
END
IF~~THEN REPLY @82 /*"Big words from a small man. Look at you. You're a nobody. You would do everyone a favor if you decided to roll over and die." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself)~ + g-bbD044.fight
IF~!PartyGoldLT(100)~THEN REPLY @83 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~PartyGoldLT(100)~THEN REPLY @84 /*Pay 100 coppers. */ DO~~ + g-bbD044.payfail
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @85 /*"It's obvious that you are not thug material. Why are you playing this game?" */ DO~~ + g-bbD044.talkint1
IF~CheckStatGT(Protagonist,16,WIS)~THEN REPLY @86 /*"You are a product of your environment. High social expectations and a lack of perspectives lead to destructive behavior. Perhaps some childhood trauma also plays a role. Add typical tendencies to aggression to the mix, and there you are - a bandit." */ DO~~ + g-bbD044.talkwis
IF~~THEN REPLY @87 /*"Never mind..." */ DO~~ + g-bbD044.start3
CHAIN IF~~THEN g-bbD044 g-bbD044.start3
@89 /*The bouncer awaits your move. */
END
IF~!PartyGoldLT(100)~THEN REPLY @91 /*Pay 100 coppers. */ DO~TakePartyGold(100) IncrementGlobal("G-money_beach","GLOBAL",100)~ + g-bbD044.pay
IF~PartyGoldLT(100)~THEN REPLY @92 /*Pay 100 coppers. */ DO~~ + g-bbD044.payfail
IF~CheckStatGT(Protagonist,13,DEX) Global("MoneyTaken","GLOBAL",0)~THEN REPLY @93 /*Distract the bandit and reach into his pouch. */ DO~GivePartyGold(125) SetGlobal("MoneyTaken","GLOBAL",1)~ + g-bbD044.takemoney
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @94 /*Spit in his face. */ DO~~ + g-bbD044.spit
IF~GlobalGT("G-money_beach","GLOBAL",100)~THEN REPLY @95 /*"I see what you're doing here. Perhaps you want to talk about it?" */ DO~~ + g-bbD044.talk
IF~~THEN REPLY @96 /*"I'll think about it. Time for me to go." */ DO~TeleportParty("ARG-00",[2143.1943],3) Face(4)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.talkint1
@98 /*"What are you, my mother? Pike off." */
=@99 /*He seems self-conscious, looking around at nothing in particular. He is obviously afraid of the direction this conversation is heading. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @100 /*"Come on, chief. You got the kid in the corner. Full ahead!" */
END
IF~~THEN REPLY @102 /*"You're a scared kiddo. You don't want to pretend to be the bandit, but for some reason you have to do it. Why?" */ DO~~ + g-bbD044.talkint2
IF~~THEN REPLY @103 /*"Never mind..." */ DO~~ + g-bbD044.start3
CHAIN IF~~THEN g-bbD044 g-bbD044.talkint2
@105 /*He opens his mouth, but nothing comes out. He looks you in the eye and you sense a deep sadness in his gaze. You get the impression that he might be willing to answer your question - if only the circumstances were different. The moment passes quickly and soon he is back to his cocky self. */
=@106 /*"I said pike off. Give me the copper and go rattle your bone-box at the ladies at the beach. Maybe they'll have time to listen to that kind of barkle." */
END
IF~CheckStatGT(Protagonist,14,STR)~THEN REPLY @108 /*"Ask me to pay you one more time and you'll learn why kids shouldn't play with daggers. Now, get out of my way." */ DO~SetGlobal("g-beachintimid","GLOBAL",1)~ + g-bbD044.intimid
IF~CheckStatLT(Protagonist,15,STR)~THEN REPLY @109 /*"Ask me to pay you one more time and you'll learn why kids shouldn't play with daggers. Now, get out of my way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-beachalert","GLOBAL",1)~ + g-bbD044.fight2
IF~~THEN REPLY @110 /*"Never mind..." */ DO~~ + g-bbD044.start3
CHAIN IF~~THEN g-bbD044 g-bbD044.fight2
@112 /*The young man looks around nervously, as if he was checking if anyone had witnessed his humiliation. His hand is trembling visibly as he tightens his grip on the dagger. He raises his voice to make sure that he will be heard by everyone in the vicinity: "Save your threats for the Dusties at the Mortuary. You'll get there soon enough." */
EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.intimid
@115 /*The young man looks around nervously, as if he was checking if anyone had witnessed his humiliation. Finally, he takes a step back and turns his gaze to the ground. "Move along." */
EXIT
CHAIN IF~Global("g-beachintimid","GLOBAL",1) Global("G-bouncertooweak","GLOBAL",0)~THEN g-bbD044 g-bbD044.startintimid
@118 /*The bouncer stares you down. "No fee for regulars," he says through gritted teeth. */
END
IF~~THEN REPLY @120 /*"Obviously." */ DO~SetGlobal("g-beachintimid","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD044 g-bbD044.talkwis
@122 /*The bandit looks at you as if you had grown a second head. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @123 /*The redhead also looks at you as if you had grown a second head. */
==g-bbd044 @124 /*The bandit laughs. His laugh, however, sounds very, very uncertain. "What is this babble?" */
END
IF~~THEN REPLY @126 /*"There's something else, right? Some additional motive. So, why did you become a criminal?" */ DO~~ + g-bbD044.talkint2