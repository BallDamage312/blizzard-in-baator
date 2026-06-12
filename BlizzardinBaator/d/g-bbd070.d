BEGIN g-bbD070
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD070 g-bbD070.start
@0 /*You see a man in his forties dressed surprisingly well for the environment you are in. He wears an elegant robe, a bit threadbare at the elbows, and thick glasses. He exudes the aura of a scholar. He is leaning over a seemingly random fragment of the wall, so close that his nose almost touches the bricks, and is mumbling something to himself. As you come closer, you hear him speaking an incomprehensible sequence of numbers, as if the man was doing complicated calculations.  */
END
IF~~THEN REPLY @2 /*"What are you doing?" */ DO~~ + g-bbD070.A1
IF~~THEN REPLY @3 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD070 g-bbD070.start2
@5 /*The man is leaning over a seemingly random fragment of the wall, so close that his nose almost touches the bricks, and is mumbling something to himself. As you come closer, you hear him speaking an incomprehensible sequence of numbers, as if the man was doing complicated calculations.  */
END
IF~Global("g-bricks","GLOBAL",0)~THEN REPLY @7 /*"What are you doing?" */ DO~~ + g-bbD070.A1
IF~~THEN REPLY @8 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.A1
@10 /*The man flinches, as if you have snapped him out of a trance. Nervously, he pushes his glasses up his nose and turns to you, saying, "Pores."  */
END
IF~~THEN REPLY @12 /*"Excuse me?" */ DO~~ + g-bbD070.C1
IF~~THEN REPLY @13 /*"What the Hells are you talking about?" */ DO~~ + g-bbD070.C1
IF~~THEN REPLY @14 /*"Chores? Guess you really don't like being here, huh?" */ DO~~ + g-bbD070.E1
IF~~THEN REPLY @15 /*"I don't have time for this." */ DO~~ EXIT
IF~~THEN REPLY @16 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.C1
@18 /*"Pores," the man repeats, as if it was obvious, gesturing wildly toward the wall. "Microscopic holes. Thousands, maybe more, in each brick! Think of it, if you could shrink yourself to half the size of a grain of sand, each hole could potentially be a portal to the wildest reaches of the multiverse! Each one of those bricks would be more valuable than all of Sigil!" His eyes gleam with a maniacal passion that would put the most insane tanar'ri to shame.  */
END
IF~CheckStatGT(Protagonist,14,INT)~THEN REPLY @20 /*"You're wrong. Pores are just indentations in a surface, not holes through which you can walk. Even if you could shrink yourself, you wouldn't achieve anything. They'd never be functioning portals."  */ DO~~ + g-bbD070.G1
IF~~THEN REPLY @21 /*"Hmm. Interesting. Good luck then." */ DO~~ + g-bbD070.H1
IF~~THEN REPLY @22 /*"I don't have time for such nonsense. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @23 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.E1
@25 /*A flush of anger colors his sallow cheeks red. "No, you simpleton! Pores! Pores as in microscopic holes. Thousands, maybe more, in each brick! Think of it, if you could shrink yourself to half the size of a grain of sand, each hole could potentially be a portal to the wildest reaches of the multiverse! Each one of those bricks would be more valuable than all of Sigil!" His eyes gleam with a maniacal passion that would put the most insane tanar'ri to shame. */
END
IF~CheckStatGT(Protagonist,14,INT)~THEN REPLY @27 /*"You're wrong. Pores are just indentations in a surface, not holes through which you can walk. Even if you could shrink yourself, you wouldn't achieve anything. They'd never be functioning portals."  */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD070.G1
IF~~THEN REPLY @28 /*"Hmm. Interesting. Good luck then." */ DO~~ + g-bbD070.H1
IF~~THEN REPLY @29 /*"I don't have time for such nonsense. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @30 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.G1
@32 /*The man freezes, his mouth hanging open. He stares at you, his eyes widening in horror as he slowly realizes the futility of all his efforts. Without a word, he turns back to the wall. He does not say anything else, does not move, does not pay any attention to you. As you walk away, you see him leaning over the bricks again, mumbling to himself. Denial is the first stage of grief.  */
END
IF~InParty("Nordom") !StateCheck("!Nordom",CD_STATE_NOTVALID)~THEN REPLY @34 /*"Please wait, I'll prepare precise calculations to prove my point. Nordom, would you be so kind?" */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("g-bricks","GLOBAL",1)~ + g-bbD070.I1
IF~~THEN REPLY @35 /*Leave. */ DO~SetGlobal("g-bricks","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.H1
@37 /*The man nods, partly in thanks but mostly just to shoo you away. He turns back to the wall and continues his research. You hear increasingly absurd numbers. The man does not pay you any attention.  */
END
IF~~THEN REPLY @39 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.I1
@41 /*The man pretends not to hear, but tilts his head slightly. After a moment, he realizes *who* you have asked to help you with the math, and turns so that you can clearly see his furrowed brow and his mouth parted in disbelief.  */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @42 /*"Processing." Nordom *clangs* and *grinds*, and after a few seconds begins a thorough analysis. "According to available data, porous ceramic bricks are manufactured in the following sizes: 9.84 x 4.72 x 5.51, 9.84 x 14.96 x 8.62, 20.08 x 9.84 x 8.62, and 14.96 x 9.84 x 8.62 inches. Let us first calculate the average size of these porous bricks, just to simplify things." You could swear he was smiling.  */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @43 /*"The average dimensions are approximately 13.68 x 9.84 x 7.84 inches, which gives a volume of about 1124.69 cubic inches. Typical pores range from about 0.0039 to 0.197 inches in diameter. In more classic hollow bricks, where larger air chambers exist, the 'pores' can reach dimensions of several centimeters. But in those cases, we are really speaking about chambers, not microstructures." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @44 /*"To enter such a pore, a being would need to have a body diameter smaller than 0.039 inches. Ideally, around 0.02 inches, to avoid getting wedged in. That is about 1000 times smaller than the average adult human. Based on my calculations, it would be possible to move just a few fractions of an inch within a single pore. In porous bricks, the pores are interconnected, which leads us to the following conclusion..." [NOR067]  */
END
IF~~THEN REPLY @46 /*Wait for Nordom's final conclusion. */ DO~AddexperienceParty(12000)~ + g-bbD070.I2
CHAIN IF~~THEN g-bbD070 g-bbD070.I2
@48 /*You feel as if the man has aged a few years. His facial expression bears marks of immeasurable disappointment and bitter humiliation. He has had enough, but he does not have the strength to admit it aloud.   */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @49 /*Nordom concludes his analysis: "Exploring the pore network would not take you very far, but rather would have you run in circles. Figuratively speaking, it would be like wandering in a small cave with many dead ends. Since there is no rule about the required depth of the cavity - after all, there exist portals in the walls - or the minimum size of the portal, as portals in mirrors or rings are not unheard of, theoretically each of such dead ends could contain a portal."  */
END
IF~~THEN REPLY @51 /*"Wait, what did you say?" */ DO~~ + g-bbD070.I3
CHAIN IF~~THEN g-bbD070 g-bbD070.I3
@53 /*It is not every day that you lose and regain the meaning of life in the span of a few minutes. A spark returns to the man's eyes.  */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @54 /*"The passage does not have to go right through. The 'marking' of the place - e.g. a special frame, symbol or symbolic threshold - is more important than its physical size. A recess or even a regular wall is quite sufficient, as proven by the trap portal registered in location AR0101 'Ragpicker's Square' with a door on one side and a flat wall on the other. To sum up, if you had n portal keys that would fit in a theoretical brick filled with n portals, you would be able to use them if you could shrink them."  */
END
IF~~THEN REPLY @56 /*"Thank you for the analysis, Nordom." */ DO~~ + g-bbD070.I4
IF~~THEN REPLY @57 /*"Damn, it should have turned out differently." */ DO~~ + g-bbD070.I4
IF~~THEN REPLY @58 /*"So, theoretically speaking... we could have portals in every *pore* of our skin and not even know it?" */ DO~~ + g-bbD070.I5
IF~~THEN REPLY @59 /*Leave quietly. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.I4
@61 /*The man smiles contentedly and returns to staring at the bricks.  */
END
IF~~THEN REPLY @63 /*Leave quietly. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.I5
@65 /*The man's face shows concern. "W-what... What do you mean, berk...?" */
END
IF~~THEN REPLY @67 /*"We have pores in our skin as well. If even a wall can contain a portal, is it not even more likely that portals exist in skin pores or other body orifices? All you need is the right key..."  */ DO~~ + g-bbD070.I6
IF~~THEN REPLY @68 /*"Never mind. I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.I6
@70 /*The man frowns, tears welling up in his eyes. He lowers his head. "This... Nothing will ever be the same. I've feared it my whole life, and now it's suddenly possible...? Please go away. You come here and try to take what I consider the best. Go and leave me with my memories of simpler times."  */
=@71 /*"I... don't think that I can continue my work. I have done it all in the name of progress and science. It was madness."  */
END
IF~~THEN REPLY @73 /*"Welcome to the planes, mate." */ DO~SetGlobal("g-bricks","GLOBAL",2)~ EXIT
IF~~THEN REPLY @74 /*"We require a fee of 10 copper pieces for the mathematical services rendered." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)
 IncrementGlobal("LAW","GLOBAL",1) SetGlobal("g-bricks","GLOBAL",2)~ + g-bbD070.J1
IF~~THEN REPLY @75 /*Leave quietly. */ DO~SetGlobal("g-bricks","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.J1
@77 /*"You've got to be kidding me..." He rummages through his pockets and throws you some coins. "Take this, choke on it, and leave me alone now."  */
END
IF~~THEN REPLY @79 /*"Thank you, good man. We will be happy to help you again in the future." */ DO~GivePartyGold(10)~ EXIT
IF~~THEN REPLY @80 /*Leave quietly. */ DO~GivePartyGold(10)
~ EXIT
CHAIN IF~Global("g-bricks","GLOBAL",2)~THEN g-bbD070 g-bbD070.K1
@82 /*The man tries hard not to look at the bricks in front of him. His gaze wanders. He mumbles something to himself. Something is wrong with him.  */
END
IF~~THEN REPLY @84 /*"What are you doing?" */ DO~~ + g-bbD070.K2
IF~~THEN REPLY @85 /*"How are the bricks, man?" */ DO~~ + g-bbD070.K2
IF~~THEN REPLY @86 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD070 g-bbD070.K2
@88 /*"I try not to think about the bricks," he replies, resigned. "Please leave me alone." */
END
IF~~THEN REPLY @90 /*"Alright. Goodbye then." */ DO~~ EXIT
IF~~THEN REPLY @91 /*"I think I hit a brick wall." */ DO~~ EXIT
IF~~THEN REPLY @92 /*Leave without a word. */ DO~~ EXIT