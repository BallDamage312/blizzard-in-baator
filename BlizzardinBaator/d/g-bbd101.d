BEGIN g-bbD101
CHAIN IF~OR(2) Global("G-agravalquest","GLOBAL",12) Global("G-agravalquest","GLOBAL",3)~THEN g-bbD101 g-bbD101.ambush1
@0 /*"You. Treacherous serpent of chaos." Agraval hisses furiously. Droplets of his acidic saliva splatter onto the cobblestones, sizzling and burning holes in them. "You piece of animated carrion, despised even by worms! How dare you lie to the great Agraval, Slayer of Three Hundred Mariliths, Obsidian Blade of Silent Death, lord and master of the Scarlet Shadow domain! How dare you toy with his attachment to his faithful companion! You will pay for this insult, mortal. You will pay with your blood and your soul." The fiend turns to the two mezzoloths accompanying him. "Gzrax! Kharax! Whoever devours the entrails of this mortal first will receive a reward!" */
END
IF~~THEN REPLY @2 /*Defend yourself. */ DO~ActionOverride(Protagonist,Attack("g-bb101")) Help() Enemy() SetGlobal("G-agravalquest","GLOBAL",14)~ SOLVED_JOURNAL @20133 EXIT
CHAIN IF~Global("G-pimpekmov","GLOBAL",1)~THEN g-bbD101 g-bbD101.MOVIEOVERRIDE
@5 /*You stare intently at an amateur drawing made, for reasons unknown, with pink ink. You decide it would be safer not to dwell on the artistic value of this work. */
END
IF~~THEN REPLY @7 /*"Patch?" */ DO~SetGlobal("G-agravalquest","GLOBAL",1) SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20121 + g-bbD101.L1
IF~~THEN REPLY @8 /*"Your best friend is... a modron?" */ DO~SetGlobal("G-agravalquest","GLOBAL",1) SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20121 + g-bbD101.L1
IF~Global("g-agravalothermodron1","GLOBAL",1)~THEN REPLY @9 /*Lie: "I saw him. He's among the aquaria of the Vertical Sea, near the theater. If you hurry, you'll find him."  */ DO~SetGlobal("G-agravalquest","GLOBAL",3) SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20123 + g-bbD101.leave
IF~Global("g-agravalothermodron2","GLOBAL",1)~THEN REPLY @10 /*Lie: "I saw him. He's on one of the islands among the ruins of the sunken settlement. He's in pretty bad shape; someone damaged him. You should find him easily." */ DO~SetGlobal("G-agravalquest","GLOBAL",3)  SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20123 + g-bbD101.leave
IF~Global("g-agravalpimpek","GLOBAL",1)~THEN REPLY @11 /*"I saw him. He's at the Suicide Falls, on a wooden platform by the painting on the cliff." */ DO~SetGlobal("G-agravalquest","GLOBAL",2) SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20122 + g-bbD101.leave
IF~~THEN REPLY @12 /*"That's not what I expected. I can't help you after all. See you around." */ DO~SetGlobal("G-agravalquest","GLOBAL",1) SetGlobal("G-pimpekmov","GLOBAL",0)~ SOLVED_JOURNAL @20121 EXIT
CHAIN IF~Global("G-agravalquest","GLOBAL",6) Global("G-agravalrun","GLOBAL",1)~THEN g-bbD101 g-bbD101.ambush2
@14 /*"You. Treacherous serpent of chaos." Agraval hisses furiously. Droplets of his acidic saliva splatter onto the cobblestones, sizzling and burning holes in them. "You piece of animated carrion that even worms despise! How dare you raise your hand against the miracle of creation that was Patch? Did you think I wouldn't find out? This is Sigil, where the walls have eyes and ears. You will pay for this, mortal. You will pay with your blood and soul." The fiend turns to the two mezzoloths accompanying him. "Gzrax! Kharax! Whoever devours the entrails of this mortal first will receive a reward!" */
END
IF~~THEN REPLY @16 /*Defend yourself. */ DO~ActionOverride(Protagonist,Attack("g-bb101")) Help() Enemy() SetGlobal("G-agravalquest","GLOBAL",15)~ SOLVED_JOURNAL @20134 EXIT
CHAIN IF~OR(2) Global("G-agravalquest","GLOBAL",2) Global("G-agravalquest","GLOBAL",7)~THEN g-bbD101 g-bbD101.finish1
@19 /*Patch's sense of smell proved to be more acute than you expected. You see that the fiend and his friend are together again. The modron rubs his cubic body against Agraval's thigh, who in return strokes his head. The quiet exchange seems to bring both of them comfort and closure. As you approach, Agraval looks up at you. His goat-like face contorts into a grimace that, with a little goodwill, could be considered a smile. */
=@20 /*"Ah, it's you, mortal. You managed to find my dear companion. You kept your part of the bargain; I'll keep mine. Here's your reward." He hands you a heavy purse of coins. "If you ever visit Town at the Center in Hades, mention my name and the locals will treat you with respect. Now leave us. We have nothing more to say to each other." As if to confirm his words, Patch dismisses you with a short bark. Both of them pay no further attention to you.  */
END
IF~OR(2) Global("G-agravalquest","GLOBAL",2) Global("G-agravalquest","GLOBAL",7)~THEN REPLY @22 /*"I'm glad I could help." */ DO~SetGlobal("G-agravalquest","GLOBAL",10) AddexperienceParty(20000) GiveGoldForce(5000) PlaySound("ABYSS05")  StickySinisterPoof("S213HRHD",Myself,1) ActionOverride("g-bb175",DestroySelf()) DestroySelf() ~ SOLVED_JOURNAL @20129 EXIT
CHAIN IF~Global("G-agravalquest","GLOBAL",13)~THEN g-bbD101 g-bbD101.finish2
@24 /*Agraval kept true to his word. You see that the dog and the baernaloth have met again. The modron rubs his cubic body against Agraval's thigh, who in return strokes his head. The quiet exchange seems to bring both of them comfort and closure. As you approach, Agraval looks up at you. His goat-like face contorts into a grimace that, with a little goodwill, could be considered a smile. */
=@25 /*"Ah, it's you, mortal. You managed to find my dear companion. You kept your part of the bargain; I'll keep mine. Here's your reward." He hands you a heavy purse of coins. "If you ever visit Town at the Center in Hades, mention my name and the locals will treat you with respect. Now leave us. We have nothing more to say to each other." As if to confirm his words, Patch dismisses you with a short bark. Both of them pay no further attention to you.  */
END
IF~~THEN REPLY @27 /*"I'm glad I could help." */ DO~SetGlobal("G-agravalquest","GLOBAL",10) AddexperienceParty(20000) GiveGoldForce(5000) PlaySound("ABYSS05")  StickySinisterPoof("S213HRHD",Myself,1) ActionOverride("g-bb175",DestroySelf()) DestroySelf() ~ SOLVED_JOURNAL @20129 EXIT
CHAIN IF~Global("G-agravalquest","GLOBAL",10)~THEN g-bbD101 g-bbD101.finishfinal
@30 /*The fiend and his friend ignore you. They are completely absorbed in each other. */
EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD101 g-bbD101.start1
@33 /*You see a sinewy fiend with a fur-covered face that resembles a goat's skull. From amidst his filthy, matted black locks sprouts a forest of twisted horns. He sits alone at a table atop a platform, his head cradled in his hands as he stares into space and lets out a weary sigh. An untouched mug of beer and a stack of papers lie beside him. He seems too lost in thought to notice you. */
END
IF~~THEN REPLY @35 /*"Hello. Is everything alright?" */ DO~~ + g-bbD101.A1
IF~~THEN REPLY @36 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) OR(2) Global("G-agravalquest","GLOBAL",0) Global("G-agravalquest","GLOBAL",1)~THEN g-bbD101 g-bbD101.start2
@38 /*The sinewy fiend with a fur-covered face resembling a goat's skull continues to sit alone at a table on the landing. His elbows rest on the table as he cradles his head in his hands, staring into space with a weary sigh. An untouched mug of beer and a stack of papers lie beside him. He seems too lost in thought to notice you. */
END
IF~~THEN REPLY @40 /*"Hello again." */ DO~~ + g-bbD101.A1a
IF~~THEN REPLY @41 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) OR(2) Global("G-agravalquest","GLOBAL",5) Global("G-agravalquest","GLOBAL",6)~THEN g-bbD101 g-bbD101.start3
@43 /*Agraval sits in the same position you left him in. Despondency envelops him like a blanket. When you approach, he perks up a little and fixes upon you with a hopeful gaze. "It's you, mortal. Did you manage to find him?" */
END
IF~!Global("g-agravalpimpek","GLOBAL",1)~THEN REPLY @45 /*"Unfortunately not. I'm still searching." */ DO~~ + g-bbD101.still
IF~Global("G-agravalquest","GLOBAL",6) Global("g-agravalpimpek","GLOBAL",1)~THEN REPLY @46 /*Lie: "Unfortunately not. I'm still searching." */ DO~SetGlobal("G-agravalrun","GLOBAL",1)~ + g-bbD101.still
IF~Global("g-agravalpimpek","GLOBAL",1) !Global("G-agravalquest","GLOBAL",6) ~THEN REPLY @47 /*Lie: "Unfortunately not. I'm still searching." */ DO~~ + g-bbD101.still
IF~Global("g-agravalothermodron1","GLOBAL",1)~THEN REPLY @48 /*Lie: "He's among the aquaria of the Vertical Sea, near the theater. He didn't want to come with me, but if you hurry up, you'll surely find him." */ DO~SetGlobal("G-agravalquest","GLOBAL",12) ~ SOLVED_JOURNAL @20131 + g-bbD101.leave
IF~Global("g-agravalothermodron2","GLOBAL",1)~THEN REPLY @49 /*Lie: "He's on one of the islands among the ruins of a sunken settlement. He's in pretty bad shape; someone damaged him. You should find him easily." */ DO~SetGlobal("G-agravalquest","GLOBAL",12) ~ SOLVED_JOURNAL @20131 + g-bbD101.leave
IF~OR(2) Global("g-sendagravaldown","GLOBAL",1) Global("g-agravalpimpek","GLOBAL",1)~THEN REPLY @50 /*"He's by the Suicide Falls, on the wooden platform. I didn't send him to you, so go there if you want to find him." */ DO~SetGlobal("G-agravalquest","GLOBAL",13) ~ SOLVED_JOURNAL @20132 + g-bbD101.leave
IF~Global("G-agravalquest","GLOBAL",6) ~THEN REPLY @51 /*"Yes. I even managed to reprogram him. He's no longer a dog. He returned home." */ DO~SetGlobal("G-agravalquest","GLOBAL",9) ~ SOLVED_JOURNAL @20128 + g-bbD101.anger
CHAIN IF~~THEN g-bbD101 g-bbD101.A1
@53 /*The fiend looks at you with a contempt reserved for vermin and carrion. When he speaks, his powerful voice echoes in your bones. "I am Agraval, Slayer of Three Hundred Mariliths, Obsidian Blade of Silent Death, lord and master of the Scarlet Shadow domain. I have no desire for idle chatter, mortal. I wallow in a loss that your limited human senses cannot comprehend. Leave me."                     */
END
IF~~THEN REPLY @55 /*"Forgive me, oh great Agraval. I'm sorry for your loss. Is there any way I can help ease your pain?" */ DO~~ + g-bbD101.C1
IF~~THEN REPLY @56 /*"Maybe I can help you somehow? For a price, of course." */ DO~~ + g-bbD101.D1
IF~~THEN REPLY @57 /*"Mortal? Heh. Never mind. Be well." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.C1
@59 /*The fiend slightly narrows his eyes and sizes you up, as if assessing your worth. It seems that your respectful demeanor has made a positive impression on him. He honors you with his attention. "All right, mortal. Perhaps you can be of some use, after all. Know that a tragedy has recently befallen me. I lost my most loyal companion - a comrade who stood tirelessly by my side through centuries of battlefields and intrigues." The baernaloth sighs heavily and surreptitiously wipes the corner of his eye.  */
END
IF~~THEN REPLY @61 /*"I'm sorry for your loss. The death of a loved one is always painful." */ DO~~ + g-bbD101.F1
IF~~THEN REPLY @62 /*"I'm not a necromancer. I can't bring him back to life." */ DO~~ + g-bbD101.F1
IF~~THEN REPLY @63 /*"Hmm... I don't think I can help you after all. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.D1
@65 /*The fiend slightly narrows his eyes and sizes you up, as if assessing your worth. He seems to understand the language of self-serving perfectly well. "All right, mortal. Do well, and you will be richly rewarded. Know that a tragedy has recently befallen me. I have lost my most loyal companion. A comrade who stood tirelessly by my side through centuries of battlefields and intrigues." The baernaloth sighs heavily and surreptitiously wipes the corner of his eye. */
END
IF~~THEN REPLY @67 /*"I'm sorry for your loss. The death of a loved one is always painful." */ DO~~ + g-bbD101.F1
IF~~THEN REPLY @68 /*"I'm not a necromancer. I can't bring him back to life." */ DO~~ + g-bbD101.F1
IF~~THEN REPLY @69 /*"Hmm... I don't think I can help you after all. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.F1
@71 /*The fiend seethes with rage. Wisps of sulfurous smoke escape from his nostrils. "He's alive, mortal! Abandon such defeatist suggestions if you value your own existence!" Agraval takes a deep breath and calms down a little. You would be of no help if torn to shreds. "He's alive, but due to some interference unknown to me, we were separated while passing through the portal to Sigil. I've looked everywhere for him, but to no avail. Maybe you'll have better luck, mortal. Bring my best friend here, and you'll receive a reward." */
END
IF~~THEN REPLY @73 /*"Alright, so who exactly am I looking for?" */ DO~~ + g-bbD101.I1
IF~~THEN REPLY @74 /*"What kind of reward?" */ DO~~ + g-bbD101.J1
IF~~THEN REPLY @75 /*"Hmm... I don't think I can help you after all. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.I1
@77 /*"It'll be easier if I just show him to you, mortal. I've prepared and distributed parchments bearing his likeness around the area to make it easier to find him. I still have a few left." The creature holds out a crumpled piece of paper in front of you. */
END
IF~~THEN REPLY @79 /*Continue. */ DO~StartMovie("g-pim") SetGlobal("g-pimpekmov","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.J1
@81 /*"Money is of no consequence; you will become a wealthy man. You will also earn something far more valuable - my gratitude." The fiend pauses, letting you know what a great honor you may receive. "So, to the point. You need to know who you are looking for. It will be easier if I just show him to you, mortal. I have prepared and distributed parchments bearing his likeness in the area to make it easier to find him. I still have a few left." The creature holds out a crumpled piece of paper in front of you. */
END
IF~~THEN REPLY @83 /*Continue. */ DO~StartMovie("g-pim") SetGlobal("g-pimpekmov","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.L1
@85 /*"Patch is a very special modron, a one-of-a-kind helper dog. There is no other like him in the entire multiverse, but if your mortal senses are too limited to understand the subtleties of his nature, call him by name. He will surely come to you. Oh, I almost forgot." */
=@86 /*Agraval puts two clawed fingers in his mouth. He fumbles around for a moment, then effortlessly pulls out a slobbery molar from his jaw and throws it into your outstretched hand. The tooth stinks of acid and burns to the touch, but not enough to leave marks on your skin. "Give it to Patch to smell. His nose will surely lead him back to me." */
END
IF~~THEN REPLY @88 /*"I don't know if modrons have noses, but I'll do as you say. Take care." */ DO~SetGlobal("G-agravalquest","GLOBAL",5) GiveItemCreate("g-bbi073",Protagonist,1,1,0)~ SOLVED_JOURNAL @20125 EXIT
IF~~THEN REPLY @89 /*"Maybe I'll find him, maybe I won't. Take care." */ DO~SetGlobal("G-agravalquest","GLOBAL",5) GiveItemCreate("g-bbi073",Protagonist,1,1,0)~ SOLVED_JOURNAL @20125 EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.leave
@91 /*The creature's goatlike pupils dilate. A spark of hope ignites within them - one that rarely seems to dwell there. "You saw him? Really? Then I'm going after him. If you speak the truth, mortal, you will be rewarded. But if you're lying, you will experience all the flavors of pain that a fiend's hand can inflict. You will beg me for death." Without waiting for your reply, Agraval rises from the table and marches out of the tavern. */
END
IF~~THEN REPLY @93 /*"Good luck." */ DO~EscapeArea() ActionOverride("g-bb167",EscapeArea())~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.anger
@95 /*"What have you done?!" Agraval rises from the table so violently that he knocks over his chair. A deafening silence falls over the tavern. All the fiends stare at you intently, sensing imminent bloodshed. "How dare you? How could you? You have recklessly broken a thousand-year bond between the lord and his faithful companion! Death! Death to you, spawn of chaos, and ultimate annihilation!" Agraval roars, sending flecks of acidic spit flying from his mouth. The caustic droplets bubble with fury, burning holes in the tabletop. He then turns toward the two mezzoloths sitting in the back of the tavern. "Gzrax! Kharax! Come to me! Whoever devours the entrails of this mortal first will receive a reward!" */
END
IF~~THEN REPLY @97 /*Defend yourself. */ DO~ActionOverride(Protagonist,Attack("g-bb101")) Help() Enemy() ~ EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.still
@99 /*Agraval growls, barely stopping himself from turning you inside out. "Then don't waste time, mortal! Find him!" He brushes you away like an annoying fly. It is best not to test his patience. */
EXIT
CHAIN IF~~THEN g-bbD101 g-bbD101.A1a
@102 /*The fiend gives you a look reserved for vermin and carrion. */
END
IF~Global("G-agravalquest","GLOBAL",1)~THEN REPLY @104 /*"I thought it over. I'd be happy to help. Who is Patch?" */ DO~~ + g-bbD101.L1
IF~Global("G-agravalquest","GLOBAL",0)~THEN REPLY @105 /*"I'm looking for work. Maybe I can help you somehow? For a price, of course." */ DO~~ + g-bbD101.D1
IF~~THEN REPLY @106 /*"Never mind. See you later." */ DO~~ EXIT