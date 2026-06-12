BEGIN g-bbD119
CHAIN IF~Global("G-yangobetray","GLOBAL",0)~THEN g-bbD119 g-bbD119.start
@0 /*Before you stands a monumental, imposing fiend. One of its arms is massive and muscular, seemingly capable of picking you up and squeezing all your insides onto the ground. The other arm is smaller than you would expect in a creature of this size, but it is crackling with blue magical energy. The fiend appears to be searching for something. */
END
IF~~THEN REPLY @2 /*"Greetings." */ DO~~ + g-bbD119.hello
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @3 /*"I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @4 /*Lie: "I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~~THEN REPLY @5 /*Walk away from the fiend. */ DO~~ EXIT
CHAIN IF~Global("G-yangobetray","GLOBAL",1)~THEN g-bbD119 g-bbD119.start2
@7 /*Before you stands a monumental, imposing fiend. One of its arms is massive and muscular, seemingly capable of picking you up and squeezing all your insides onto the ground. The other arm is smaller than you would expect in a creature of this size, but it is crackling with blue magical energy.  */
END
IF~~THEN REPLY @9 /*"Greetings." */ DO~~ + g-bbD119.helloalt
IF~~THEN REPLY @11 /*Walk away from the fiend. */ DO~~ EXIT
CHAIN IF~Global("G-yangobetray","GLOBAL",2)~THEN g-bbD119 g-bbD119.start3
@13 /*The monumental yagnoloth sees you approach, its beady eyes lighting up with a spark of recognition as its visible muscles tense. "So it has come to die for its unforgivable deception." */
END
IF~~THEN REPLY @15 /*"Wait, I-" */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.rat
@19 /*The fiend grabs you by your belt and effortlessly lifts you up to its rust-colored face. "It better tell me right now. Where did it see the wererats?" */
END
IF~Global("G-bbmain","GLOBAL",13) CheckStatGT(Protagonist,14,WIS)~THEN REPLY @21 /*Direct it to the kuo-toa. "They are hiding in the old house in the flooded settlement, the only house still standing."  */ DO~SetGlobal("G-kuotoabamboozled","GLOBAL",1) SetGlobal("G-yangobetray","GLOBAL",2) SetGlobal("G-BBmain","GLOBAL",14) IncrementGlobal("LAW","GLOBAL",-1) AddexperienceParty(50000)~ + g-bbD119.leave
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) CheckStatGT(Protagonist,14,WIS)~THEN REPLY @22 /*Lie: "They are holed up on the other side of the Ditch, by the Taker's Lock."  */ DO~SetGlobal("G-yangobetray","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1) AddexperienceParty(1000)~ + g-bbD119.leave
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) CheckStatGT(Protagonist,14,WIS)~THEN REPLY @23 /*Lie: "They left Sigil, they may already be in Curst."  */ DO~SetGlobal("G-yangobetray","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1) AddexperienceParty(1000)~ + g-bbD119.leave1
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) CheckStatGT(Protagonist,14,WIS)~THEN REPLY @24 /*Lie: "They have taken refuge in the Temple of the Abyss."  */ DO~SetGlobal("G-yangobetray","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1) AddexperienceParty(1000)~ + g-bbD119.leave2
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @25 /*"They are holed up in Rat and Splat, under Zaddfum Trestle."  */ DO~SetGlobal("G-yangobetray","GLOBAL",1) SetGlobal("G-bbmain","GLOBAL",18) SetGlobal("G-Szczurwidolek","GLOBAL",6) AddexperienceParty(50000)~ + g-bbD119.leave
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) CheckStatGT(Protagonist,14,WIS)~THEN REPLY @26 /*"Oh wait. Wererats? It's a misunderstanding, then. I was thinking of other thieves."  */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD119.waste
IF~~THEN REPLY @27 /*Attack the fiend. */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
IF~Global("G-bbmain","GLOBAL",13) !CheckStatGT(Protagonist,14,WIS)~THEN REPLY @28 /*Direct it to the kuo-toa. "They are hiding in the old house in the flooded settlement, the only house still standing."  */ DO~~ + g-bbD119.suggestion
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) !CheckStatGT(Protagonist,14,WIS)~THEN REPLY @29 /*Lie: "They are holed up on the other side of the Ditch, by the Taker's Lock."  */ DO~~ + g-bbD119.suggestion
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) !CheckStatGT(Protagonist,14,WIS)~THEN REPLY @30 /*Lie: "They left Sigil, they may already be in Curst."  */ DO~~ + g-bbD119.suggestion
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) !CheckStatGT(Protagonist,14,WIS)~THEN REPLY @31 /*Lie: "They have taken refuge in the Temple of the Abyss."  */ DO~~ + g-bbD119.suggestion
IF~GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17) !CheckStatGT(Protagonist,14,WIS)~THEN REPLY @32 /*"Oh wait. Wererats? It's a misunderstanding, then. I was thinking of other thieves."  */ DO~~ + g-bbD119.suggestion
IF~OR(2) !GlobalGT("G-bbmain","GLOBAL",9) !GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @33 /*"Oh wait. Wererats? It's a misunderstanding, then. I was thinking of other thieves."  */ DO~~ + g-bbD119.waste
CHAIN IF~~THEN g-bbD119 g-bbD119.leave
@38 /*The yagnoloth throws you to the ground. "Soon, vermin blood will seep into the very foundations of this city," it proclaims before running off in the direction you mentioned. You almost want to ask if there is any reward, but the fiend disappears before you can say anything. */
END
IF~~THEN REPLY @40 /*"Happy hunting." */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.leave2
@42 /*The yagnoloth throws you to the ground. "Damned tanar'ri dogs will rue the day!" it roars before running off in the direction you mentioned. You almost want to ask if there is any reward, but the fiend disappears before you can say anything. */
END
IF~~THEN REPLY @44 /*"Happy hunting." */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.leave1
@46 /*The yagnoloth throws you to the ground. "We better mobilize our allies in Curst, then. I thank this mortal," it says before running off. You almost want to ask if there is any reward, but the fiend disappears before you can say anything. */
END
IF~~THEN REPLY @48 /*"Happy hunting." */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.waste
@50 /*The fiend throws you to the ground. "Then why did this morsel decide to waste my time?" it asks, sounding annoyed, and paces away. */
END
IF~~THEN REPLY @52 /*"Sorry, honest mistake." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.hello
@54 /*The fiend grabs you by your belt, effortlessly lifting you up to its rust-colored face, and inspects you. */
END
IF~!Class(Protagonist,Mage)~THEN REPLY @56 /*Let it take a look. */ DO~~ + g-bbD119.hello2a
IF~!Class(Protagonist,Mage)~THEN REPLY @57 /*"Excuse me..." */ DO~~ + g-bbD119.hello2a
IF~Class(Protagonist,Mage)~THEN REPLY @58 /*Let it take a look. */ DO~~ + g-bbD119.hello2b
IF~Class(Protagonist,Mage)~THEN REPLY @59 /*"Excuse me..." */ DO~~ + g-bbD119.hello2b
IF~~THEN REPLY @60 /*Attack the fiend. */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.hello2b
@63 /*"It better not move," it says, casting a spell you recognize. It is trying to detect any magic that could alter your appearance and checking if you might be a were-creature. After a moment, the spell is complete and the fiend relaxes a little. */
=@64 /*"It appears to be what it appears to be. What does it want?" */
END
IF~~THEN REPLY @66 /*"I have a few questions." */ DO~~ + g-bbD119.q
IF~Global("G-yangoquestion","GLOBAL",0)  !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @67 /*"Who are you looking for?" */ DO~SetGlobal("G-yangoquestion","GLOBAL",1)~ + g-bbD119.q
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @68 /*"I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @69 /*Lie: "I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~~THEN REPLY @71 /*"I want to be put back on the ground." */ DO~~ + g-bbD119.down
IF~~THEN REPLY @72 /*Attack the fiend. */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.hello2a
@74 /*"It better not move," it says, casting some spell with its smaller hand. After a moment, the spell is complete and the fiend relaxes a little. */
=@75 /*"It appears to be what it appears to be. What does it want?" */
END
IF~~THEN REPLY @77 /*"I have a few questions." */ DO~~ + g-bbD119.q
IF~Global("G-yangoquestion","GLOBAL",0) !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @78 /*"Who are you looking for?" */ DO~SetGlobal("G-yangoquestion","GLOBAL",1)~ + g-bbD119.q
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @79 /*"I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @80 /*Lie: "I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~~THEN REPLY @82 /*"I want to be put back on the ground." */ DO~~ + g-bbD119.down
IF~~THEN REPLY @83 /*Attack the fiend. */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.q
@85 /*"I have no time to answer any questions. I am searching for thieves. Wererat thieves who annoyed our good friend, Wotyrxil. This one here is not a wererat; therefore, it is wasting my time." The yagnoloth throws you to the ground and walks away. */
END
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) GlobalGT("G-bbmain","GLOBAL",9) GlobalLT("G-bbmain","GLOBAL",17)~THEN REPLY @87 /*"I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~Global("G-yangobetray","GLOBAL",0) OR(2) Global("G-adrean_news","GLOBAL",1) Global("G-yagnobusiness","GLOBAL",1) !GlobalGT("G-bbmain","GLOBAL",9)~THEN REPLY @88 /*Lie: "I know where the thieves you're looking for are." */ DO~~ + g-bbD119.rat
IF~~THEN REPLY @90 /*"Take care, then." */ DO~SetGlobal("G-yagnobusiness","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.leavealt
@92 /*"Soon, vermin blood will seep into the very foundations of this city," it proclaims before running off in the direction you mentioned. You almost want to ask if there is a reward, but the fiend disappears before you can say anything. */
END
IF~~THEN REPLY @94 /*"Happy hunting." */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.helloalt
@96 /*The large, imposing fiend recognizes you. "Greetings, friend to the yugoloth kind." */
END
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @98 /*"Will you answer some questions?" */ DO~~ + g-bbD119.qalt
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @99 /*"Will you answer some questions?" */ DO~~ + g-bbD119.qaltfail
IF~~THEN REPLY @100 /*"Just wanted to say hello. I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.qalt
@102 /*The fiend does not say anything for a while. */
END
IF~~THEN REPLY @105 /*"Where did you come from?" */ DO~~ + g-bbD119.gehenna
IF~~THEN REPLY @106 /*"Why do you do the marraenoloths' bidding, are they your superior?" */ DO~~ + g-bbD119.marra
IF~~THEN REPLY @107 /*"Can you explain your arms situation?" */ DO~~ + g-bbD119.hands
IF~GlobalGT("G-agravalquest","GLOBAL",0)~THEN REPLY @108 /*"Is it normal for a baernaloth to have a modron dog?" */ DO~~ + g-bbD119.agraval
IF~~THEN REPLY @109 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.qaltfail
@111 /*The fiend does not say anything for a while. */
EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.suggestion
@115 /*As you speak, you sense a mental probe entering your mind and tearing through your thoughts in search of something. The fiend must have sensed a tiny trace of deception in your voice and is trying to break you. */
=@116 /*It must have taken less than a second in total, as your body did not have time to react properly. But your mind experienced the passage of time differently. Exhausted and confused, you say: */
END
IF~~THEN REPLY @118 /*"The rat thieves are holed up in Rat and Splat, under Zaddfum Trestle."  */ DO~SetGlobal("G-yangobetray","GLOBAL",1) SetGlobal("G-BBMain","GLOBAL",18) SetGlobal("G-Szczurwidolek","GLOBAL",6)~ + g-bbD119.leave
CHAIN IF~~THEN g-bbD119 g-bbD119.gehenna
@120 /*"The yagnoloths currently stationed in the Ditch all came from Gehenna, from the Tower of the Arcanaloths. But we do like Sigil, there is more to do here." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @121 /*"I am not sure if I want to know what you do here..." */
END
IF~~THEN REPLY @123 /*"So what do you do here?" */ DO~~ + g-bbD119.gehenna2
IF~~THEN REPLY @124 /*"I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @125 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.gehenna2
@127 /*The yagnoloth smiles. "I am not sure if it wants to know what we do here." */
END
IF~~THEN REPLY @129 /*"I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @130 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.marra
@132 /*"Not exactly. We are equal in status. However, marraenoloths have special privileges, so it is favorable for one to owe us a debt." */
END
IF~~THEN REPLY @134 /*"I see. I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @135 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.hands
@137 /*The yugoloth tenses up. It must be a touchy subject. It does not say anything, just stares at you intently. */
END
IF~~THEN REPLY @139 /*"Maybe you didn't hear me. I said: Can you explain your hand situation?" */ DO~Help() Enemy() ActionOverride(Protagonist,Attack("g-bb119"))~ EXIT
IF~~THEN REPLY @140 /*"Never mind. I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @141 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.agraval
@143 /*The yugoloth utters a long and very exhausted sigh. "No..." */
END
IF~~THEN REPLY @145 /*"So you met Agraval..." */ DO~~ + g-bbD119.agraval2
IF~~THEN REPLY @146 /*"Never mind. I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @147 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.agraval2
@149 /*"Indeed. Baernaloths are beyond criticism, it is an unwritten law for our kind, but this one is really asking for it." */
END
IF~~THEN REPLY @151 /*"You think it's some kind of game on the baernaloth's part?" */ DO~~ + g-bbD119.agraval3
IF~~THEN REPLY @152 /*"Never mind. I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @153 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.agraval3
@155 /*"Any other baernaloth, I would say yes. But this one..." It hesitates and looks around nervous, discreetly casting another spell. "I respect very much..." */
END
IF~~THEN REPLY @157 /*"I see. I have some other questions." */ DO~~ + g-bbD119.qalt
IF~~THEN REPLY @158 /*"I should be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD119 g-bbD119.down
@160 /*The fiend chucks you to the ground and walks away. */
EXIT