BEGIN g-bbD016
CHAIN IF~NumTimesTalkedTo(0) Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) Global("G-kuotoakiaran","GLOBAL",0) Global("g-kuotoagone","GLOBAL",0) Global("g-kuotoadead","GLOBAL",0) Global("g-kuotoaraid","GLOBAL",0) Global("g-kilthasshowdown","GLOBAL",0) Global("G-kuotoaprisonersfree","GLOBAL",0)~THEN g-bbD016 g-bbD016.godstart
@0 /*One of the prisoners chosen for sacrifice by the kuo-toa stands out from the others. His skin bears a metallic sheen and is covered in thorns. Unlike the other captives, his eyes show no trace of fear or impending doom. */
==g-bbd016 IF ~Global("G-knowbladelings","GLOBAL",0)~ THEN @1 /*As you draw closer, you notice that his body is covered in countless scars, some strikingly similar to the ones you bear. They appear to have been inflicted by crude, primitive weapons. A horned skull has been branded into his shoulder. Several of the creature's thorns have been broken off. His rough, muscular arms are shackled and raised above him, while his feet stand submerged in a shallow pool of water. Yet none of these hardships diminish the look of determined defiance in the prisoner's eyes. */
==g-bbd016 IF ~Global("G-knowbladelings","GLOBAL",0)~ THEN @2 /*You recognize what this creature is. One of your past incarnations must have fought alongside, or perhaps against, others of its kind. The memory is hazy. You smell rust. A flat red horizon stretches before you. The clash of battle echoes from every direction. You and several of those thorn-covered creatures charge toward a siege engine, lightning erupting around it. The memory ends with a vast metallic cloud swallowing the sky. Acheron. [SPTR_01] */
==g-bbd016 IF ~Global("G-knowbladelings","GLOBAL",1)~ THEN @3 /*He is a bladeling. He reminds you of the tattoo artist from Rigus. His body is covered in countless scars, some strikingly similar to the ones you bear. They appear to have been inflicted by crude, primitive weapons. A horned skull has been branded into his shoulder. Several of the creature's thorns have been broken off. His rough, muscular arms are shackled and raised above him, while his feet stand submerged in a shallow pool of water. Yet none of these hardships diminish the look of determined defiance in the prisoner's eyes. */
==g-bbd016 IF~Global("G-knowbladelings","GLOBAL",0)~THEN @4 /*"How long are you going to keep staring, berk?" The bladeling's voice is gritty and weary. Bladelings. That is what their kind is called. He speaks with a slight lisp, and several of his teeth are missing. */
==g-bbd016 IF~Global("G-knowbladelings","GLOBAL",1)~THEN @5 /*"How long are you going to keep staring, berk?" The bladeling's voice is gritty and weary. Bladelings. That is what their kind is called. He speaks with a slight lisp, and several of his teeth are missing. */
END
IF~~THEN REPLY @7 /*Ignore his question and examine him closely. */ DO~SetGlobal("g-knowKilthas","GLOBAL",1) SetGlobal("G-knowbladelings","GLOBAL",1)~ + g-bbD016.IV.B
IF~~THEN REPLY @8 /*"Sorry. I was just wondering what you are." */ DO~SetGlobal("g-knowKilthas","GLOBAL",1) SetGlobal("G-knowbladelings","GLOBAL",1) SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.D
IF~~THEN REPLY @9 /*"I'll be staring long after you're in the dead-book, 'berk'. Farewell." */ DO~SetGlobal("g-knowKilthas","GLOBAL",1) SetGlobal("G-knowbladelings","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-kilthasshowdown","GLOBAL",0) OR(3) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoadead","GLOBAL",1) Global("g-kuotoaraid","GLOBAL",1)~THEN g-bbD016 g-bbD016.deadstart
@11 /*"Well, you dealt with them beautifully. Though I'd have loved to impale them on my blades myself. Still, I may yet find a few worthy candidates." He stretches, his joints snapping with a sharp metallic crack. "But you're here to learn the dark of this story, aren't you?" He straightens and folds his arms across his chest. "Ask away." */
END
IF~~THEN REPLY @13 /*"Who are you?" */ DO~~ + g-bbD016.IV.G
IF~~THEN REPLY @14 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~Global("g-kilthasshowdown","GLOBAL",1)~THEN g-bbD016 g-bbD016.eat
@16 /*"I'll admit it. I like you and your style, but it seems we've ended up on opposite sides of the sword. You tried to eat me, so I'm afraid we'll have to settle that the hard way." The bladeling hurls himself at you. */
END
IF~~THEN REPLY @18 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) ~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) Global("G-kuotoakiaran","GLOBAL",0) Global("g-kuotoagone","GLOBAL",0) Global("g-kilthasshowdown","GLOBAL",0) Global("G-kuotoaprisonersfree","GLOBAL",0)~THEN g-bbD016 g-bbD016.invalid
@20 /*"Why are you still talking to me?" The bladeling speaks through clenched teeth as he glances at the surrounding kuo-toa. */
END
IF~Class(Protagonist,Thief) Global("g-knowKilthas2","GLOBAL",1)~THEN REPLY @22 /*Carefully pick the lock on the chains and quietly free the prisoner. */ DO~~ + g-bbD016.IV.E
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") Global("g-knowKilthas2","GLOBAL",1)~THEN REPLY @23 /*"Annah, please unlock his shackles." */ DO~~ + g-bbD016.IV.E
IF~Class(Protagonist,Fighter) Global("g-knowKilthas2","GLOBAL",1)~THEN REPLY @24 /*Target the chain's weakest link and crush the shackles. */ DO~~ + g-bbD016.IV.E
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon") Global("g-knowKilthas2","GLOBAL",1)~THEN REPLY @25 /*"Nobody deserves to be chained. Dak'kon, free him." */ DO~~ + g-bbD016.IV.E
IF~Global("g-knowKilthas2","GLOBAL",1)~THEN REPLY @26 /*"I will convince the fish people to let you go. Hold on for a while longer." */ DO~~ EXIT
IF~!InParty("Morte") !InParty("Grace") Global("g-knowKilthas2","GLOBAL",0)~THEN REPLY @27 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.D
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") !InParty("Grace") Global("g-knowKilthas2","GLOBAL",0)~THEN REPLY @28 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dm
IF~!InParty("Morte") InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace") Global("g-knowKilthas2","GLOBAL",0)~THEN REPLY @29 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-bhaaldead","GLOBAL",1) SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dg
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace") Global("g-knowKilthas2","GLOBAL",0)~THEN REPLY @30 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-bhaaldead","GLOBAL",1) SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dmg
IF~~THEN REPLY @31 /*"I don't want anything to do with you. Keep rotting." */ DO~~ EXIT
CHAIN IF~Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) Global("G-kuotoakiaran","GLOBAL",0) Global("g-kuotoagone","GLOBAL",0) Global("g-kilthasshowdown","GLOBAL",0) Global("G-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD016 g-bbD016.invalid
@33 /*One of the prisoners does not leave with the others and instead leans against one of the spikes, unbound. Seeing you approach, he raises his hands in a defensive gesture, though the rest of his body language remains calm. */
=@34 /*"I know I am free to go, 'Lord Scar', but I was really looking forward to speaking with you." */
END
IF~~THEN REPLY @36 /*"Right. So, who are you?" */ DO~~ + g-bbD016.IV.G
IF~~THEN REPLY @37 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",1) Global("g-kuotoagone","GLOBAL",0)~THEN g-bbD016 g-bbD016.kiaransaleestart
@39 /*The bladeling looks at you and the surrounding kuo-toa with sheer terror. The rebellious spark in his eye is gone, replaced by complete resignation. It looks almost tasty. */
EXIT
CHAIN IF~Global("G-kuotoabhaal","GLOBAL",1) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",0) Global("g-kuotoagone","GLOBAL",0)~THEN g-bbD016 g-bbD016.bhaalstart
@42 /*"Blood, not that I don't want you here, but why are you here?" */
END
IF~~THEN REPLY @44 /*"I just wanted to see how my flock is doing." */ DO~~ + g-bbD016.postA
IF~~THEN REPLY @45 /*"I just wanted to see what you're planning." */ DO~~ + g-bbD016.postB
IF~~THEN REPLY @46 /*"Farewell, Kilthas." */ DO~~ EXIT
IF~~THEN REPLY @47 /*"I changed my mind. I would like you and your cult to perish now." */ DO~SetGlobal("g-kuotoaangry","GLOBAL",1) Enemy() Attack("Protagonist")~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.B
@49 /*His tough skin is covered in scars, impressive even by your standards. Some wounds are old, while others are fresh and still bleeding, staining the nearby wooden spike red. Beyond the omnipresent barbs, two details draw your attention. On the bladeling's chest, two intertwined symbols are etched into his skin. One is a human skull surrounded by flaming tears. The other is one you have seen before. It is the Doomguard symbol, a horned skull of an unidentified creature. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @50 /*"The bladeling is a Sinker! How fitting. Perhaps he's where he belongs, chief." */
==DGrace IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace") InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @51 /*"I find it hard to agree with Mortimer, but I recognize these tears. He must be a follower of Bhaal, the patron of murder and slaughter. He was a cruel power, followed by similarly cruel acolytes. He was slain some years ago." */
==DGrace IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace") !InParty("Morte")~ THEN @52 /*"I recognize these tears. He must be a follower of Bhaal, the patron of murder and slaughter. He was a cruel power, followed by similarly cruel acolytes. He was slain some years ago." */
==g-bbd016 @53 /*"Oh yes, keep reading my skin." The prisoner whispers mockingly to you. "You like it when berks read your skin like an open book, don't you? I love it. I don't even have to actively intimidate them." */
END
IF~!InParty("Morte") !InParty("Grace")~THEN REPLY @55 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.D
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") !InParty("Grace")~THEN REPLY @56 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dm
IF~!InParty("Morte") InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~THEN REPLY @57 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-bhaaldead","GLOBAL",1) SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dg
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~THEN REPLY @58 /*"Sorry. I was just wondering who you are." */ DO~SetGlobal("g-bhaaldead","GLOBAL",1) SetGlobal("g-knowKilthas2","GLOBAL",1)~ + g-bbD016.IV.Dmg
IF~~THEN REPLY @59 /*"I don't want anything to do with you. Keep rotting." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.D
@61 /*"I'm a bladeling, a Sinker, a Bhaalite. But if you want more than that, you're going to have to set me free." */
=@62 /*"Unbind me from these chains and you can count on my gratitude. Not many ever get to have that." He speaks quickly, his tone low and discreet. "Just free me and I'll answer all your damned questions." */
END
IF~Class(Protagonist,Thief)~THEN REPLY @64 /*Carefully pick the lock on the chains and quietly free the prisoner. */ DO~~ + g-bbD016.IV.E
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") ~THEN REPLY @65 /*"Annah, please unlock his shackles." */ DO~~ + g-bbD016.IV.E
IF~Class(Protagonist,Fighter)~THEN REPLY @66 /*Target the chain's weakest link and crush the shackles. */ DO~~ + g-bbD016.IV.E
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon") ~THEN REPLY @67 /*"Nobody deserves to be chained. Dak'kon, free him." */ DO~~ + g-bbD016.IV.E
IF~~THEN REPLY @68 /*"I will convince the fish people to let you go. Hold on for a while longer." */ DO~~ EXIT
IF~~THEN REPLY @69 /*"Your answers aren't worth setting you loose on the planes." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.Dm
@71 /*"The mimir speaks the truth. I'm a bladeling, a Sinker, a Bhaalite. But if you want more than that, you're going to have to set me free. */
=@72 /*"Unbind me from these chains and you can count on my gratitude. Not many ever get to have that." He speaks quickly, his tone low and discreet. "Just free me and I'll answer all your damned questions." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @73 /*"Watch out, chief. The fish people may not like it..." */
END
IF~Class(Protagonist,Thief)~THEN REPLY @75 /*Carefully pick the lock on the chains and quietly free the prisoner. */ DO~~ + g-bbD016.IV.E
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") ~THEN REPLY @76 /*"Annah, please unlock his shackles." */ DO~~ + g-bbD016.IV.E
IF~Class(Protagonist,Fighter)~THEN REPLY @77 /*Target the chain's weakest link and crush the shackles. */ DO~~ + g-bbD016.IV.E
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~THEN REPLY @78 /*"Nobody deserves to be chained. Dak'kon, free him." */ DO~~ + g-bbD016.IV.E
IF~~THEN REPLY @79 /*"I will convince the fish people to let you go. Hold on for a while longer." */ DO~~ EXIT
IF~~THEN REPLY @80 /*"Your answers aren't worth setting you loose on the planes." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.Dg
@82 /*"The demon speaks the truth. I'm a bladeling, a Sinker, a Bhaalite. But if you want more than that, you're going to have to set me free." */
=@83 /*"Unbind me from these chains and you can count on my gratitude. Not many ever get to have that." He speaks quickly, his tone low and discreet. "Just free me and I'll answer all your damned questions." */
END
IF~Class(Protagonist,Thief)~THEN REPLY @85 /*Carefully pick the lock on the chains and quietly free the prisoner. */ DO~~ + g-bbD016.IV.E
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") ~THEN REPLY @86 /*"Annah, please unlock his shackles." */ DO~~ + g-bbD016.IV.E
IF~Class(Protagonist,Fighter)~THEN REPLY @87 /*Target the chain's weakest link and crush the shackles. */ DO~~ + g-bbD016.IV.E
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon") ~THEN REPLY @88 /*"Nobody deserves to be chained. Dak'kon, free him." */ DO~~ + g-bbD016.IV.E
IF~~THEN REPLY @89 /*"I will convince the fish people to let you go. Hold on for a while longer." */ DO~~ EXIT
IF~~THEN REPLY @90 /*"Your answers aren't worth setting you loose on the planes." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.Dmg
@92 /*"Both the demon and the mimir speak the truth. I'm a bladeling, a Sinker, a Bhaalite. But if you want more than that, you're going to have to set me free." */
=@93 /*"Unbind me from these chains and you can count on my gratitude. Not many ever get to have that." He speaks quickly, his tone low and discreet. "Just free me and I'll answer all your damned questions." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @94 /*"Watch out, chief. The fish people may not like it..." */
END
IF~Class(Protagonist,Thief)~THEN REPLY @96 /*Carefully pick the lock on the chains and quietly free the prisoner. */ DO~~ + g-bbD016.IV.E
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") ~THEN REPLY @97 /*"Annah, please unlock his shackles." */ DO~~ + g-bbD016.IV.E
IF~Class(Protagonist,Fighter)~THEN REPLY @98 /*Target the chain's weakest link and crush the shackles. */ DO~~ + g-bbD016.IV.E
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon") ~THEN REPLY @99 /*"Nobody deserves to be chained. Dak'kon, free him." */ DO~~ + g-bbD016.IV.E
IF~~THEN REPLY @100 /*"I will convince the fish people to let you go. Hold on for a while longer." */ DO~~ EXIT
IF~~THEN REPLY @101 /*"Your answers aren't worth setting you loose on the planes." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.E
@103 /*The chains fall to the ground, and the bladeling breathes a sigh of relief as he stretches his arms. "I'm in your debt, but there will be time for that later." As he shakes off the remaining chains, the kuo-toa look on in amazement. Dopilp's eyes bulge out in disbelief. */
END
IF~Global("G-kuotoagod","GLOBAL",1)~THEN REPLY @105 /*"What now, Dopilp? Will you question Lord Scar's will?" */ DO~~ + g-bbD016.IV.E2
IF~!Global("G-kuotoagod","GLOBAL",1)~THEN REPLY @106 /*"I'm sorry, were you going to kill that?" */ DO~~ + g-bbD016.IV.E3
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.E3
@108 /*The kuo-toa gurgle in unison and, rallied by the priest's orders, move to attack you." */
==g-bbd010 @109 /*"No-no! Our victims!" */
END
IF~~THEN REPLY @111 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.E2
@113 /*The bladeling looks at you curiously. */
==g-bbd010 @114 /*Dopilp bows obediently. "No-no, Lord Scar. your wisdom and might are superior." */
==g-bbd016 @115 /*The bladeling stretches, his joints snapping with a sudden metallic crack. "But you're here to learn the dark of this story, aren't you?" He straightens and crosses his arms. "Ask away." */
END
IF~~THEN REPLY @117 /*"Who are you?" */ DO~~ + g-bbD016.IV.G
IF~~THEN REPLY @118 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.G
@120 /*The bladeling straightens fully, proudly thrusting his chest forward and revealing the skulls etched into his skin. "Kilthas. Kilthas Dar'Abomyn, to be exact. At your service, and my services are vast. As a follower of the Lord of Murder and a member of the Doomguard, I know hundreds of ways to kill someone. Some of them are even painless." He finishes his introduction with a mocking smile. "But worry not, I serve entropy to those who deserve it. You don't spark hatred in me yet." The words are seemingly meant as praise, in his own twisted way. */
END
IF~Global("g-killstardo_slave","GLOBAL",0) ~THEN REPLY @122 /*"How did you fall into captivity?" */ DO~SetGlobal("g-killstardo_slave","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.H
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @123 /*"Isn't Bhaal dead? My knowledgeable friend seems to believe so..." */ DO~~ + g-bbD016.bhaaldead
IF~CheckStatGT(Protagonist,16,WIS) Global("g-timeoftroublesmemory","GLOBAL",0)~THEN REPLY @124 /*The name 'Bhaal' triggers something in your mind. Try to remember. */ DO~SetGlobal("g-timeoftroublesmemory","GLOBAL",1) GiveExperience(Protagonist,20000) SetGlobal("g-bhaaldead","GLOBAL",1)~ + g-bbD016.bhaalmemory
IF~Global("g-killstardo_faction","GLOBAL",0) ~THEN REPLY @125 /*"You follow a power while being a faction member?" */ DO~SetGlobal("g-killstardo_faction","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.I
IF~Global("g-killstardo_conclusion","GLOBAL",2) ~THEN REPLY @126 /*"Let's get to the point. Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.bhaalmemory
@128 /*A troubled time. Someone stole something from one power above all, or at least above some. Many powers were cast down into the Material Plane. Chaos ensued. And in that chaos, you thrived. Divine realms across the planes were left unguarded, immeasurable treasure left ripe for the taking. Some powers never returned. A god of murder slain by a mad mortal. He was not the only one... [SPTR_01] */
END
IF~Global("g-killstardo_slave","GLOBAL",0) ~THEN REPLY @130 /*"How did you fall into captivity?" */ DO~SetGlobal("g-killstardo_slave","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.H
IF~Global("g-timeoftroublesmemory","GLOBAL",1) ~THEN REPLY @131 /*"But... Bhaal is dead. Isn't he?" */ DO~~ + g-bbD016.bhaaldead
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @132 /*"Isn't Bhaal dead? My knowledgeable friend seems to believe so..." */ DO~~ + g-bbD016.bhaaldead
IF~Global("g-killstardo_faction","GLOBAL",0) ~THEN REPLY @133 /*"You follow a power while being a faction member?" */ DO~SetGlobal("g-killstardo_faction","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.I
IF~Global("g-killstardo_conclusion","GLOBAL",2) ~THEN REPLY @134 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.bhaaldead
@136 /*The bladeling's bravado cools. "He'll be back. Don't you worry your pretty little brain-box. Cyric is just a phase. Now do you want to know what happened here or not?" */
END
IF~~THEN REPLY @138 /*"Right. Where did the kuo-toa come from?" */ DO~SetGlobal("g-bhaaldead","GLOBAL",1)~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.H
@141 /*He gives you a sideways look. "Let's call it a workplace incident. I had a contract for a bunch of berks based around the ditch, but while I was preparing my ambush for them, I fell into the fish people's ambush. I've been here a while, waiting to be sacrificed. The contract is probably long expired." He frowns in disappointment. He does not seem used to failure. */
END
IF~Global("g-killstardo_faction","GLOBAL",0) ~THEN REPLY @143 /*"You follow a power while being a faction member?" */ DO~SetGlobal("g-killstardo_faction","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.I
IF~Global("g-killstardo_conclusion","GLOBAL",2) ~THEN REPLY @144 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.I
@146 /*A new expression forms in his eyes, somewhere between contempt and pity. "It may seem strange to those who are not truly committed to their convictions." He speaks as if explaining something to an obstinate child. "But I assure you, many of the goals and methods of Bhaal's acolytes and the Doomguard run parallel." He leans in closer, meeting your gaze with a cruel smile. "There are more of us than you think. Entropy is the true center of the multiverse." */
END
IF~~THEN REPLY @148 /*"If you worship entropy, why did you fear torture?" */ DO~~ + g-bbD016.IV.J
IF~Global("g-timeoftroublesmemory","GLOBAL",1) ~THEN REPLY @149 /*"But... Bhaal is dead. Isn't he?" */ DO~~ + g-bbD016.bhaaldead
IF~CheckStatGT(Protagonist,16,WIS) Global("g-timeoftroublesmemory","GLOBAL",0)~THEN REPLY @150 /*The name 'Bhaal' triggers something in your mind. Try to remember. */ DO~SetGlobal("g-timeoftroublesmemory","GLOBAL",1) GiveExperience(Protagonist,20000) SetGlobal("g-bhaaldead","GLOBAL",1)~ + g-bbD016.bhaalmemory
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @151 /*"Isn't Bhaal dead? My knowledgeable friend seems to believe so..." */ DO~~ + g-bbD016.bhaaldead
IF~Global("g-killstardo_slave","GLOBAL",0) ~THEN REPLY @152 /*"How did you fall into captivity?" */ DO~SetGlobal("g-killstardo_slave","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.H
IF~Global("g-killstardo_conclusion","GLOBAL",2) ~THEN REPLY @153 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.J
@155 /*Kilthas scoffs with impatience. "It's not about avoiding torture. It's about the fact that out in the open I'm able to gift the multiverse with much more entropy than these disorganized fish-men." He spits with contempt. "It's not fear. It's concern for efficiency." */
END
IF~Global("g-killstardo_slave","GLOBAL",0) ~THEN REPLY @157 /*"How did you fall into captivity?" */ DO~SetGlobal("g-killstardo_slave","GLOBAL",1) IncrementGlobal("g-killstardo_conclusion","GLOBAL",1) ~ + g-bbD016.IV.H
IF~Global("g-timeoftroublesmemory","GLOBAL",1) ~THEN REPLY @158 /*"Wait... Bhaal is dead. Isn't he?" */ DO~~ + g-bbD016.bhaaldead
IF~CheckStatGT(Protagonist,16,WIS) Global("g-timeoftroublesmemory","GLOBAL",0)~THEN REPLY @159 /*The name 'Bhaal' triggers something in your mind. Try to remember. */ DO~SetGlobal("g-timeoftroublesmemory","GLOBAL",1) GiveExperience(Protagonist,20000) SetGlobal("g-bhaaldead","GLOBAL",1)~ + g-bbD016.bhaalmemory
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @160 /*"Wait... Isn't Bhaal dead? My knowledgeable friend seems to believe so..."..." */ DO~~ + g-bbD016.bhaaldead
IF~Global("g-killstardo_conclusion","GLOBAL",2) ~THEN REPLY @161 /*"Where did the kuo-toa come from?" */ DO~~ + g-bbD016.IV.K
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.K
@163 /*A creeping smile spreads across the bladeling's face. "The insane fish-men tried to spread their cult. They keep praying and sometimes go out to capture victims around the Ditch. Ha! If I were to make my own cult, the Ditch would run red with blood. They're pathetic. Valuing prayer over prey." He stares blankly at some distant point. "Funny thing. I don't know what the fish-men worshiped before, but one of the berks I was hunting was supposedly teaching the kuo-toa about her god. She clearly did not know what she was doing. She caused them to start offering sacrifice to... water." He snickers. "Leatherheads. They'll believe anything you tell them. I never found the stupid priestess. They probably ate her." */
END
IF~Global("G-kuotoagone","GLOBAL",0)  Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",1)~THEN REPLY @165 /*"Well, they worship Kiaransalee now, and you will be reduced to scrap. Have a nice undeath." */ DO~SetGlobal("G-killstrado_kiaran","GLOBAL",1)~ EXIT
IF~CheckStatGT(Protagonist,16,CHR) Global("G-kuotoagone","GLOBAL",0) Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) GlobalLT("GOOD","GLOBAL",10) Global("g-bhaaldead","GLOBAL",0)~THEN REPLY @166 /*"Well, they worship me now, but maybe they'd be better off following Bhaal, Lord of Murder?" */ DO~~ + g-bbD016.IV.L
IF~CheckStatGT(Protagonist,16,CHR) Global("G-kuotoagone","GLOBAL",0)  Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) GlobalLT("GOOD","GLOBAL",10) Global("g-bhaaldead","GLOBAL",1)~THEN REPLY @167 /*"Well, they worship me now, but maybe they'd be better off following Bhaal, Lord of Murder? They probably don't care if he's dead." */ DO~~ + g-bbD016.IV.L
IF~Global("G-kiaransalleefollower","GLOBAL",1) Global("G-kuotoagone","GLOBAL",0)  Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1)~THEN REPLY @168 /*"Well, they worship me now, but maybe they'd be better off following Kiaransalee, Lady of the Dead?" */ DO~~ + g-bbD016.kiaransalee
IF~Global("G-kuotoagod","GLOBAL",1) Global("G-kuotoagone","GLOBAL",0)  Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) ~THEN REPLY @169 /*"Well, they worship me now, and that's who they will keep worshiping." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD016.IV.Ob
IF~Global("G-kuotoagone","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",0)  Global("G-kuotoadead","GLOBAL",0) Global("G-kuotoaraid","GLOBAL",0) ~THEN REPLY @170 /*"Poor creatures. Maybe I can straighten them out." */ DO~~ + g-bbD016.IV.O
IF~OR(3) Global("G-kuotoagone","GLOBAL",1) Global("G-kuotoadead","GLOBAL",1) Global("G-kuotoaraid","GLOBAL",1)~THEN REPLY @171 /*"Well, they are gone now, aren't they?" */ DO~~ + g-bbD016.gone
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.L
@173 /*For the first time, Kilthas regards you with interest. He considers the idea. "That is an interesting thought. These little creatures can bring things to life through their worship if they believe strongly enough. Maybe that *IS* the way to bring back Bhaal. I WILL BE THE ONE! I could teach them much about suffering, and they seem eager to listen. If I can make them believe strongly enough..." He seems to grow excited by the idea. His barbs stand upright as he begins to pace, then he stops abruptly. "But here is the problem. How do we get them to follow the lead of their former victim?" */
END
IF~~THEN REPLY @175 /*"Like I said, they worship me now. I will just order them to do it." */ DO~~ + g-bbD016.IV.M
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.M
@177 /*The bladeling looks at you in shock. "With such blood behind me..." He straightens fully, his barbs bristling. "We will prove the Lord of Murder's prowess!" */
=@178 /*He addresses the fish-eyed priests loudly. "Dopilp, you wretch. You tried to teach me pain by shackling me, but you and your congregation have much to learn." He steps closer to the cleric with each word. "In the name of Bhaal, Lord of Murder, and in the name of all entropy, I will show you true divine power." */
==g-bbd010 @179 /*Dopilp looks at you, utterly baffled. "Lord Scar?" */
END
IF~~THEN REPLY @181 /*"It's true, Dopilp. You are now to serve Bhaal, and Kilthas is his prophet." */ DO~IncrementGlobal("Lady","GLOBAL",-10) SetGlobal("G-kuotoagod","GLOBAL",0) SetGlobal("G-kuotoabhaal","GLOBAL",1)  SetGlobal("G-kuotoaquestline","GLOBAL",11)~ + g-bbD016.IV.N
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.N
~~ ==g-bbd010 @183 /*"Lord of Barber, Sir Baluu, his is the might! Teach us, teach!" Dopilp leans against his hook and kneels before Kilthas, and the other kuo-toa follow suit. */
==g-bbd016 @184 /*"It is as it should be," the bladeling says with an air of superiority. "Kneel before Bhaal!" His expression shifts to one of deep satisfaction as he turns to you. "You helped me in need and contributed to entropy. It is only right that your efforts are rewarded. Name your reward." */
END
IF~~THEN REPLY @186 /*"I changed my mind. I would like you and you cult to perish now." */ DO~SetGlobal("g-kuotoaangry","GLOBAL",1) Enemy() Attack(Protagonist)~ EXIT
IF~~THEN REPLY @187 /*"Jink." */ DO~~ + g-bbD016.IV.R
IF~~THEN REPLY @188 /*"Share the secrets of entropy with me." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD016.IV.Q
IF~~THEN REPLY @189 /*"You have nothing I want. Goodbye." */ DO~~ + g-bbD016.IV.P
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.R
@191 /*The humanoid’s satisfaction is evident. "With pleasure. Dopilp! Shower him with gold!" At Kilthas’s regal gesture, the kuo-toa scramble into motion and return, piling coins and other precious items at your feet. "A just reward for a just service. We are even, blood." He turns back toward the altar. "I have some redecorating to do now. Farewell." */
END
IF~~THEN REPLY @193 /*"Farewell, Kilthas." */ DO~GiveItemCreate("BROBRA",Protagonist,1,1,0) GiveItemCreate("GOLRING",Protagonist,1,1,0) GiveItemCreate("RING03",Protagonist,1,1,0) GivePartyGold(300) AddexperienceParty(10000) SetGlobal("G-kuotoabhaal","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.Q
@195 /*The bladeling falls silent for an instant, surprised. "Secrets of entropy, eh? If I did not owe you, I would have stabbed you through the throat just for asking, so you can witness the life dripping out you, anxious to meet her, in all of her beauty." He pauses with a smile, possibly daydreaming about doing it anyway. "But I do owe you. Listen up, because I'll say this only once." */
=@196 /*You listen to Kilthas as he, with near-prophetic fluency, paints a vivid picture of nonexistence. He speaks of the ecstasy of decay, the natural order that ultimately leads to a state in which all the planes are reduced to fine dust. He offers numerous examples and argues beyond any doubt that not all Sinkers strive to hasten entropy, and that her tools are many. "You can't make an omelet without breaking a few eggs. You can't build a home without crushing some rocks. You can't take life if you yourself have no life," he concludes. */
=@197 /*You wonder what the Sinkers would say about your condition. Would you be considered an abomination or a saint within their philosophy? If their worldview is true, and it might be, lives are extinguished in your place as you are created anew. */
END
IF~~THEN REPLY @199 /*"Farewell, Kilthas." */ DO~PermanentStatChange(Protagonist,CON,RAISE,1) AddexperienceParty(60000) SetGlobal("G-kuotoabhaal","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.P
@201 /*"Oh, you aren't thinking of leaving us so soon?" The bladeling places a hand on your shoulder. "I do have a first commandment to deliver. I want you to bear witness." He turns to the fish-men. "Dopilp!" The kuo-toa priest flaps over in haste. */
==g-bbd010 @202 /*"Yes, Sir Baluu. I am obedient." */
==g-bbd016 @203 /*Kilthas frowns slightly at the warping of his god’s name, then straightens with pride and a deep sense of authority. "Dopilp! As my first high priest, you will receive the great honor of sacrificing yourself in my name." */
==g-bbd010 @204 /*A complete silence falls over the platform. The kuo-toa look at one another with a hint of uncertainty, trying to decide whether he means what he said. Even Dopilp seems confused. Kilthas’s intense, unrelenting gaze tells him otherwise. He speaks for a god and demands absolute, unconditional loyalty from his followers. The priest eventually accepts it. He nods with determination and begins stomping his hook rhythmically against the ground. "Sir Baluu! Sir Baluu! Sir Baluu!" */
==g-bbd010 @205 /*The rest of the fish people join in, and the whole lair soon fills with the echoes of their voices. Dopilp begins to dance before the altar, and the acolytes mimic his movements. The resulting choreography is a strange mix of chaotic convulsions and aggressive ballet. Eventually, the cleric angles his hook against the edge of a stone tile and drives himself down onto the sharp end, the warped name of Bhaal still on his lips. The congregation cheers for a moment, then falls silent. Deprived of their spiritual leader, they turn to the bladeling. */
==g-bbd016 @206 /*"And that's that. I hope you had some fun here. I have some work to do here. Farewell." Kilthas smiles grimly. */
END
IF~~THEN REPLY @208 /*"Farewell, Kilthas." */ DO~SetGlobal("G-dopilpdiedpeacefully","GLOBAL",1) Kill("g-bb010") AddexperienceParty(10000) SetGlobal("G-kuotoabhaal","GLOBAL",1)~ EXIT
IF~~THEN REPLY @209 /*"I changed my mind. I would like you and your cult to perish now." */ DO~SetGlobal("G-dopilpdiedpeacefully","GLOBAL",1) Kill("g-bb010") SetGlobal("g-kuotoaangry","GLOBAL",1) AddexperienceParty(20000) Enemy()~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.O
@211 /*The bladeling narrows his eyes with a grimace. "Oh, right. Try to straighten them out, won't you? That will surely go well." He stretches, his joints cracking with a metallic sound. "It was lovely talking to you, and I'm grateful for your help, but I would love to leave. I've smelled enough fish for a lifetime." He performs a mocking bow. "Farewell, blood. Entropy is thankful." */
END
IF~~THEN REPLY @213 /*"Farewell, Kilthas." */ DO~AddexperienceParty(5000) EscapeArea() SetGlobal("g-kilthasreleased","GLOBAL",1)~ EXIT
IF~~THEN REPLY @214 /*"I changed my mind. I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist) ~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.IV.Ob
@216 /*The bladeling narrows his eyes with a grimace. "Ha! Good luck with that." He stretches, his joints cracking with a metallic sound. "It was lovely talking to you, and I'm grateful for your help, but I would love to leave. I've smelled enough fish for a lifetime." He performs a mocking bow. "Farewell, blood. Entropy is thankful." */
END
IF~~THEN REPLY @218 /*"Farewell, Kilthas." */ DO~SetGlobal("g-kilthasreleased","GLOBAL",1) AddexperienceParty(8000) EscapeArea() ~ EXIT
IF~~THEN REPLY @219 /*"I changed my mind. I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.gone
@221 /*"Oh yes, well." The bladeling blinks and scans the grotto. "It was lovely talking to you, and I'm grateful for your help, but I would love to leave. I've smelled enough fish for a lifetime." He performs a mocking bow. "Farewell, blood. Entropy is thankful." */
END
IF~~THEN REPLY @223 /*"Farewell, Kilthas." */ DO~SetGlobal("g-kilthasreleased","GLOBAL",1) AddexperienceParty(8000) EscapeArea() ~ EXIT
IF~~THEN REPLY @224 /*"I changed my mind. I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.kiaransalee
@226 /*"What? The drow zombie?" The bladeling spits on the stone with contempt. "What an insane idea, blood. We have a talented writer in our ranks who goes by the name of Raelis, and even she wouldn't come up with something so barmy." */
=@227 /*"B l a s p h e m y. " A faint, tingling whisper brushes the back of your mind. */
END
IF~~THEN REPLY @229 /*"Why would you say so?" */ DO~~ + g-bbD016.kiaranA
IF~OR(2)
Global("G-knowhaer","GLOBAL",1)
Global("G-knowraelis","GLOBAL",1)~THEN REPLY @230 /*"I know Raelis. Why is this such an absurd notion?" */ DO~~ + g-bbD016.kiaranA
IF~~THEN REPLY @231 /*"You will die for this offense, barbedskin. For Kiaransalee." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself)~ + g-bbD016.kiaranC
CHAIN IF~~THEN g-bbD016 g-bbD016.kiaranC
@233 /*The bladeling smiles widely. "*You* will die, blood. For Bhaal! For entropy!" */
EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.kiaranA
@236 /*"Are you serious? Nobody, apart from some rejects of the Spider Queen, worships this bitch. Bhaal has acolytes scattered across the planes. He is an obviously *superior* power and if we want the kuo-toa to -" */
=@237 /*"B L A S P H E M Y." The whisper does not fade. The tingling swells into an unbearable intensity.  */
END
IF~~THEN REPLY @239 /*"You will die for this offense, barbedskin. For Kiaransalee." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",1000) Enemy() ForceAttack(Protagonist,Myself)~ + g-bbD016.kiaranC
CHAIN IF~~THEN g-bbD016 g-bbD016.postA
@241 /*"Flock? I think you mean school." Kilthas laughs, creating an echo in the grotto. Some nearby kuo-toa kneel instinctively. "And not *yours*. *My* school, if I recall correctly. Or rather, Bhaal's school." */
END
IF~~THEN REPLY @243 /*"Well, sure. I just wanted to see what you're planning." */ DO~~ + g-bbD016.postB
IF~~THEN REPLY @244 /*"Farewell, Kilthas." */ DO~~ EXIT
IF~~THEN REPLY @245 /*"I changed my mind. I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist) SetGlobal("g-kuotoaangry","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.postB
@247 /*"We? Nothing much. We're reading scriptures, singing hymns, and breaking bread. Why are you so interested? You gave them to me. It is now my business what I do with them." */
END
IF~Global("G-dopilpspoiler","GLOBAL",1)~THEN REPLY @249 /*"Dopilp seems to be very excited for an upcoming 'slaughter of the innocent'." */ DO~SetGlobal("G-dopilpspoiler","GLOBAL",2)~ + g-bbD016.postC
IF~~THEN REPLY @250 /*"Farewell, Kilthas." */ DO~~ EXIT
IF~~THEN REPLY @251 /*"I changed my mind. I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist) SetGlobal("g-kuotoaangry","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD016 g-bbD016.postC
@253 /*"Oh, that. Yes, resurrecting Bhaal demands a little more sacrifice than their previous rituals. We are planning a little trip to the Great Bazaar. Is that a problem for you, blood?" */
END
IF~~THEN REPLY @255 /*"Yes. I think I would like you and your cult to perish now." */ DO~Enemy() Attack(Protagonist) SetGlobal("g-kuotoaangry","GLOBAL",1)~ EXIT
IF~~THEN REPLY @256 /*"No, I'm just asking. Carry on with your preparations. Farewell, Kilthas." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT