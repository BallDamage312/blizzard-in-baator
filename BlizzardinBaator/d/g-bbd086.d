BEGIN g-bbD086
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD086 g-bbD086.start1
@0 /*Behind the counter of The Rat and Splat stands a wererat who is better dressed, taller, and clearly older than the others. Those same wererats glance at him as if seeking confirmation that you are welcome here. Despite his position, he does not appear to be in the best of health. His fur is unkempt, and every so often he lets out a harsh cough. As you approach, he reaches for a nearby bottle and begins to clean it while scrutinizing you closely. */
=@1 /*"What are you staring at, biped?" he finally says. "I hope I do not have to repeat that I do not sell any larvae or unregistered sensory stones. I am clean, and you've got nothing on me, so pike off." */
END
IF~Global("G-BBmain","GLOBAL",9)~THEN REPLY @3 /*"Greetings. Are you harboring the bandits that the yagnoloths are looking for?" */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD086.9quest
IF~~THEN REPLY @4 /*"Greetings. I would like to order something, but not what you seem to think." */ DO~~ + g-bbD086.order
IF~~THEN REPLY @5 /*"Greetings. I have some questions." */ DO~~ + g-bbD086.questions
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @6 /*Turn to Annah. "What is he talking about?" */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD086.orvann
IF~InParty("Vhail") !StateCheck("Annah",CD_STATE_NOTVALID) GlobalLT("G-orvvha","GLOBAL",1)~THEN REPLY @7 /*Turn to Vhailor. "Is he clean? Is that the truth?" */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD086.orvvha
IF~~THEN REPLY @8 /*"Larvae? What are you talking about?" */ DO~~ + g-bbD086.larvae
IF~~THEN REPLY @9 /*"Sensory stones? What are you talking about?" */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD086.sstones
IF~~THEN REPLY @10 /*Attack the wererat. "You got me. This is why I came. You don't look clean, and it's time to pay." */ DO~Enemy() IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-knowstones","GLOBAL",1) SetGlobal("G-ratalarm","GLOBAL",1)~ EXIT
IF~~THEN REPLY @11 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD086 g-bbD086.start2
@13 /*The wererat coughs and looks at you suspiciously. "Are you gonna order something, or do you need information?" */
END
IF~Global("G-killmantuok","GLOBAL",1) Dead("Mantuok")~THEN REPLY @15 /*"Mantuok is dead." */ DO~SetGlobal("G-killmantuok","GLOBAL",3) AddexperienceParty(12000)~ JOURNAL @20264 + g-bbD086.ratquestok
IF~Global("G-BBmain","GLOBAL",9)~THEN REPLY @16 /*"Are you harboring the bandits that the yagnoloths are looking for?" */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD086.9quest
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @17 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~~ + g-bbD086.10quest
IF~Global("G-BBmain","GLOBAL",11)~THEN REPLY @18 /*"Do you still need to deal with the fish people? I've decided to help." */ DO~SetGlobal("G-BBmain","GLOBAL",12)~ SOLVED_JOURNAL @20018 + g-bbD086.11quest
IF~Global("G-BBmain","GLOBAL",12)~THEN REPLY @19 /*"Can you tell me again what I need to do about the kuo-toa?" */ DO~~ + g-bbD086.12quest
IF~Global("G-kuotoakiaran","GLOBAL",1)~THEN REPLY @20 /*"The kuo-toa now follow Kiaransalee, so they will only bring you *more* trouble." */ DO~~ + g-bbD086.kiaransalee
IF~Global("G-kuotoabhaal","GLOBAL",1)~THEN REPLY @21 /*"The kuo-toa now follow Bhaal, so they will only bring you *more* trouble." */ DO~~ + g-bbD086.bhaal
IF~Global("G-kuotoagod","GLOBAL",1) GlobalLT("G-BBmain","GLOBAL",15)~THEN REPLY @22 /*"The kuo-toa now follow me, so they will no longer pester you." */ DO~SetGlobal("G-BBmain","GLOBAL",15)~ SOLVED_JOURNAL @20021 + g-bbD086.14quest
IF~OR(3) Global("G-BBmain","GLOBAL",14) Global("G-kuotoagone","GLOBAL",1) Global("G-kuotoadead","GLOBAL",1)~THEN REPLY @23 /*"Dopilp and his minions are gone. Can I see Fragile-Tail now?" */ DO~SetGlobal("G-BBmain","GLOBAL",15)~ SOLVED_JOURNAL @20021 + g-bbD086.14quest
IF~~THEN REPLY @24 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @25 /*"I want to order something." */ DO~~ + g-bbD086.order
IF~~THEN REPLY @26 /*"Do you have any rooms?" */ DO~StartStore("g-bb#011",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @27 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.orvann
@29 /*Orville grunts and stares at Annah. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @30 /*"Stimulants. In case ye haven't caught on, he's not into 'em anymore and is tired o' being asked about 'em." */
==g-bbD086 @31 /*"The redhead understands. I'm tired, all right." */
END
IF~~THEN REPLY @33 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @34 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.orvvha
@36 /*Orville grunts and stares at Vhailor. */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @37 /**He IS telling the truth.* Vhailor says after a moment of unsettling silence. *His guilt WEIGHS heavily on his past, but he has served his time...* */
==g-bbD086 @38 /*The wererat simply stares at Vhailor with his muzzle held high, clearly trying to appear unfazed by the mercykiller's presence. Despite his efforts, he looks as if he is drenched in sweat, even though that is not anatomically possible. */
END
IF~~THEN REPLY @40 /*"I have some questions." */ DO~SetGlobal("G-orvvha","GLOBAL",1)~ + g-bbD086.questions
IF~~THEN REPLY @41 /*"Never mind. Goodbye." */ DO~SetGlobal("G-orvvha","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.larvae
@43 /*"A fiendish delicacy from the Gray Waste, distributed by yugoloths to night hags. The larvae are quite multipurpose. The problem with larvae is that they are a local kind of petitioner, meaning that they were intelligent creatures transformed into maggots after death. The fiends' tavern is over in the residential district, but I don't know why the Hardheads are looking for larvae dealers here too. Even the password doesn't help. They threaten us with violence. It's certainly a matter of prejudice. They think that if there's some shady scam going on, the wererats must be involved." */
END
IF~Global("G-orville3","GLOBAL",1)~THEN REPLY @45 /*"I see, continue." */ DO~SetGlobal("G-orville3","GLOBAL",0)~ + g-bbD086.ratquest3
IF~~THEN REPLY @46 /*"I have some questions." */ DO~SetGlobal("G-orville3","GLOBAL",0)~ + g-bbD086.questions
IF~Global("G-orville3","GLOBAL",0)~THEN REPLY @47 /*"You were saying something about stones...?" */ DO~~ + g-bbD086.sstones
IF~Global("G-orville3","GLOBAL",0)~THEN REPLY @48 /*"Do you always bring up illegal goods right after meeting someone?" */ DO~~ + g-bbD086.explain
IF~~THEN REPLY @49 /*"Goodbye." */ DO~SetGlobal("G-orville3","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.sstones
@51 /*"Bodies like you wander the blind alleys and basements of the Ditch, looking for visions that the high-ups have at the wave of a finger. But you won't find them here, get it?" */
END
IF~~THEN REPLY @53 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @54 /*"You were saying something about some larvae...?" */ DO~~ + g-bbD086.larvae
IF~~THEN REPLY @55 /*"Do you always bring up illegal goods right after meeting someone?" */ DO~~ + g-bbD086.explain
IF~~THEN REPLY @56 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.questions
@58 /*"Speak. I have clients to serve." */
END
IF~Global("G-BBmain","GLOBAL",9)~THEN REPLY @60 /*"Are you harboring the bandits that the yagnoloths are looking for?" */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD086.9quest
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @61 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~~ + g-bbD086.10quest
IF~Global("G-BBmain","GLOBAL",11)~THEN REPLY @62 /*"Do you still need to deal with the fish people? I've decided to help." */ DO~SetGlobal("G-BBmain","GLOBAL",12)~ SOLVED_JOURNAL @20018 + g-bbD086.11quest
IF~Global("G-BBmain","GLOBAL",12)~THEN REPLY @63 /*"Can you tell me again what I need to do about the kuo-toa?" */ DO~~ + g-bbD086.12quest
IF~Global("G-kuotoakiaran","GLOBAL",1)~THEN REPLY @64 /*"The kuo-toa now follow Kiaransalee, so they will only bring you *more* trouble." */ DO~~ + g-bbD086.kiaransalee
IF~Global("G-kuotoabhaal","GLOBAL",1)~THEN REPLY @65 /*"The kuo-toa now follow Bhaal, so they will only bring you *more* trouble." */ DO~~ + g-bbD086.bhaal
IF~Global("G-kuotoagod","GLOBAL",1) GlobalLT("G-BBmain","GLOBAL",15)~THEN REPLY @66 /*"The kuo-toa now follow me, so they will no longer pester you." */ DO~SetGlobal("G-BBmain","GLOBAL",15)~ SOLVED_JOURNAL @20021 + g-bbD086.14quest
IF~OR(3) Global("G-BBmain","GLOBAL",14) Global("G-kuotoagone","GLOBAL",1) Global("G-kuotoadead","GLOBAL",1)~THEN REPLY @67 /*"Dopilp and his minions are gone. Can I see Fragile-Tail now?" */ DO~SetGlobal("G-BBmain","GLOBAL",15)~ SOLVED_JOURNAL @20021 + g-bbD086.14quest
IF~~THEN REPLY @68 /*"I also want to order something." */ DO~~ + g-bbD086.order
IF~OR(2) Global("G-triplerquest","GLOBAL",2) Global("G-triplerquest","GLOBAL",3) ~THEN REPLY @69 /*"Do you know anything more about that strange skeleton hanging around the local taverns?" */ DO~~ + g-bbD086.triplerquest
IF~Global("G-rattemplequest","GLOBAL",1)~THEN REPLY @70 /*"Are there any temples to a wererat power around here?" */ DO~~ + g-bbD086.templequest
IF~Global("G-orville1","GLOBAL",0)~THEN REPLY @71 /*"Who are you? Is this your inn?" */ DO~SetGlobal("G-orville1","GLOBAL",1)~ + g-bbD086.orville
IF~Global("G-orville1","GLOBAL",1)~THEN REPLY @72 /*"Tell me again how you ended up here." */ DO~~ + g-bbD086.orvillere
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @73 /*"You mentioned you can set traps, didn't you?" */ DO~~ + g-bbD086.traps
IF~Dead("Mantuok") Global("G-killmantuok","GLOBAL",1)~THEN REPLY @74 /*"Mantuok is dead." */ DO~SetGlobal("G-killmantuok","GLOBAL",3) AddexperienceParty(12000)~ JOURNAL @20264 + g-bbD086.ratquestok
IF~Class(Protagonist,Thief) Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @75 /*"Can you teach me something about setting traps?" */ DO~~ + g-bbD086.traps-nam
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0) Global("G-annahtraps","GLOBAL",0)~THEN REPLY @76 /*"Can you teach Annah how to set traps?" */ DO~~ + g-bbD086.traps-ann
IF~Global("G-know_joseph","GLOBAL",1) !Dead("Joseph")~THEN REPLY @77 /*"What can you tell me about Black Joseph?" */ DO~~ + g-bbD086.joseph
IF~~THEN REPLY @78 /*"Tell me about your people, the wererats." */ DO~~ + g-bbD086.wererats
IF~~THEN REPLY @79 /*"Let's talk about what you said when we first met..." */ DO~~ + g-bbD086.again
IF~~THEN REPLY @80 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.orville
@82 /*The old wererat is silent for a moment, as if weighing whether it is worth speaking, but finally exhales in resignation. "I used to be the head of a gang of wererats that ruled the neighborhood. But some people didn't like the business we were doing with Hopeless, the gate-town to Hades. Eventually, a rival gang with powerful allies drove us out. All I have left is this inn, and that's not so bad in the end..." */
END
IF~Global("G-mantuokpeace","GLOBAL",0) Global("G-killmantuok","GLOBAL",0)~THEN REPLY @84 /*"Who drove you out?" */ DO~~ + g-bbD086.ratquest1
IF~Global("G-mantuokpeace","GLOBAL",0) Global("G-killmantuok","GLOBAL",0)~THEN REPLY @85 /*"Business with Hopeless?" */ DO~SetGlobal("G-orville3","GLOBAL",1)~ + g-bbD086.hopeless
IF~~THEN REPLY @86 /*"I want to ask about something else." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @87 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.orvillere
@89 /*"I used to be the head of a gang of wererats that ruled the neighborhood. But some people didn't like the business we were doing with Hopeless, the gate-town to Hades. Eventually, a rival gang with powerful allies drove us out." */
END
IF~Global("G-mantuokpeace","GLOBAL",0) Global("G-killmantuok","GLOBAL",0)~THEN REPLY @91 /*"Who drove you out?" */ DO~~ + g-bbD086.ratquest1
IF~Global("G-mantuokpeace","GLOBAL",0) Global("G-killmantuok","GLOBAL",0)~THEN REPLY @92 /*"Business with Hopeless?" */ DO~SetGlobal("G-orville3","GLOBAL",1)~ + g-bbD086.hopeless
IF~~THEN REPLY @93 /*"I want to ask about something else." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @94 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.poor
@96 /*"You poor bugger, you don't have enough copper," he coughs. "I ain't no Gatehouse soup cook, cutter." */
END
IF~~THEN REPLY @98 /*"I have more questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @99 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.ratquest1
@101 /*"Mantuok. My rats saw him recently in the Bones of the Night and report that he's working with Lothar. Under the protection of that graybeard, he's safe even from the Many-as-One." */
END
IF~~THEN REPLY @103 /*"Are you going to do something about him?" */ DO~SetGlobal("G-orville4","GLOBAL",1)~ + g-bbD086.ratquest2
IF~GlobalLT("Lo_Quest","GLOBAL",1)~THEN REPLY @104 /*"I haven't heard of him, but your description sounds like he is someone really important." */ DO~SetGlobal("G-orville4","GLOBAL",1)~ + g-bbD086.ratquest2
IF~GlobalGT("Lo_Quest","GLOBAL",1)~THEN REPLY @105 /*"I had the opportunity to get to know him better... And I guess you're right. What now?" */ DO~SetGlobal("G-orville4","GLOBAL",1) SetGlobal("Know_Mantuok","GLOBAL",1)~ + g-bbD086.ratquest2
IF~~THEN REPLY @106 /*"You mentioned business with Hopeless?" */ DO~SetGlobal("G-orville3","GLOBAL",1) SetGlobal("G-orville3","GLOBAL",1)~ + g-bbD086.hopeless
IF~~THEN REPLY @107 /*"I want to ask about something else." */ DO~SetGlobal("G-orville4","GLOBAL",1)~ + g-bbD086.questions
IF~~THEN REPLY @108 /*"Bye." */ DO~SetGlobal("G-orville4","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.hopeless
@110 /*"Hopeless is a gate-town to the Gray Waste of Hades. A dreadful, colorless place where one loses the will to live.I don't understand much about the local ban on colorful clothing, and even less about what the night hags bring up from the Lower Planes and, with the help of the yugoloths, introduce into the local market. Of course, we also had no part in the trade of goods banned in Sigil. I'll emphasize once more, we *do not* have any larvae here." */
END
IF~GlobalLT("G-orville4","GLOBAL",1) Global("G-orville3","GLOBAL",1)~THEN REPLY @112 /*"Going back to Mantuok, are you going to do something about him?" */ DO~~ + g-bbD086.ratquest2
IF~Global("G-orville3","GLOBAL",0)~THEN REPLY @113 /*"Alright, alright. Now tell me who drove you out?" */ DO~~ + g-bbD086.ratquest1
IF~~THEN REPLY @114 /*"Larvae? Why would they be banned?" */ DO~~ + g-bbD086.larvae
IF~~THEN REPLY @115 /*"I want to ask about something else." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @116 /*"Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.ratquest2
@118 /*"Mantuok knows he shouldn't show his face around here, because this is my turf and my people are here. I've also littered the area with traps that react to his scent. He's staying away, and that will have to do for me. But as long as he's still breathing, I'll never regain my former position. I can't attack him, though. My skull would surely end up in Lothar's collection." */
END
IF~Dead("Mantuok")~THEN REPLY @120 /*"*Someone* has already taken care of him. Here's your chance to find out firsthand." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) SetGlobal("G-killmantuok","GLOBAL",3) AddexperienceParty(12000)~ SOLVED_JOURNAL @20264 + g-bbD086.ratquestok
IF~!Dead("Mantuok")~THEN REPLY @121 /*"Well, if *I* took care of him, no one would suspect you." */ DO~SetGlobal("G-killmantuok","GLOBAL",1) SetGlobal("G-knoworvilletraps","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-1)~ SOLVED_JOURNAL @20262 + g-bbD086.ratquest3
IF~!Dead("Mantuok") CheckStatGT(Protagonist,16,CHR)~THEN REPLY @122 /*"You should find peace within yourself and let it go." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) AddexperienceParty(12000) SetGlobal("G-mantuokpeace","GLOBAL",1) SetGlobal("G-killmantuok","GLOBAL",2)~ SOLVED_JOURNAL @20263 + g-bbD086.ratquestpeace
IF~Global("Join_Dustmen","GLOBAL",1) !Dead("Mantuok")~THEN REPLY @123 /*"The passion with which you hate him is making it harder for you to achieve True Death. You should let it go." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) AddexperienceParty(12000) SetGlobal("G-mantuokpeace","GLOBAL",1) SetGlobal("G-killmantuok","GLOBAL",2)~ SOLVED_JOURNAL @20263 + g-bbD086.ratquestpeace
IF~Global("Join_Godsmen","GLOBAL",6) !Dead("Mantuok")~THEN REPLY @124 /*"It's a divine test. You should find a way to get rid of him." */ DO~SetGlobal("G-killmantuok","GLOBAL",1) SetGlobal("G-knoworvilletraps","GLOBAL",1)~ SOLVED_JOURNAL @20262 + g-bbD086.ratquest3
IF~Global("Join_Godsmen","GLOBAL",6) !Dead("Mantuok")~THEN REPLY @125 /*"It's a divine test. You should let it go." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) AddexperienceParty(12000) SetGlobal("G-mantuokpeace","GLOBAL",1) SetGlobal("G-killmantuok","GLOBAL",2)~ SOLVED_JOURNAL @20263 + g-bbD086.ratquestpeace
IF~Global("Join_Chaosmen","GLOBAL",1) !Dead("Mantuok")~THEN REPLY @126 /*"Let's sow chaos. Who knows what the consequences of him dying might be?" */ DO~SetGlobal("G-killmantuok","GLOBAL",1) SetGlobal("G-knoworvilletraps","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ SOLVED_JOURNAL @20262 + g-bbD086.ratquest3
IF~~THEN REPLY @127 /*"I have some questions." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD086.questions
IF~~THEN REPLY @128 /*"Never mind. Goodbye." */ DO~SetGlobal("G-knoworvilletraps","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.ratquestpeace
@130 /*The old wererat looks around as if weighing whether it is worth risking an escalation of the conflict. After a moment, he smiles and looks back at you. "Maybe you're right. I've lived through a lot, and maybe it's time to hand over the reins to the younger generation..." */
END
IF~~THEN REPLY @132 /*"I have some questions." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD086.questions
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @133 /*"You mentioned traps. Do you know how to set more advanced ones?" */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD086.traps
IF~~THEN REPLY @134 /*"Never mind. Goodbye." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.ratquest3
@136 /*"Maybe you could help. I'm not saying I'm hiring anyone to do anything, because that would be illegal, but there's nothing wrong with saying out loud that I'd be happy if Mantuok fell and smashed his stupid face." He frowns as you pull out your journal. "For the love of the Lady, *don't write* that down!" */
END
IF~~THEN REPLY @138 /*"Understood. But first I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @139 /*"Understood. You'll hear from me." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.ratquestok
@141 /*He seems impressed. "I can't believe it. I'll have that checked out, but... Tell me, do you happen to know how it happened?" */
END
IF~PartyHasItem("SkullMa")~THEN REPLY @143 /*Show him the skull of Mantuok. "He didn't make it when I took *this* away from him." */ DO~AddexperienceParty(60000)~ + g-bbD086.mantuokdead1
IF~~THEN REPLY @144 /*"You have to believe me. He died by my hand." */ DO~~ + g-bbD086.mantuokdead2
IF~~THEN REPLY @145 /*"That was an accident." */ DO~~ + g-bbD086.mantuokdead3
IF~Global("Lo_Quest","GLOBAL",10)~THEN REPLY @146 /*"Considering he intended to betray Lothar, he was already dead before I got to him" */ DO~~ + g-bbD086.mantuokdead4
CHAIN IF~~THEN g-bbD086 g-bbD086.mantuokdead1
@148 /*"There's no doubt about it, it's his skull. I can tell by the smell. Nobody reeks of alcohol and the stench of betrayal quite like this one. I owe you one, biped." The wererat clears his throat loudly. He seems pleased. */
END
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @150 /*"You mentioned traps. Do you know how to set them?" */ DO~~ + g-bbD086.traps
IF~~THEN REPLY @151 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @152 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.mantuokdead2
@154 /*"We'll wait and see... but I believe you, biped, for some reason." The wererat clears his throat loudly. He seems pleased. */
END
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @156 /*"You mentioned traps. Do you know how to set them?" */ DO~~ + g-bbD086.traps
IF~~THEN REPLY @157 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @158 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.mantuokdead3
@160 /*"That's it. *Accident*. Thank you." The wererat clears his throat loudly. He seems pleased. */
END
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @162 /*"You mentioned traps. Do you know how to set them?" */ DO~~ + g-bbD086.traps
IF~~THEN REPLY @163 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @164 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.mantuokdead4
@166 /*"Some bodies have probably never heard of the instinct of self-preservation, huh? Either way, it's a good thing. Some people will be happy." The wererat clears his throat loudly. He seems pleased. */
END
IF~Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @168 /*"You mentioned traps. Do you know how to set them?" */ DO~~ + g-bbD086.traps
IF~~THEN REPLY @169 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @170 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.traps
@172 /*"Indeed. Traps are a daily occurrence for rats. We have to know how to avoid them every day, and our chief power is known for setting them for yugoloths," Orville laughs hoarsely for a moment, but in an instant his face regains its full seriousness. "Setting them is a somewhat forgotten art among modern thieves, especially in Sigil. But we, the older generation, still remember. It's a valuable skill, especially when your reflexes aren't what they used to be." */
END
IF~Class(Protagonist,Fighter) Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0)~THEN REPLY @174 /*"Can you teach me something about setting traps?" */ DO~~ + g-bbD086.traps-nam
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) Global("G-orville1","GLOBAL",1) Global("G-orville2","GLOBAL",0) GlobalGT("G-knoworvilletraps","GLOBAL",0) Global("G-annahtraps","GLOBAL",0)~THEN REPLY @175 /*"Can you teach Annah how to set traps?" */ DO~~ + g-bbD086.traps-ann
IF~~THEN REPLY @176 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @177 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.order
@179 /*"We carry what it says here." He points to a board hanging on an enormous barrel behind his back. */
END
IF~PartyGoldGT(0)~THEN REPLY @181 /*"Do you have plain water?" */ DO~TakePartyGold(1)~ + g-bbD086.order1
IF~PartyGoldGT(1)~THEN REPLY @182 /*Order a wheat beer. */ DO~TakePartyGold(2) SetGlobal("G-orvilledrink","GLOBAL",1)~ + g-bbD086.order2plus
IF~PartyGoldGT(1)~THEN REPLY @183 /*Order an oatmeal stout. */ DO~TakePartyGold(2) SetGlobal("G-orvilledrink","GLOBAL",2)~ + g-bbD086.order2plus
IF~PartyGoldGT(1)~THEN REPLY @184 /*Order a corn beer. */ DO~TakePartyGold(2) SetGlobal("G-orvilledrink","GLOBAL",3)~ + g-bbD086.order2plus
IF~PartyGoldGT(4) Global("G-corngooner","GLOBAL",0)~THEN REPLY @185 /*Order a sunflower seed beer. */ DO~TakePartyGold(5) SetGlobal("G-orvilledrink","GLOBAL",4)~ + g-bbD086.order2plus
IF~PartyGoldGT(4) Global("G-corngooner","GLOBAL",1)~THEN REPLY @186 /*Order another sunflower seed beer. */ DO~TakePartyGold(5)~ + g-bbD086.order3
IF~PartyGoldGT(19)~THEN REPLY @187 /*Order whiskey. */ DO~TakePartyGold(20) SetGlobal("G-orvilledrink","GLOBAL",5)~ + g-bbD086.order2plus
IF~PartyGoldGT(7)~THEN REPLY @188 /*Order wine. */ DO~TakePartyGold(8) SetGlobal("G-orvilledrink","GLOBAL",6)~ + g-bbD086.order2plus
IF~PartyGoldGT(9)~THEN REPLY @189 /*Order grain vodka. */ DO~TakePartyGold(10) SetGlobal("G-orvilledrink","GLOBAL",7)~ + g-bbD086.order2plus
IF~PartyGoldLT(1)~THEN REPLY @190 /*"Do you have plain water?" */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(2)~THEN REPLY @191 /*Order a wheat beer. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(2)~THEN REPLY @192 /*Order an oatmeal stout. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(5)~THEN REPLY @193 /*Order a corn beer. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(2)~THEN REPLY @194 /*Order a sunflower seed beer. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(20)~THEN REPLY @195 /*Order whiskey. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(8)~THEN REPLY @196 /*Order wine. */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(10)~THEN REPLY @197 /*Order grain vodka. */ DO~~ + g-bbD086.poor
IF~~THEN REPLY @198 /*"Do you have larvae?" */ DO~~ + g-bbD086.larvae1
IF~~THEN REPLY @199 /*"I need information." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @200 /*"I'll be going, thank you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.larvae1
@202 /*"Like I said..." the wererat replies with a clear hint of irritation. "I don't have anything like that here. And I can't get it for you. End of story. Do you want something else, cutter?" */
END
IF~~THEN REPLY @204 /*"Yes." */ DO~~ + g-bbD086.order
IF~~THEN REPLY @205 /*"I'll be going, thank you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.explain
@207 /*"If you'd had as much to do with the Mercykillers and the Harmonium as I have, you'd know that you have to be straightforward with them, so that they understand clearly. But never mind that. Do you want anything?" */
END
IF~~THEN REPLY @209 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @210 /*"You were saying something about larvae...?" */ DO~~ + g-bbD086.larvae
IF~~THEN REPLY @211 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.order1
@213 /*Orville seems surprised by such a polite order. It does not seem to be a popular drink among his patrons. "Well... I'll find something..." He disappears for a moment and returns with a wooden mug filled with slightly murky water. */
=@214 /*You take a sip, and sure enough, you are drinking plain water. It is nothing special, but it gives you a sense of relief, in a way. It might not be the purest water, but you'd rather not dwell on that. "Anything else?" */
END
IF~~THEN REPLY @216 /*"Yes." */ DO~~ + g-bbD086.order
IF~~THEN REPLY @217 /*"I'll be going. Thank you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.order2plus
@219 /*The wererat walks over to one of the barrels and carefully pours the liquid into a glass. He then turns back to you and hands you the drink you ordered. */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",1)~THEN @220 /*It is fresh and appetizing. You can feel a delicate acidity, as well as notes of citrus and spices. */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",2)~THEN @221 /*This beer is quite strong and has a complex flavor, reminiscent of coffee or chocolate. */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",3)~THEN @222 /*The beer is a pale straw color with a tart aftertaste reminiscent of cider. Only after you finish drinking it does the barkeep speak up. "You might be interested to know that the corn used in this beer was chewed beforehand to convert the sugars. For some reason, it helps business to point out that women did the chewing." */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",4)~THEN @223 /*This beer has been enriched with sunflower seeds, providing a delicate, slightly nutty flavor with a hint of sweetness. */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",5)~THEN @224 /*You feel a pleasant burning sensation that prevents you from drinking it too quickly, forcing you to savor its smooth, full-bodied flavor with hints of spice and sweetness. "This is our most expensive drink. Would you like anything else?" */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",6)~THEN @225 /*This wine is not particularly refined. It has a smoky aroma, and its flavor is intense, tart, and bitter. It also tastes slightly stale. */
==g-bbd086 IF~Global("G-orvilledrink","GLOBAL",7)~THEN @226 /*The vodka is pure and has very little aroma or flavor. However, it leaves a sharp aftertaste that makes you pause before ordering another drink. */
==g-bbd086 IF~!Global("G-orvilledrink","GLOBAL",5)~THEN @227 /*"Anything else?" */
END
IF~Global("G-orvilledrink","GLOBAL",3)~THEN REPLY @229 /*"It would have been better to mention this beforehand... But yes, I'd like something else." */ DO~SetGlobal("G-orvilledrink","GLOBAL",0) SetGlobal("G-corngooner","GLOBAL",1)~ + g-bbD086.order
IF~Global("G-orvilledrink","GLOBAL",3)~THEN REPLY @230 /*"No, thanks. I'll be going now." */ DO~SetGlobal("G-orvilledrink","GLOBAL",0) SetGlobal("G-corngooner","GLOBAL",1)~ EXIT
IF~!Global("G-orvilledrink","GLOBAL",3)~THEN REPLY @231 /*"Yes." */ DO~SetGlobal("G-orvilledrink","GLOBAL",0)~ + g-bbD086.order
IF~!Global("G-orvilledrink","GLOBAL",3)~THEN REPLY @232 /*"No, thanks. I'll be going now." */ DO~SetGlobal("G-orvilledrink","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.order3
@234 /*"So you got a taste for it, didn't you? Let me repeat that to be sure: it was definitely *women* who chewed it. There is no possibility it could have been anyone else. *Human* women, of course." */
=@235 /*Quiet laughter ripples through the tavern. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @236 /*Annah leans against the counter next to you and buries her face in her hands, sighing loudly. */
END
IF~~THEN REPLY @238 /*"I'd like to order something else." */ DO~~ + g-bbD086.order
IF~~THEN REPLY @239 /*"I'll be going, thank you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.joseph
@241 /*"I assume he's a human thug, right? He doesn't meddle in wererat business, so I don't stick my nose into his affairs either. Besides, I'm done with that line of work, so let someone else worry about him." Orville takes a deep, wheezing breath and pauses to think for a moment. "From what I've heard, he's quite a big guy." */
END
IF~~THEN REPLY @243 /*"I have some other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @244 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.wererats
@246 /*Orville sighs and shoots you an almost contemptuous look. "How often do you hear people talking about *humans*, biped? You'd think you'd just fallen off the Prime and couldn't tell your ass from your head." He spits into the goblet he is holding, then, despite his outburst, continues speaking. "You've surely heard the chant on lycanthropy. A curse, a disease, call it what you will. It can be carried by various humanoids who, under certain conditions, transform into some kind of animal, or, as seems to be the case here in Sigil, something in between. At first glance, it sounds awful, but it's actually much better than being a boring human. Wounds heal quickly, you don't get diseases, and you can handle eating all sorts of strange things. Life couldn't be any better." */
END
IF~~THEN REPLY @248 /*"Wounds healing? Resistance to disease? Hells, maybe I'm a wererat too?" */ DO~~ + g-bbD086.wererats1
IF~~THEN REPLY @249 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @250 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.wererats1
@252 /*"I think if you were a wererat, you'd know it. Do you have long whiskers? A tail? You look more like you gave the Mortuary the slip." */
END
IF~~THEN REPLY @254 /*"I'm not saying this is what actually happened, but..." */ DO~~ + g-bbD086.wererats2
IF~~THEN REPLY @255 /*"I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @256 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.wererats2
@258 /*"Not much of what comes before 'but' really matters, does it? I won't rat you out to the dusties, don't worry." */
END
IF~~THEN REPLY @260 /*"Not everyone is so understanding. I have a few questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @261 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.traps-ann0
@263 /*Orville looks closely at Annah, who proudly stands before him, swishing her tail. "Well... I swore I wouldn't teach anyone without a tail, but this young chit has a beautiful one, so... fine. It'll cost you, though. I'm not going to pass up a chance to make some jink." */
END
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @265 /*"Remember, I helped you with Mantuok." */ DO~ActionOverride("Annah",ApplySpellRES("g-bb665","Annah")) FadeToColor([20.0],0) SetGlobal("G-orvilleteachannahcheap","GLOBAL",1)~ + g-bbD086.traps-ann
IF~PartyGoldGT(999)~THEN REPLY @266 /*"Here's 1000 coppers." */ DO~TakePartyGold(1000) ActionOverride("Annah",ApplySpellRES("g-bb665","Annah")) FadeToColor([20.0],0) SetGlobal("G-orvilleteachannahcheap","GLOBAL",2)~ + g-bbD086.traps-ann
IF~PartyGoldGT(99)~THEN REPLY @267 /*"Here's 100 coppers." */ DO~TakePartyGold(100) ActionOverride("Annah",ApplySpellRES("g-bb665","Annah")) FadeToColor([20.0],0) SetGlobal("G-orvilleteachannahcheap","GLOBAL",1)~ + g-bbD086.traps-ann
IF~PartyGoldGT(9)~THEN REPLY @268 /*"Here's 10 coppers, let's go." */ DO~~ + g-bbD086.poor
IF~PartyGoldGT(1)~THEN REPLY @269 /*"Here's a copper." */ DO~~ + g-bbD086.poor
IF~PartyGoldLT(1)~THEN REPLY @270 /*"I've got no jink on me..." */ DO~~ + g-bbD086.poor
CHAIN IF~~THEN g-bbD086 g-bbD086.traps-ann
@272 /*As you present your offer, the wererat considers it for a second. */
==g-bbD086 IF~Global("G-orvilleteachannahcheap","GLOBAL",1)~THEN @273 /*"Fine," he agrees after a moment's thought. "I assume you already know the basics of *detecting* traps, miss." */
==g-bbD086 IF~Global("G-orvilleteachannahcheap","GLOBAL",2)~THEN @274 /*"It's a... fair price." He's a little surprised, but he takes the bag of coppers with a quick movement of his hand. So quick, you don't even feel it. "I assume you know the basics of *detecting* traps, miss." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @275 /*"Aye, I do," Annah replies. For some reason, you expected her to be a bit of a troublemaker, but she is listening very intently. */
==g-bbD086 @276 /*"A lot depends on your level of experience as a thief, but to really outsmart your opponents, you have to take the *environment* into account and use it to your advantage. Use your instincts, think about where you usually *look* for traps, and do the same to others. A narrow passage, a chasm, a natural barrier? Use them," explains the wererat passionately, making various gestures in the air. He suddenly seems a few years younger. "Now let's talk about the types of traps. Which ones do you know?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @277 /*"Mechanical and magical..." she replies. "Mechanical like pits, arrow traps, falling blocks, water or acid, anything that relies on a mechanism. And magical ones are based on enchanted devices, spells, or glyphs." */
==g-bbD086 @278 /*"That's right, let's start by focusing on the basics... You need to master the basics of levers, buttons, and wires. You'd be surprised how many trap components you can buy at a regular market in the Hive." Orville suddenly turns to you. "I'm not teaching you, tailless one. Leave us alone for a while." */
END
IF~~THEN REPLY @280 /*Wait. */ DO~FadeToColor([20.0],0) Wait(1) FadeFromColor([20.0],0) SetGlobal("G-annahtraps","GLOBAL",1) GiveExperience("Annah",120000) PermanentStatChange("Annah",INT,RAISE,1) ActionOverride("Annah",ApplySpellRES("g-bb665","Annah")) ~ + g-bbD086.traps-ann4
CHAIN IF~~THEN g-bbD086 g-bbD086.traps-ann4
@282 /*"That's enough teaching. She has to learn the rest by herself, through practice. Just don't let her set anything up in the tavern, yes?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @283 /*"I've learned some new tricks." [ANA338A] */
END
IF~~THEN REPLY @285 /*"Thanks. I have more questions." */ DO~SetGlobal("G-orville2","GLOBAL",1) ~ JOURNAL @6006 + g-bbD086.questions
IF~~THEN REPLY @286 /*"Thanks. Goodbye." */ DO~SetGlobal("G-orville2","GLOBAL",1)~ JOURNAL @6006 EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.traps-nam
@288 /*"I refuse. I swore to myself I wouldn't teach the secrets of my profession to anyone without a tail. Professional ethics." He laughs loudly, but after a few seconds, his mirth is punished by fate, and the laughter turns into a fit of deep coughing. */
END
IF~~THEN REPLY @290 /*Wait until Orville regains his breath. "I have more questions." */ DO~~ + g-bbD086.questions
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) Global("G-orville1","GLOBAL",1) Global("G-annahtraps","GLOBAL",0)~THEN REPLY @291 /*Wait until Orville regains his breath. "Can you teach Annah?" */ DO~~ + g-bbD086.traps-ann0
IF~~THEN REPLY @292 /*"Thanks for nothing. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.9quest
@295 /*Orville seems utterly taken aback by such a direct question. "Are you *serious*? Of course not! And even if I were, I'd never tell you, because the yugoloths would come back with some giant hydroloth and rip the roof off my lair, so their huge paws could finally fit inside." */
==g-bbD006 @296 /*The imp jumps out of the bag, nearly knocking you off balance. "NO! He doesn't mean anything like that. He and Prod are just looking for the owner of a frostbitten butt. It's a matter that has absolutely *nothing* to do with theft!" */
==g-bbD006 @297 /*Pod then turns to you and whispers. "Mister, please. We don't have to escalate. Prod would like to keep a low profile... Let's just learn about the source of the frostbite and that should tell us where the portal to Cania is located." */
END
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @299 /*"That's right. I have no intention of handing them over to the fiends. I just need to talk to the one with a frostbitten tail." */ DO~SetGlobal("G-BBmain","GLOBAL",10) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20016 + g-bbD086.persu
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @300 /*"That's right. I have no intention of handing them over to the fiends. I just need to talk to the one with a frostbitten tail." */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD086.FAILL
IF~CheckStatGT(Protagonist,12,CHR) CheckStatGT(Protagonist,12,INT)~THEN REPLY @301 /*Ignore Prod. "You know... nothing stops me from telling them that you're harboring them either way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-BBmain","GLOBAL",10) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20016 + g-bbD086.intim
IF~!CheckStatGT(Protagonist,12,CHR)  CheckStatGT(Protagonist,12,INT)~THEN REPLY @302 /*Ignore Prod. "You know... nothing stops me from telling them that you're harboring them either way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) ActionOverride("g-bb006",DestroySelf())~ + g-bbD086.FAILL
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @303 /*"That's right. Remember, I helped you with Mantuok." */ DO~SetGlobal("G-BBmain","GLOBAL",10) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20016 + g-bbD086.past
IF~PartyGoldGT(999)~THEN REPLY @304 /*"That's right. Would 1000 copper coins help?" */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD086.bribe
IF~~THEN REPLY @305 /*"Never mind. I have some questions." */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD086.questions
IF~~THEN REPLY @306 /*"Never mind. Goodbye." */ DO~ActionOverride("g-bb006",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.persu
@308 /*"Oh, you're just looking for Fragile-Tail? You're in luck, because he's the only one of those thugs still alive. But I'm not going to put you in touch with him just like that, for free." */
END
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @310 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~SetGlobal("G-BBmain","GLOBAL",11)~ SOLVED_JOURNAL @20017 + g-bbD086.10quest
IF~~THEN REPLY @311 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @312 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.bribe
@314 /*Orville smiles, revealing a slightly gapped row of sharp, slender fangs. "You're aiming at the right cage, but you're shooting at a cat that's too skinny. I can't afford to cover potential losses for a thousand copper. Give me *ten* thousand, and I'll tell you where Fragile-Tail is." */
END
IF~PartyGoldGT(9999)~THEN REPLY @316 /*"That's steep, but... fine." */ DO~SetGlobal("G-BBmain","GLOBAL",10)~ + g-bbD086.bribe2
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @317 /*"I have no intention of handing him over to the fiends. I just need to talk to the one with a frostbitten tail." */ DO~SetGlobal("G-BBmain","GLOBAL",10)~ + g-bbD086.persu
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @318 /*"I have no intention of handing him over to the fiends. I just need to talk to the one with a frostbitten tail." */ DO~~ + g-bbD086.FAILL
IF~CheckStatGT(Protagonist,12,CHR) CheckStatGT(Protagonist,12,INT)~THEN REPLY @319 /*"You know... nothing stops me from giving you up to the yugoloths either way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-BBmain","GLOBAL",10)~ + g-bbD086.intim
IF~!CheckStatGT(Protagonist,12,CHR)  CheckStatGT(Protagonist,12,INT)~THEN REPLY @320 /*"You know... nothing stops me from giving you up to the yugoloths either way." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD086.FAILL
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @321 /*"Remember, I helped you with Mantuok." */ DO~SetGlobal("G-BBmain","GLOBAL",10)~ + g-bbD086.past
IF~~THEN REPLY @322 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @323 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.bribe2
@325 /*Orville eagerly takes the large bag full of coins and greedily hides it under the counter. "It's a pleasure doing business with you! Yes, I'm harboring Fragile-Tail, the only bandit still alive. He usually works for me, so he came here to hide. But for that many coins... do with him as you please." */
END
IF~~THEN REPLY @327 /*"So, where is he?" */ DO~SetGlobal("G-BBmain","GLOBAL",16) TakePartyGold(10000)~ SOLVED_JOURNAL @20022 + g-bbD086.14quest
CHAIN IF~~THEN g-bbD086 g-bbD086.intim
@329 /*"Good point... Of all those bandits, only one is still alive: Fragile-Tail. He's in my custody, but I can't just hand him over. If you do something for me, I'll let you talk to him..." */
END
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @331 /*"Remember, I helped you with Mantuok." */ DO~~ + g-bbD086.pastF
IF~~THEN REPLY @332 /*Attack the wererat. "So, he's around here somewhere? Excellent. Then die." */ DO~Enemy() IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-ratalarm","GLOBAL",1)~ EXIT
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @333 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~~ + g-bbD086.10quest
IF~~THEN REPLY @334 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @335 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.FAILL
@337 /*Orville shakes his head. "Look, human." He pauses for a moment. "... humanoid...  you are all right for a tailless one, but this is ratfolk business. Do not interfere." */
END
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @339 /*"Remember, I helped you with Mantuok." */ DO~SetGlobal("G-BBmain","GLOBAL",10)~ JOURNAL @20016 + g-bbD086.past
IF~PartyGoldGT(999)~THEN REPLY @340 /*"Would 1000 copper coins help?" */ DO~~ + g-bbD086.bribe
IF~~THEN REPLY @341 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @342 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.past
@344 /*"Fair enough... Of all those bandits, only one is still alive: Fragile-Tail. He's in my custody, but I can't just hand him over. If you do something for me, I'll let you talk to him..." */
END
IF~Global("G-killmantuok","GLOBAL",2)~THEN REPLY @346 /*"Again... Remember that I helped you with Mantuok." */ DO~~ + g-bbD086.pastF
IF~~THEN REPLY @347 /*Attack the wererat. "So, he's around here somewhere? Excellent. Then die." */ DO~Enemy() IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-ratalarm","GLOBAL",1)~ EXIT
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @348 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~~ + g-bbD086.10quest
IF~~THEN REPLY @349 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @350 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.pastF
@352 /*"That's correct, but you cannot rely on that forever. This will take a bit *more* work...." Orville taps the counter with a thin finger. */
END
IF~Global("G-BBmain","GLOBAL",10)~THEN REPLY @354 /*"Is there anything I can do to talk to Fragile-Tail?" */ DO~~ + g-bbD086.10quest
IF~~THEN REPLY @355 /*"Never mind. I have some questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @356 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.10quest
@358 /*Orville pauses for a moment, breathing heavily. "Actually, yes. There is one thing you might look into. You probably know about the flooded residential area nearby, right?" */
END
IF~Global("G-ARG-04visited","GLOBAL",0)~THEN REPLY @360 /*"I know it exists. I have seen it across the water." */ DO~~ + g-bbD086.10quest1
IF~Global("G-ARG-04visited","GLOBAL",1)~THEN REPLY @361 /*"Yes, I have even been there. It's full of jagged rocks and half-sunken buildings." */ DO~~ + g-bbD086.10quest1
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @362 /*"I know it is infested with razorvine, which spreads this way." */ DO~~ + g-bbD086.10quest1
IF~Global("G-adrean_vine","GLOBAL",1)~THEN REPLY @363 /*"I know it is infested with razorvine, which spreads this way. It originally fell into the Ditch because its foundations were torn apart by it." */ DO~~ + g-bbD086.10quest2
IF~Global("G-ishtarhistory","GLOBAL",1)~THEN REPLY @364 /*"I know that there is an ancient relief that was revealed when it collapsed, which raises very interesting questions about the history of this city." */ DO~~ + g-bbD086.10quest2
IF~Global("G-adamkuotoa","GLOBAL",1)~THEN REPLY @365 /*"I know that some kuo-toa live thereabouts." */ DO~~ + g-bbD086.10quest3
CHAIN IF~~THEN g-bbD086 g-bbD086.10quest1
@367 /*"Yes, that's exactly the place," Orville holds his breath for a moment and lowers his voice. "There are certain creatures living there that are causing problems for my people's operations. The kuo-toa." */
END
IF~~THEN REPLY @369 /*"And you would like me to take care of them?" */ DO~SetGlobal("G-BBmain","GLOBAL",11)~ SOLVED_JOURNAL @20017 + g-bbD086.10questCONF
CHAIN IF~~THEN g-bbD086 g-bbD086.10quest2
@371 /*Orville seems surprised. "Yes... you seem to know a lot about it." He holds his breath for a moment and lowers his voice. "There are certain creatures living there that are causing problems for my people's operations. The kuo-toa." */
END
IF~~THEN REPLY @373 /*"And you would like me to take care of them?" */ DO~SetGlobal("G-BBmain","GLOBAL",11)~ SOLVED_JOURNAL @20017 + g-bbD086.10questCONF
CHAIN IF~~THEN g-bbD086 g-bbD086.10quest3
@375 /*"You've read my mind, friend. The kuo-toa are causing great problems for my people." */
END
IF~~THEN REPLY @377 /*"And you would like me to take care of them?" */ DO~SetGlobal("G-BBmain","GLOBAL",11)~ SOLVED_JOURNAL @20017 + g-bbD086.10questCONF
CHAIN IF~~THEN g-bbD086 g-bbD086.10questCONF
@379 /*"Apparently, they have a leader, a cleric called Dopilp. He seems to be at the center of their so-called 'community.' Get rid of him and the rest should scatter." */
END
IF~~THEN REPLY @381 /*"All right, I'll do it." */ DO~SetGlobal("G-BBmain","GLOBAL",12) SetGlobal("G-killkuotoa","GLOBAL",1)~ SOLVED_JOURNAL @20018 + g-bbD086.11quest
IF~~THEN REPLY @382 /*"What exactly did the poor fish people do to you?" */ DO~~ + g-bbD086.10questMORE
IF~~THEN REPLY @383 /*"Sorry, I'm not going to exterminate the poor fish people just because they're causing problems in your underworld. I have other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @384 /*"Sorry, I'm not going to exterminate the poor fish people just because they're causing problems in your underworld. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.10questMORE
@386 /*"They're *hunting* us and the people living near the Ditch. We... I mean, my friends, with whom I have no legal ties... they just move certain goods around. In contrast, the kuo-toa sacrifice people on their bloody altars. Do they still sound like poor fish people to you?" */
END
IF~~THEN REPLY @388 /*"Fair enough. I'll do it." */ DO~SetGlobal("G-BBmain","GLOBAL",12) SetGlobal("G-killkuotoa","GLOBAL",1)~ SOLVED_JOURNAL @20018 + g-bbD086.11quest
IF~~THEN REPLY @389 /*"Sorry, I won't do it. I have other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @390 /*"Sorry, I won't do it. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.11quest
@392 /*Orville beams with excitement. "Oh, hairy be thy mane! When Dopilp is dead, I'll lead you to Fragile-Tail and you can talk to him about whatever you want." */
END
IF~~THEN REPLY @394 /*"I'll be back with his head. In the meantime, I have other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @395 /*"I'll be back with his head. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.12quest
@397 /*The wererat barkeep sighs and seems disappointed with your short memory. "There is a kuo-toa lair somewhere in the flooded settlement. Their murderous congregation is led by a priest, Dopilp. Get rid of him for us and you will be granted access to Fragile-Tail." */
END
IF~~THEN REPLY @399 /*"I'll be back with his head. In the meantime, I have other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @400 /*"I'll be back with his head. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.14quest
@402 /*Orville smiles, revealing his ratty but still sharp teeth. "Fragile-Tail is in the back, just up the stairs." He takes a key from his apron pocket and hands it to you. "Here's the key, biped." */
END
IF~~THEN REPLY @404 /*Take the key. "Thank you, Orville." */ DO~GiveItemCreate("G-bbi011",Protagonist,0,0,0)~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.again
@406 /*"What do you mean, 'biped'?" */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @408 /*Talk to Annah. "I wanted to ask you about some of the things Orville mentioned: unregistered sensory stones and larvae. What do you know about them?" */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD086.orvann
IF~InParty("Vhail") !StateCheck("Annah",CD_STATE_NOTVALID) GlobalLT("G-orvvha","GLOBAL",1)~THEN REPLY @409 /*Talk to Vhailor. "Did the wererat tell me the truth? Is he innocent?" */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD086.orvvha
IF~~THEN REPLY @410 /*"You mentioned larvae. What's that?" */ DO~~ + g-bbD086.larvae
IF~Global("G-rattemplequest","GLOBAL",1)~THEN REPLY @411 /*"Are there any temples to wererat powers around here?" */ DO~~ + g-bbD086.templequest
IF~~THEN REPLY @412 /*"You mentioned unregistered sensory stones." */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD086.sstones
IF~~THEN REPLY @413 /*"You're right, never mind. Let's get back to the matter at hand." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @414 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.templequest
@416 /*"You mean a secret cathedral dedicated to our highest power, Squerrik, hairy be thy mane? No. There is no such place in Sigil." */
END
IF~OR(3) CheckStatGT(Protagonist,14,WIS) CheckStatGT(Protagonist,14,INT) CheckStatGT(Protagonist,14,CHR)~THEN REPLY @418 /*"You say that as if it were a secret, but you also kind of admitted its existence. Why is that?" */ DO~~ + g-bbD086.templequest2
IF~~THEN REPLY @419 /*"Never mind. I have some other questions." */ DO~~ + g-bbD086.questions
IF~~THEN REPLY @420 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.templequest2
@422 /*Orville sighs resignedly. "Like any other decent wererat, I love and worship Squerrik, but... Those temple barmies are exactly that: *barmies*. They're an aggressive cult that don't belong in this city. I don't know where the whole temple is. I only know that people have been gossiping about it around the Ditch, mostly kids. Some boy must have stumbled upon it by accident while crawling through the pipes. Human kids are strange." */
END
IF~~THEN REPLY @424 /*"Kids? Interesting... I should chat with some of them. In the meantime, I have some other questions." */ DO~SetGlobal("G-rattemplequest","GLOBAL",2) AddexperienceParty(10000) ~ SOLVED_JOURNAL @20204 + g-bbD086.questions
IF~~THEN REPLY @425 /*"Kids? Interesting... I should chat with some of them. Goodbye." */ DO~SetGlobal("G-rattemplequest","GLOBAL",2) AddexperienceParty(10000) ~ SOLVED_JOURNAL @20204 EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.kiaransalee
@427 /*"What? Why? What happened?!" Orville opens his little eyes so wide they look like they are about to pop out. */
END
IF~~THEN REPLY @429 /*"I have converted them to the only true path. They will soon come here to enlist you in the ranks of her eternal army." */ DO~Enemy() Help() Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-BBmain","GLOBAL",18) SetGlobal("G-ratalarm","GLOBAL",1)~ SOLVED_JOURNAL @20024 EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.bhaal
@431 /*"What? Why? What happened?!" Orville opens his little eyes so wide they look like they are about to pop out. */
END
IF~~THEN REPLY @433 /*"I may have put them in the hands of a murder-god. They will likely be here shortly." */ DO~Enemy() Help() Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-BBmain","GLOBAL",18) SetGlobal("G-ratalarm","GLOBAL",1)~ SOLVED_JOURNAL @20024 EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.triplerquest
@435 /*"It's hard to know anything about him because he doesn't talk to anyone, and his 'face' doesn't look familiar, or really like anything at all. Not that I'm particularly interested, but it doesn't bother me either, especially since the guy's a regular customer. He's here every morning and pays triple for everything!" The innkeeper laughs to himself. */
END
IF~~THEN REPLY @437 /*"I'm sure you know something more." */ DO~SetGlobal("G-triplerquest","GLOBAL",4)~ SOLVED_JOURNAL @20231 + g-bbD086.triplerquest1
IF~~THEN REPLY @438 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD086 g-bbD086.triplerquest1
@440 /*"If you want to find out more, you'd better go visit the 'Styx Oarsman.' Zegonz hangs out with fiends, and it was probably one of them who scrambled that skeleton. At any rate, that's how it looks from where I'm sitting." */
END
IF~~THEN REPLY @442 /*"Thanks. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @443 /*"I still have some questions." */ DO~~ + g-bbD086.questions