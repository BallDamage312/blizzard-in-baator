BEGIN g-bbD052
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD052 g-bbD052.start
@0 /*In the center of the upper deck of the Oarsman stands a strange humanoid figure. He is slightly taller than the average Cager and as thin as a Collector. As you begin to wonder why a human would be in a fiendish flophouse like this, he turns towards you, revealing an impossibly gaunt face with bulging eyes. As your gazes meet, a feeling of uneasiness washes over you, and he readies himself for your approach.  */
=@1 /*"Innocent blood in my favorite haunt in the Cage? Other than that old gith at the bar? How curious... methinks." His voice is surprisingly rich, contrasting his dessicated appearance. He takes a deep breath and continues. "Or maybe not. Maybe he's not that innocent after all." He leans in expectantly. "Who are you?" */
END
IF~~THEN REPLY @3 /*"I don't know exactly." */ DO~~ + g-bbD052.dunno
IF~Global("lyingtowotyrxil","GLOBAL",0)~THEN REPLY @4 /*Lie: "My name is Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("lyingtowotyrxil","GLOBAL",1)~ + g-bbD052.lie
IF~Global("lyingtowotyrxil","GLOBAL",1)~THEN REPLY @5 /*Lie: "My name is Adahn." */ DO~~ + g-bbD052.lie
IF~~THEN REPLY @6 /*"Me? Who are *you*? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD052 g-bbD052.start2
@8 /*"My forgetful friend..." The marraenoloth gives you an unnerving smile. "How does the river flow for you?" */
END
IF~~THEN REPLY @10 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @11 /*"It flows ever backwards. I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.dunno
@13 /*"You don't know?" The stranger takes a step back and looks you over. "Shame, shame," he says, but there is no disappointment behind those words. */
END
IF~~THEN REPLY @15 /*"You don't sound genuine." */ DO~~ + g-bbD052.dunno2
IF~Global("lyingtowotyrxil","GLOBAL",0)~THEN REPLY @16 /*Lie: "My name is Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("lyingtowotyrxil","GLOBAL",1)~ + g-bbD052.lie
IF~Global("lyingtowotyrxil","GLOBAL",1)~THEN REPLY @17 /*Lie: "My name is Adahn." */ DO~~ + g-bbD052.lie
IF~~THEN REPLY @18 /*"Right... so who are *you*? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.lie
@20 /*"No, it isn't," the stranger cuts you off mid-syllable. "Contrary to most, I care not for names. It is your memory that seems fascinating." */
END
IF~~THEN REPLY @22 /*"What about my memory?" */ DO~~ + g-bbD052.memory
IF~~THEN REPLY @23 /*"Enough about me. Who are *you*? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.memory
@25 /*"You reek of the Styx! It seems you've had more than your fill of it. Yes, yes." The stranger seems pleased with this discovery. */
END
IF~~THEN REPLY @27 /*"Do you know a lot about the Styx?" */ DO~~ + g-bbD052.mer
IF~~THEN REPLY @28 /*"Enough about me. Who are YOU? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.dunno2
@30 /*"Don't I?" The stranger smiles, his dry skin scraping across his bony cheeks in a horrible, morbid spectacle. */
END
IF~~THEN REPLY @32 /*"No, please explain yourself." */ DO~~ + g-bbD052.dunno3
IF~~THEN REPLY @33 /*"Enough about me. Who are YOU? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.dunno3
@35 /*"Explain what?" The stranger keeps smiling. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @36 /*"Chief... I'm a skull, and somehow this creeps *me* out." */
END
IF~~THEN REPLY @38 /*"..." */ DO~~ + g-bbD052.dunno4
IF~~THEN REPLY @39 /*"Enough about me. Who are YOU? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.dunno4
@41 /*"Mhmmm, mhmm." */
END
IF~~THEN REPLY @43 /*"Enough about me. Who are YOU? You don't look like the other fiends in here." */ DO~~ + g-bbD052.mer
CHAIN IF~~THEN g-bbD052 g-bbD052.mer
@45 /*"I thought you'd never ask." The stranger bows dramatically. "They call me Wotyrxil. I am a servant of Charon. I sail the 'good' River Styx, providing my humble services as required. That I do, that I do. The Styx is my home, but this place is a welcome respite from the tumultuous current of the planes." */
=@46 /*"I too am a fiend, like the other denizens of this establishment. However, I am not among the two famous groups of squabblers who frequent this place." */
END
IF~Global("G-BBMain","GLOBAL",7)~THEN REPLY @48 /*"So you're the 'oarsman'? I heard something was recently stolen from you." */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD052.quest
IF~~THEN REPLY @49 /*"Squabblers?" */ DO~~ + g-bbD052.squab
IF~~THEN REPLY @50 /*"So what kind of fiend are you, then?" */ DO~~ + g-bbD052.yugoloth
IF~~THEN REPLY @51 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @52 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.squab
@54 /*"Of course. The ever-competitive baatezu and the ever-destructive tanar'ri. I suppose there are gehreleths here, too." Wotyrxil pauses and looks down at the floor, underneath which a strange-looking creature exacts some tavern justice. "But they hardly count. Other fiends, like the varrangoin or..." He laughs dryly. "Obyriths are rarely found socializing." */
END
IF~~THEN REPLY @56 /*"Sounds to me like there are too many fiends." */ DO~~ + g-bbD052.squab2
IF~~THEN REPLY @57 /*"So what kind of fiend are you, then?" */ DO~~ + g-bbD052.yugoloth
IF~~THEN REPLY @58 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @59 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.squab2
@61 /*Wotyrxil bares his pillar-like teeth in a manner that an insane person might call charming. "I tend to agree, mortal." */
END
IF~~THEN REPLY @63 /*"So what kind of fiend are you, then?" */ DO~~ + g-bbD052.yugoloth
IF~~THEN REPLY @64 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @65 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.yugoloth
@67 /*Wotyrxil breathes in deeply and responds with obvious pride: "I am a marraenoloth. We, the yugoloths, are the *original* fiends. We embody what it means to be a fiend." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @68 /*"The 'loths? I don't know, chief. I hear they are dangerous company." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @69 /*"The daemons... they are known to be dangerous, but such, too, is the reputation of the succubi." */
END
IF~~THEN REPLY @71 /*"Tell me about yugoloths." */ DO~~ + g-bbD052.yugoloths
IF~~THEN REPLY @72 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @73 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.yugoloths
@75 /*Wotyrxil bows, though it does not appear to convey any actual respect. "Yugoloths are often called 'daemons', just as tanar'ri are called 'demons', and baatezu are called 'devils'. Though I resent grouping myself with the others, none of us are particularly fond of these sobriquets." */
=@76 /*"We, as the greatest of all fiends, hail originally from the Grey Wastes of Hades, but we do hold a strong presence in the four-fold furnace, Gehenna, as well." */
=@77 /*"We are essentially guardians of balance and peace the Lower Planes." He rubs his hands together, his voice taking on a much more sinister tone. "That is all mortals need to know about us." */
END
IF~CheckStatGT(Protagonist,22,INT)~THEN REPLY @79 /*"If you claim to be the keepers of peace in the Lower Planes, then why do I hear so many stories about you acting as mercenaries on both sides of the Blood War?" */ DO~~ + g-bbD052.smartass
IF~~THEN REPLY @80 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @81 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.quest
@83 /*"Why... yes, it was." The marraenoloth looks down as Prod sticks his little spiky head curiously out of your bag. "Is this little baatling the one who wanted to converse with me?" */
==g-bbD006 @84 /*The imp jumps out of the bag with such force that you are nearly thrown off balance. "YES! Prod good boy, Prod found the Styxan!" */
END
IF~~THEN REPLY @86 /*"Tell us what happened." */ DO~~ + g-bbD052.questexplanx
CHAIN IF~~THEN g-bbD052 g-bbD052.questexplanx
@88 /*"The triad of order in Sigil has an interesting definition of order... or so it seems. They tend to maintain order in the other wards, but around here... they don't care about it at all. This is not entirely in our disfavor, but it has its downsides... on occasion." He pauses and gazes over the streets beneath you. */
=@89 /*"One such occasion occurred quite recently. You see, I was robbed of a prized possession by a gang of rodents." Wotyrxil winces just thinking about it, even though his facial expressions seem to be a limited commodity. */
==g-bbd052 IF~GlobalGT("GOOD","GLOBAL",2)~THEN @90 /*"It was an early morning after a night of celebration; some spinagons won a case at the City Court. They were up against a guardinal complaint that was deemed trivial. The Oarsman was flooded that night, with dark wine... and with blood." He pauses seeing your uncertain reaction and hurries to explain: "But... more wine than blood, certainly." */
==g-bbd052 IF~!GlobalGT("GOOD","GLOBAL",2)~THEN @91 /*"It was an early morning after a night of a celebration. Some spinagons won a case at the City Court. They were up against a guardinal complaint that was deemed trivial. The Oarsman was flooded that night, with dark wine... and with blood." */
END
IF~!CheckStatGT(Protagonist,15,INT)~THEN REPLY @93 /*"What happened next?" */ DO~~ + g-bbD052.questexplan
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @94 /*"Early morning? But a witness saw a wererat after the theft, soon after anti-peak." */ DO~SetGlobal("G-rahomon-W","GLOBAL",1)~ + g-bbD052.questexplandoubt
CHAIN IF~~THEN g-bbD052 g-bbD052.questexplandoubt
@96 /*"I was at that time inebriated, I fear... Perhaps it was a bit earlier... thereafter, I traveled to a nearby locum for another matter." He pauses again, and then, with an overly theatrical hand gesture, he shouts: "Suddenly, five wererats SURROUND me, demanding my possessions. MY POSSESSIONS! I had no more spells in me, because of... the aforementioned *blood*, nor did I have much in the way of actual possessions, but I did have one small thing..." */
=@97 /*Wotyrxil raises his withered palm, scrunches it into a fist with a cracking sound reminiscent of sticks breaking, and shakes it in no particular direction. "My precious *flute*!" */
END
IF~~THEN REPLY @99 /*"They stole a... flute?" */ DO~SetGlobal("G-BBMain","GLOBAL",8)~ SOLVED_JOURNAL @20014 + g-bbD052.quest3
CHAIN IF~~THEN g-bbD052 g-bbD052.questexplan
@101 /*"Thereafter, I traveled to a nearby locum for another matter." He pauses again, and then, with an overly theatrical hand gesture, he shouts: "Suddenly, five wererats SURROUND me, demanding my possessions. MY POSSESSIONS! I had no more spells in me, because of... the aforementioned *blood*, nor did I have much in the way of actual possessions, but I did have one small thing..." */
=@102 /*Wotyrxil raises his withered palm, scrunches it into a fist with a cracking sound reminiscent of sticks breaking, and shakes it in no particular direction. "My precious *flute*!" */
END
IF~~THEN REPLY @104 /*"They stole a... flute?" */ DO~SetGlobal("G-BBMain","GLOBAL",8) SetGlobal("G-rahomon-W","GLOBAL",1)~ SOLVED_JOURNAL @20014 + g-bbD052.quest3
CHAIN IF~~THEN g-bbD052 g-bbD052.quest3
@106 /*"For us skiff pilots, it is part of the lore. We can use our flutes to communicate with one another across the planes. I delegated a whole squadron of yagnoloths to locate and eradicate the thieves, but they don't seem to be making much progress..." */
=@107 /*He drops his sight onto the wicked expanse of dirty water behind you. "It also has great sentimental value. I need my priceless instrument returned to me at once. At once! And I wish the responsible party found and slain. Perhaps you'll have better luck with the task. Do you accept?" */
END
IF~Global("gbbMERwhy","GLOBAL",0)~THEN REPLY @109 /*"What do I get out of it?" */ DO~SetGlobal("gbbMERwhy","GLOBAL",1)~ + g-bbD052.quest4a
IF~Global("gbbMERprod","GLOBAL",0)~THEN REPLY @110 /*"Hey, Prod... Why are we here?" */ DO~SetGlobal("gbbMERprod","GLOBAL",1)~ + g-bbD052.quest4b
IF~~THEN REPLY @111 /*"Alright, I will do it." */ DO~~ + g-bbD052.quest5
IF~Global("gbbMERprod","GLOBAL",0)~THEN REPLY @112 /*"I don't think I am interested." */ DO~SetGlobal("gbbMERprod","GLOBAL",1)~ + g-bbD052.quest4b
CHAIN IF~~THEN g-bbD052 g-bbD052.quest4a
@114 /*"A favor." He holds his breath for a dramatic interlude. Does he even need to breathe? "A favor from the yugoloths. And believe me, that is a *very* desirable thing. *Very*." */
END
IF~Global("gbbMERprod","GLOBAL",0)~THEN REPLY @116 /*"Hey, Prod... Why are we here?" */ DO~SetGlobal("gbbMERprod","GLOBAL",1)~ + g-bbD052.quest4b
IF~~THEN REPLY @117 /*"Alright, I will do it." */ DO~~ + g-bbD052.quest5
IF~Global("gbbMERprod","GLOBAL",0)~THEN REPLY @118 /*"I don't think I am interested." */ DO~SetGlobal("gbbMERprod","GLOBAL",1)~ + g-bbD052.quest4b
CHAIN IF~~THEN g-bbD052 g-bbD052.quest4b
~~ ==g-bbD006 @120 /*"Mister! We should help this honored fiend. Prod has told you why, do you not remember?" */
END
IF~~THEN REPLY @122 /*"Was it something about a tavern?" */ DO~~ + g-bbD052.quest4b2
CHAIN IF~~THEN g-bbD052 g-bbD052.quest4b2
~~ ==g-bbD006 @124 /*"Yes, it leads us closer to the hopping portal to..." Prod realizes that he was about to break the one rule given by the fiends, and he promptly shuts his tiny maw in the middle of the sentence. */
==g-bbD052 @125 /*"I care not for any hopping portal, I only care for my flute. If my information helps you, so be it." */
END
IF~Global("gbbMERwhy","GLOBAL",0)~THEN REPLY @127 /*"What do I get out of it?" */ DO~SetGlobal("gbbMERwhy","GLOBAL",1)~ + g-bbD052.quest4a
IF~~THEN REPLY @128 /*"Alright, I will do it." */ DO~~ + g-bbD052.quest5
IF~Global("gbbMERprod","GLOBAL",0)~THEN REPLY @129 /*"I don't think I am interested." */ DO~SetGlobal("gbbMERprod","GLOBAL",1)~ + g-bbD052.quest4b
CHAIN IF~~THEN g-bbD052 g-bbD052.quest5
@131 /*"Excellent. I suspect that Orville, the barkeep at a dive bar called 'Rat and Splat,' has something to do with all this. Of course, us fiends can't go in there because it would be an act of aggression, and besides, it's very dirty in there... but you could go in without any problems. The password for this place is 'fur always on top.' I hope you find the thieves soon and retrieve my belongings." */
==g-bbD006 @132 /*Prod smiles with a wide, toothy grin and winks at you theatrically. */
END
IF~~THEN REPLY @134 /*"Alright, I still have some questions." */ DO~SetGlobal("G-BBMain","GLOBAL",9) SetGlobal("G-Szczurwidolek","GLOBAL",2) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20015 + g-bbD052.q
IF~~THEN REPLY @135 /*"I will talk to you later, Wotyrxil." */ DO~SetGlobal("G-BBMain","GLOBAL",9) SetGlobal("G-Szczurwidolek","GLOBAL",2) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20015 EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.q
@137 /*"Ask away, if you wish." */
END
IF~Global("G-rahomon-Wreso","GLOBAL",0) Global("G-rahomon-Freso","GLOBAL",0) Global("G-rahomon-G","GLOBAL",1)~THEN REPLY @139 /*"I have learned that you arrived on a boat together with the wererats that night. Can you tell me what *really* happened?" */ DO~SetGlobal("G-rahomon-Wreso","GLOBAL",1)~ + g-bbD052.rashomon
IF~Global("G-rahomon-Wreso","GLOBAL",0) Global("G-rahomon-Freso","GLOBAL",1) ~THEN REPLY @140 /*"I know you killed Callimarus." */ DO~SetGlobal("G-rahomon-Wreso","GLOBAL",1)~ + g-bbD052.rashomonX
IF~Global("G-rahomon-Wreso","GLOBAL",1)~THEN REPLY @141 /*"I don't think I want to work for you anymore." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD052.quit
IF~~THEN REPLY @142 /*"So what kind of fiend are you again?" */ DO~~ + g-bbD052.yugoloth
IF~~THEN REPLY @143 /*"Tell me about yugoloths again." */ DO~~ + g-bbD052.yugoloths
IF~~THEN REPLY @144 /*"Tell me about the baernaloth up on the platform." */ DO~~ + g-bbD052.baer
IF~Global("g-knowBeatha","GLOBAL",1)~THEN REPLY @145 /*"What do you know about Beatha, the jeweler?" */ DO~~ + g-bbD052.beat
IF~Global("G-BBMain","GLOBAL",7)~THEN REPLY @146 /*"So you're the 'oarsman'? I heard something was recently stolen from you." */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD052.quest
IF~Global("G-fluteIdra","GLOBAL",1) Global("G-rahomon-Wreso","GLOBAL",0) ~THEN REPLY @147 /*"Did your flute make it back to you? I gave it to Idramaelech in the Gray Waste; he was supposed to deliver it to you." */ DO~AddexperienceParty(160000) SetGlobal("G-fluteIdra","GLOBAL",2)~ + g-bbD052.idrama
IF~Global("G-fluteIdra","GLOBAL",1) Global("G-rahomon-Wreso","GLOBAL",1) ~THEN REPLY @148 /*"Did Callimarus's flute make it back to you? I gave it to Idramaelech in the Gray Waste; he was supposed to deliver it to you." */ DO~AddexperienceParty(160000) SetGlobal("G-fluteIdra","GLOBAL",2)~ + g-bbD052.idrama
IF~OR(2) Global("G-BBMain","GLOBAL",18) Global("G-BBMain","GLOBAL",19) Global("GBBwotyryagno","GLOBAL",0) !Dead("g-bb019") Global("g-kuotoaraid","GLOBAL",1)~THEN REPLY @149 /*"I sent the kuo-toa to wipe out all of the rat thieves. I imagine they are all dead now." */ DO~SetGlobal("GBBwotyryagno","GLOBAL",1) AddexperienceParty(20000)~ + g-bbD052.yagnos
IF~OR(2) Global("G-BBMain","GLOBAL",18) Global("G-BBMain","GLOBAL",19) Global("GBBwotyryagno","GLOBAL",0) !Dead("g-bb019") Global("g-kuotoaraid","GLOBAL",0)~THEN REPLY @150 /*"I told the yagnoloths where the last of the rat thieves are. I imagine they are all dead now." */ DO~SetGlobal("GBBwotyryagno","GLOBAL",1) AddexperienceParty(20000)~ + g-bbD052.yagnos
IF~Dead("g-bb019") Global("GBBwotyryagno","GLOBAL",0)~THEN REPLY @151 /*"All of the rat thieves are dead now." */ DO~SetGlobal("GBBwotyryagno","GLOBAL",1) AddexperienceParty(20000)~ + g-bbD052.yagnos
IF~~THEN REPLY @152 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.smartass
@154 /*"You heard right!" Wotyrxil smiles again. "We have to be there to *actively* keep the peace, don't we?" */
END
IF~~THEN REPLY @156 /*"Helping creatures to kill one another hardly sounds like 'active' peacekeeping to me." */ DO~~ + g-bbD052.smartass2
IF~~THEN REPLY @157 /*"I have some questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @158 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.baer
@160 /*"Who? Agraval, Slayer of Three Hundred Mariliths, Obsidian Blade of... whatever? He is not entirely a yugoloth. It's a complicated matter. He's also a big pushover, but you did not hear it from me. Not from me at all." */
END
IF~~THEN REPLY @162 /*"I have some other complicated questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @163 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.idrama
@165 /*"Oh. Idramaelech, isn't it? That is... moderately good news. Idramaelech is very reliable indeed, but also... rather slow, I suppose. So no... I did not get my flute yet. I will, however, reach out to him. In any case, I believe you. You have my gratitude." */
END
IF~~THEN REPLY @167 /*"Gratitude? Wasn't there a... favor involved?" */ DO~~ + g-bbD052.favor
IF~~THEN REPLY @168 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @169 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.favor
@171 /*Wotyrxil lifts his bony hand up and examines it carefully. "Strange. I still don't seem to have my flute in my hand...  No flute at all..." */
END
IF~~THEN REPLY @173 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @174 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.yagnos
@176 /*"They're all dead? That is excellent news! You have my gratitude, stranger." */
END
IF~~THEN REPLY @178 /*"Gratitude? Wasn't there a... favor involved?" */ DO~~ + g-bbD052.favor
IF~~THEN REPLY @179 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @180 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.smartass2
@182 /*Wotyrxil shrugs and you are certain you hear his spine shifting into place. Where was it before? "This is why you are not the one keeping the peace in the Lower Planes, my friend. " */
END
IF~~THEN REPLY @184 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @185 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.beat
@187 /*He lowers his voice causing his usual air of authority to dissipate slightly. "She is... very spirited. Her kind is very dangerous. Even if she enjoys turning bugs into rings with a wide smile on her face, do not think for a second that she won't slay you for no reason. No reason at all." */
END
IF~CheckStatLT(Protagonist,12,WIS)~THEN REPLY @189 /*"I love the kind of woman that will actually just kill me." */ DO~~ + g-bbD052.cowboy
IF~~THEN REPLY @190 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @191 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.cowboy
@193 /*Marraenoloth shrugs. "If that's your preference, cowboy." */
END
IF~~THEN REPLY @195 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @196 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomonX
@198 /*Marraenoloth shrugs. "He was a traitor and he wasn't your problem. You just need to find my flute." */
END
IF~~THEN REPLY @200 /*"The sole remaining wererat does not know anything about the flute." */ DO~~ + g-bbD052.rashoflute
IF~~THEN REPLY @201 /*"I don't think I want to work for you anymore." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD052.quit
IF~~THEN REPLY @202 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @203 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.rashoflute
@205 /*"Then one of the dead ones will." */
END
IF~~THEN REPLY @207 /*"I don't think I want to work for you anymore." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD052.quit
IF~~THEN REPLY @208 /*"But was the flute even yours?" */ DO~~ + g-bbD052.rashomon5
IF~~THEN REPLY @209 /*"I have some other questions." */ DO~~ + g-bbD052.q
IF~~THEN REPLY @210 /*"I will talk to you later, Wotyrxil." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.quit
@212 /*"I don't think so. You know way too much." The yugoloth starts casting some spell. */
END
IF~~THEN REPLY @214 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon
@218 /*The marraenoloth raises his voice. "ME?! DO NOT ASSUME TOO MUCH, MORTAL!" */
END
IF~~THEN REPLY @220 /*"What did I say?" */ DO~~ + g-bbD052.rashomon2
IF~~THEN REPLY @221 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon2
@223 /*"It is not *me* who was the traitor, hugging some dirty, furry animals. I disposed of him." */
END
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @225 /*"You were the other figure on the bank... There were *two* marraenoloths that night!" */ DO~AddexperienceParty(50000)~ + g-bbD052.rashomon3b
IF~~THEN REPLY @226 /*"What do you mean?" */ DO~~ + g-bbD052.rashomon3a
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon3a
@228 /*"I caught the rats hitching a ride with Callimarus, another marraenoloth. For that despicable act, I sent him back to Gehenna, for... reeducation." */
END
IF~~THEN REPLY @230 /*"And the flute?" */ DO~~ + g-bbD052.rashomon4
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon3b
@235 /*"You are sharp after all. I caught the rats hitching a ride with Callimarus, another marraenoloth. For that despicable act, I sent him back to Hades, for... reeducation." */
END
IF~~THEN REPLY @237 /*"And the flute?" */ DO~~ + g-bbD052.rashomon4
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon4
@239 /*"The flute should have dropped among the ashes, but did not. Did not drop at all. Therefore, one of the wererats must have had it. The offer still stands. Bring me this flute. I am sure my information has opened a certain door for you... so you owe me." */
END
IF~~THEN REPLY @241 /*"But was the flute even yours?" */ DO~~ + g-bbD052.rashomon5
IF~~THEN REPLY @242 /*"Fair enough. I'll be back with the flute, eventually." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD052 g-bbD052.rashomon5
@244 /*"The flute is an important artifact in our culture. Callimarus lost his right to hold it. Therefore, it is mine now." */
END
IF~~THEN REPLY @246 /*"I don't think I want to work for you anymore." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD052.quit
IF~~THEN REPLY @247 /*"Fair enough. I'll be back with the flute, eventually." */ DO~~ EXIT