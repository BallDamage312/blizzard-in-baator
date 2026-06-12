BEGIN g-bbD005
CHAIN IF~GlobalGT("G-BBmain","GLOBAL",5) !CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") ~THEN g-bbD005 g-bbD005.startovertime
@0 /*Joseph watches you approach. "Look, cutters, this one's back again." */
END
IF~~THEN REPLY @2 /*"Wrong tavern, sorry." */ DO~~ EXIT
IF~~THEN REPLY @3 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) ~ EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD005 g-bbD005.start
@5 /*Before you is a large, bulky man whose shaved scalp is covered in impressive tattoos. His leather attire is adorned with a plethora of studs and spikes. He watches you warily as you approach. "Look, cutters, e've got a visitor." [g-00501] */
END
IF~OR(2) PartyHasItem("g-bbi009") PartyHasItem("g-bbi010") Global("G-rivergatekeyaware","GLOBAL",1)~THEN REPLY @7 /*Holding the goblet, take a step forward under the arch. */ DO~SetGlobal("G-rivergateportal","GLOBAL",2)~ + g-bbD005.thru
IF~OR(2) PartyHasItem("g-bbi009") PartyHasItem("g-bbi010") Global("G-rivergatekeyaware","GLOBAL",0)~THEN REPLY @8 /*Approach. */ DO~SetGlobal("G-rivergateportal","GLOBAL",2)~ + g-bbD005.thru
IF~!PartyHasItem("g-bbi009") !PartyHasItem("g-bbi010")~THEN REPLY @9 /*"What-" */ DO~SetGlobal("G-rivergateportal","GLOBAL",1) SetGlobal("G-intowater","GLOBAL",1) StartCutScene("g-bbc001")~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD005 g-bbD005.start2
@11 /*Joseph watches you approach. "Look, cutters, this one ain't quick to fold." */
END
IF~OR(2) PartyHasItem("g-bbi009") PartyHasItem("g-bbi010") Global("G-rivergatekeyaware","GLOBAL",1)~THEN REPLY @13 /*Holding the goblet, take a step forward under the arch. */ DO~SetGlobal("G-rivergateportal","GLOBAL",2)~ + g-bbD005.thru
IF~OR(2) PartyHasItem("g-bbi009") PartyHasItem("g-bbi010") Global("G-rivergatekeyaware","GLOBAL",0)~THEN REPLY @14 /*Approach. */ DO~SetGlobal("G-rivergateportal","GLOBAL",2)~ + g-bbD005.thru
IF~!PartyHasItem("g-bbi009") !PartyHasItem("g-bbi010")~THEN REPLY @15 /*"What-" */ DO~SetGlobal("G-rivergateportal","GLOBAL",1) SetGlobal("G-intowater","GLOBAL",1) StartCutScene("g-bbc001")~ EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.thru
@17 /*Past the trapped arch, a menagerie of thugs is holding a small devilish creature hostage. As you step closer, some of them immediately get up. "He's actually coming, he's giving our gate a laugh. What do you say, berk?" [g-00502] */
END
IF~~THEN REPLY @19 /*"Greetings. Black Joseph, I presume? I came for the imp." */ DO~SetGlobal("g-josephmet","GLOBAL",1)~ + g-bbD005.imp
IF~~THEN REPLY @20 /*"Greetings. Black Joseph, I presume? I came to join you." */ DO~SetGlobal("g-josephmet","GLOBAL",1)~ + g-bbD005.join
IF~CheckStatGT(Protagonist,17,CHR)~THEN REPLY @21 /*Bluff: "You know why I'm here, Joe." */ DO~SetGlobal("g-josephmet","GLOBAL",1)~ + g-bbD005.bluff
IF~!CheckStatGT(Protagonist,17,CHR)~THEN REPLY @22 /*Bluff: "You know why I'm here, Joe." */ DO~SetGlobal("g-josephmet","GLOBAL",1)~ + g-bbD005.bluffF
IF~~THEN REPLY @23 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6) SetGlobal("g-josephmet","GLOBAL",1)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.imp
@25 /*Black Joseph scoffs and looks to his companions while crossing his muscular arms. "You mean the spy? He workin' for you?" */
END
IF~~THEN REPLY @27 /*"Yes, he works for me. I came to retrieve him." */ DO~~ + g-bbD005.imp2
IF~CheckStatGT(Protagonist,17,STR)~THEN REPLY @28 /*Intimidation: "Not anymore. I came to slaughter him... and you if I must." */ DO~~ + g-bbD005.int
IF~!CheckStatGT(Protagonist,17,STR)~THEN REPLY @29 /*Intimidation: "Not anymore. I came to slaughter him... and you if I must." */ DO~~ + g-bbD005.intf
IF~~THEN REPLY @30 /*"No. But I am willing to buy him out." */ DO~~ + g-bbD005.bribe
CHAIN IF~~THEN g-bbD005 g-bbD005.bribe
@32 /*The gang leader scratches his chin. "Really? What's your offer, berk?" */
END
IF~CheckStatGT(Protagonist,17,STR)~THEN REPLY @34 /*"How about I let you live? A good offer, isn't it?" */ DO~~ + g-bbD005.int
IF~!CheckStatGT(Protagonist,17,STR)~THEN REPLY @35 /*"How about I let you live? A good offer, isn't it?" */ DO~~ + g-bbD005.intf
IF~PartyGoldGT(99)~THEN REPLY @36 /*"I can offer you a hundred coppers." */ DO~~ + g-bbD005.bribeF
IF~PartyGoldGT(299)~THEN REPLY @37 /*"I can offer you three hundred coppers." */ DO~~ + g-bbD005.bribeF
IF~PartyGoldGT(499)~THEN REPLY @38 /*"I can offer you five hundred coppers." */ DO~~ + g-bbD005.bribeF
IF~PartyGoldGT(999)~THEN REPLY @39 /*"I can offer you a thousand coppers." */ DO~~ + g-bbD005.bribeF
IF~PartyGoldGT(9999)~THEN REPLY @40 /*"I can offer you ten thousand coppers." */ DO~~ + g-bbD005.bribe2
CHAIN IF~~THEN g-bbD005 g-bbD005.bribeF
@43 /*Joseph gives you a sly smile and looks at his companions. They seem to be readying their shivs. */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @44 /*"Justice is due... soon." */
==g-bbd005 @45 /*"How about it? Shiv time?" [g-00504] */
END
IF~CheckStatGT(Protagonist,13,CHR)~THEN REPLY @47 /*"Alright! Let me try again!" */ DO~~ + g-bbD005.bribe
IF~~THEN REPLY @48 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.intf
@50 /*Black Joseph theatrically pretends to shiver in fear. Then he laughs, making a gesture with his hand, signaling his underlings to strike. */
END
IF~~THEN REPLY @52 /*"Wait, I-" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.bribe2
@54 /*The gang members look at each other with excitement, and whispers begin to spread. Black Joseph raises his hand and silence follows. "That's some grand garnish, bub. How do I know you good for it?" */
END
IF~~THEN REPLY @56 /*Show him the copper. */ DO~~ + g-bbD005.copper
IF~CheckStatGT(Protagonist,13,CHR)~THEN REPLY @57 /*"I am good for it. Just give me the imp." */ DO~TakePartyGold(10000)~ + g-bbD005.resolution
IF~!CheckStatGT(Protagonist,13,CHR)~THEN REPLY @58 /*"I am good for it. Just give me the imp." */ DO~~ + g-bbD005.goodf
CHAIN IF~~THEN g-bbD005 g-bbD005.copper
@61 /*As soon as the jink appears, all eyes are on you. The silence becomes tense. "That is a lot of coin, basher. And you got it out pretty quick, which makes me wonder... Are we gonna score some stacks here?" */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @63 /*"We do not have to do anything rash. Take it and I'll leave quietly with the imp." */ DO~TakePartyGold(10000)~ + g-bbD005.resolution
IF~~THEN REPLY @64 /*Get ready for battle. */ DO~Help() Enemy() Attack(Protagonist) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.resolution
@66 /*Black Joseph smiles. "The imp is yours, blood. He was a leatherhead full of grail, anyway." [g-00503] */
END
IF~~THEN REPLY @68 /*"Thanks. Pleasure doing business." */ DO~SetGlobal("g-bbprodforgold","GLOBAL",1) SetGlobal("g-bbmain","GLOBAL",6) AddexperienceParty(30000) StartCutSceneMode() StartCutScene("g-bbC002")~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.int
@70 /*The gang boss seems to inspect you very carefully, as if weighing you against the lot of them. */
END
IF~~THEN REPLY @72 /*Cross your arms. */ DO~~ + g-bbD005.resolution
IF~~THEN REPLY @73 /*Sigh impatiently. */ DO~~ + g-bbD005.resolution
IF~~THEN REPLY @74 /*Stand perfectly still, staring a hole into Joseph. */ DO~~ + g-bbD005.resolution
CHAIN IF~~THEN g-bbD005 g-bbD005.goodf
@76 /*"No..." [g-00505] */
END
IF~~THEN REPLY @78 /*Show him the copper. */ DO~~ + g-bbD005.copper
IF~~THEN REPLY @79 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.imp2
@81 /*"And who are you well-lanned with? Who in this piking hole dares to stand before Black Joseph and think they won't end up on the leafless tree? Who sent you?" [g-00507] */
==g-bbd006 @82 /*The imp takes a long and careful look at you. His pointy ears shiver with anticipation. */
END
IF~~THEN REPLY @84 /*"I only represent myself." */ DO~~ + g-bbD005.solo
IF~~THEN REPLY @85 /*"The Nine Hells." */ DO~~ + g-bbD005.HELLS
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @86 /*"The Society of Sensation." */ DO~~ + g-bbD005.badfaction
IF~GlobalGT("Join_Dustmen","GLOBAL",0)~THEN REPLY @87 /*"The Dustmen" */ DO~~ + g-bbD005.badfaction
IF~GlobalGT("Join_Godsmen","GLOBAL",0)~THEN REPLY @88 /*"The Believers of the Source." */ DO~~ + g-bbD005.badfaction
IF~GlobalGT("Join_Anarchists","GLOBAL",0)~THEN REPLY @89 /*"The Anarchists." */ DO~~ + g-bbD005.resolution
IF~GlobalGT("Join_Chaosmen","GLOBAL",0)~THEN REPLY @90 /*"The Xaositects." */ DO~~ + g-bbD005.resolution
IF~Global("G-Doomguard_Friend","GLOBAL",1)~THEN REPLY @91 /*Lie: "The Doomguard." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD005.resolution
IF~~THEN REPLY @92 /*Lie: "The Lady of Pain." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD005.LOP
IF~~THEN REPLY @93 /*"Dark Alley Shivs." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD005.resolution
IF~~THEN REPLY @94 /*"Razor Angels." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD005.resolution
CHAIN IF~~THEN g-bbD005 g-bbD005.badfaction
@96 /*The boss chuckles slightly, then bursts out in a big laugh. The rest of the gang make sure it is appropriate to laugh and eventually join in. */
=@97 /*"Hells, this is piking *SCARY*. Come on, cutters, let's put this sod back in his place." [g-00506] */
END
IF~~THEN REPLY @99 /*Get ready for battle. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.HELLS
@101 /*The boss grows visibly angry. His expression soon spreads to his companions. */
=@102 /*"It's what I thought. We don't want your dirty kind here. Come on, cutters, let's put this sod back in his place." */
END
IF~~THEN REPLY @104 /*Get ready for battle. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.LOP
@106 /*The room falls silent. The gang members seem to shift slightly, drawing closer to one another while looking around for any sign of the Lady. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @107 /*Morte whispers into your ear: "Chief, I... trust you know what you're doing." */
END
IF~~THEN REPLY @109 /*Say nothing. */ DO~IncrementGlobal("Lady","GLOBAL",6)~ + g-bbD005.resolution
CHAIN IF~~THEN g-bbD005 g-bbD005.solo
@111 /*Joseph raises his brow. "So no scary high-up is going to be catching a skeg for you, that's what yer saying?" */
END
IF~~THEN REPLY @113 /*"Yes. I will do just fine on my own, here." */ DO~~ + g-bbD005.intf
IF~~THEN REPLY @114 /*"Well... No, bu-" */ DO~~ + g-bbD005.violent
CHAIN IF~~THEN g-bbD005 g-bbD005.bluff
@116 /*Black Joseph raises an eyebrow and pauses for a moment. Evidently, he was expecting someone. "Riiight. So, how do you want to do this?" */
END
IF~~THEN REPLY @118 /*"Give me the imp." */ DO~~ + g-bbD005.resolution
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @119 /*"You need to leave now. It is time..." */ DO~FadeToColor([20.0],0) ActionOverride("G-BB005",DestroySelf()) ActionOverride("G-BB033",DestroySelf()) ~ + g-bbD005.LEAVE
IF~!CheckStatGT(Protagonist,19,CHR)~THEN REPLY @120 /*"You need to leave now. It is time..." */ DO~~ + g-bbD005.bluffF
CHAIN IF~~THEN g-bbD005 g-bbD005.bluffF
@122 /*Black Joseph stares at you in silence. You can almost see the cogs turning in his head. "Nah. You're full of it, berk." He makes a gesture with his hand, signaling his minions to strike. [g-00508] */
END
IF~~THEN REPLY @124 /*"Wait, I-" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.join
@126 /*Black Joseph looks at you suspiciously. "We don't just let strangers in, berk." */
END
IF~!GlobalGT("LAW","GLOBAL",-5) Global("G-adrean_news","GLOBAL",1)~THEN REPLY @128 /*"I am no stranger. I am the one that is causing all these people to disappear." */ DO~~ + g-bbD005.murder
IF~~THEN REPLY @129 /*"All right, I actually came for the imp." */ DO~~ + g-bbD005.imp
CHAIN IF~~THEN g-bbD005 g-bbD005.violent
@131 /*Black Joseph makes a gesture with his hand, signaling his underlings to strike. */
END
IF~~THEN REPLY @133 /*"Wait, I-" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.LEAVE
@135 /*Black Joseph nods in understanding, then signals his men. With a hint of confusion, they start to get ready to leave. */
END
IF~~THEN REPLY @137 /*Wait for them to go. */ DO~FadeFromColor([30.0],0) AddexperienceParty(60000) SetGlobal("g-bbmain","GLOBAL",6) SetGlobal("g-bbprodforgold","GLOBAL",1) ~ SOLVED_JOURNAL @20012 + g-bbD005.LEAVE2
CHAIN IF~~THEN g-bbD005 g-bbD005.LEAVE2
@139 /*After a couple minutes, the Rivergate tavern is devoid of Joseph or any of his people, leaving only Prod at the inner portion of the room. */
EXIT
CHAIN IF~~THEN g-bbD005 g-bbD005.murder
@142 /*He suddenly loses his calm. He grips his weapon and yells: "What the... My brother went missing too! Get him!" */
END
IF~~THEN REPLY @144 /*"Wait, I-" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-bbmain","GLOBAL",6)~ SOLVED_JOURNAL @20012 EXIT