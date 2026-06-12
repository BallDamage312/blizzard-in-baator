BEGIN g-bbD042
CHAIN IF~Global("G-mawu","GLOBAL",0)~THEN g-bbD042 g-bbD042.ini
@0 /*A tall, lean woman with dark skin stands to the side of the lecture room, listening to the lecture while seemingly distracted by the texture of the wall, examining every pore in its surface. Every now and then, she takes scrupulous notes in her notebook. */
END
IF~~THEN REPLY @2 /*"Greetings." */ DO~SetGlobal("G-mawu","GLOBAL",1)~ + g-bbD042.start
IF~~THEN REPLY @3 /*Leave her alone. */ DO~~ EXIT
CHAIN IF~Global("G-mawu","GLOBAL",1)~THEN g-bbD042 g-bbD042.ini2
@5 /*"You come back to Mawu. You need anything? [g-04201] */
END
IF~~THEN REPLY @7 /*"I have some questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @8 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.start
@11 /*When you get her attention, she stops and carefully examines you. "Why, hello. They call me Mawu, and who are you, stranger?" [g-04202] */
END
IF~~THEN REPLY @13 /*Lie: "My name is Adahn." */ DO~IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD042.preq
IF~~THEN REPLY @14 /*Truth: "I don't really know who I am." */ DO~~ + g-bbD042.rh
CHAIN IF~~THEN g-bbD042 g-bbD042.preq
@16 /*"Well met. How can Mawu assist you?" [g-04203] */
END
IF~~THEN REPLY @18 /*"I have some questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @19 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.f1
@21 /*Mawu bows elegantly. "May your travels bring you enlightenment." [g-04204] */
EXIT
CHAIN IF~~THEN g-bbD042 g-bbD042.rh
@24 /*"Do any of us REALLY know who we are?" She smiles widely, though it carries a hint of sadness. "How can Mawu assist you?" [g-04205] */
END
IF~~THEN REPLY @26 /*"I have some questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @27 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.q
@29 /*"I love questions. My life's goal is to seek answers." [g-04206] */
END
IF~Global("G-coldportal","GLOBAL",0) Global("G-BBMAIN","GLOBAL",2)~THEN REPLY @31 /*"I am looking for information about a hopping portal from Sigil to Cania." */ DO~~ + g-bbD042.ca2
IF~Global("G-coldportal","GLOBAL",1)~THEN REPLY @32 /*"Can you tell me about the hopping portals again, Mawu?" */ DO~~ + g-bbD042.ca
IF~~THEN REPLY @33 /*"What do you do, Mawu?" */ DO~~ + g-bbD042.do
IF~Global("G-Ctip","GLOBAL",0) GlobalGT("G-caniaKN","GLOBAL",1) GlobalGT("G-BBMAIN","GLOBAL",1) Global("G-coldportal","GLOBAL",1)~THEN REPLY @34 /*"I already know a bit about Cania. Can you give me a juicy detail that others might have missed?" */ DO~SetGlobal("G-Ctip","GLOBAL",1) IncrementGlobal("G-caniaKN","GLOBAL",1) ~ + g-bbD042.know
IF~Global("G-sur","GLOBAL",0) Global("G-coldportal","GLOBAL",1)~THEN REPLY @35 /*"What's the most surprising answer you have found, Mawu?" */ DO~SetGlobal("G-sur","GLOBAL",1)~ + g-bbD042.sur
IF~GlobalGT("Join_Sensates","GLOBAL",0) Global("G-mawuler","GLOBAL",0)~THEN REPLY @36 /*"I too am a Sensate. Can you teach a fellow factioneer something, professor?" */ DO~SetGlobal("G-mawuler","GLOBAL",1)~ + g-bbD042.sens
IF~~THEN REPLY @37 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.ca2
@39 /*Mawu shivers, as if from intense cold. "In Sigil? Mawu knows nothing of such a portal. And if she did... she'd stay far away. Cania is not a good place to visit." [g-04209] */
=@40 /*"But hopping portals..." Mawu pauses and scratches her chin dramatically. "They're the definition of chance. It's easy to fall into them if you're in the wrong place at the wrong time. Of course, they still need a key, so they're not *that* dangerous." */
=@41 /*"The real challenge is finding them at the *right* time. They follow a path, so they may travel to the farthest reaches of the multiverse, but they will surely find their way back sooner or later." */
=@42 /*"It could be just seconds every hundred years, or... three hours per cycle, every cycle. It is really case-specific." */
=@43 /*"In any case, if you find such a portal, Mawu would advise you not to enter it. Such portals are usually one-way, and in Cania you will either freeze to death or be torn to pieces by an army of ice devils." Mawu gives you a broad, charming smile. "If Mawu may ask, though... what evidence is there for the existence of such a portal?" */
END
IF~InParty("nordom")~THEN REPLY @45 /*"Before I tell you, I have a modron with me who can sense portals. Would he be helpful in locating a hopping portal?" */ DO~SetGlobal("G-coldportal","GLOBAL",1) SetGlobal("G-BBmain","GLOBAL",3)~ SOLVED_JOURNAL @20009 + g-bbD042.modron
IF~~THEN REPLY @46 /*"Someone has been found on the other side, someone who should have been in Sigil. Did you know Manohae Brine?" */ DO~SetGlobal("G-coldportal","GLOBAL",1) SetGlobal("G-BBmain","GLOBAL",3)~ SOLVED_JOURNAL @20009 + g-bbD042.darek
CHAIN IF~~THEN g-bbD042 g-bbD042.do
@50 /*"I travel and catalog portals for the Society of Sensation. I have been in the barmiest of places, but Sigil always delivers new, interesting things for Mawu." The woman looks you up and down. */
END
IF~Global("G-sur","GLOBAL",0) Global("G-BBmain","GLOBAL",3)~THEN REPLY @52 /*"What's the most surprising answer you have found, Mawu?" */ DO~SetGlobal("G-sur","GLOBAL",1)~ + g-bbD042.sur
IF~~THEN REPLY @53 /*"What was the strangest place you have visited, Mawu?" */ DO~~ + g-bbD042.pla
IF~~THEN REPLY @54 /*"I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @55 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.pla
@57 /*"The strangest? Hmm..." Mawu ponders for a moment. "I have seen a ravaged desert inhabited by man-eating halflings. Primes are strange..." */
END
IF~~THEN REPLY @59 /*"I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @60 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.sur
@62 /*"That is an easy question. Unfortunately, Mawu cannot answer it. Those words are far too dangerous to be uttered out loud." */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @64 /*"Whisper them to me. I am sure it will be fine." */ DO~~ + g-bbD042.whi
IF~~THEN REPLY @65 /*"I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @66 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.whi
@68 /*"Please, don't ask me to do this. Mawu is brave, but not brave enough to say this in Sigil." */
END
IF~CheckStatGT(Protagonist,23,CHR)~THEN REPLY @70 /*"Tell me. Now." */ DO~~ + g-bbD042.whi2
IF~~THEN REPLY @71 /*"Alright. I have another question then." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @72 /*"I am sorry I insisted. I have to go now." */ DO~~ + g-bbD042.f2
CHAIN IF~~THEN g-bbD042 g-bbD042.f2
@74 /*Mawu bows elegantly. "I appreciate it. May your travels bring you enlightenment." [g-04204] */
EXIT
CHAIN IF~~THEN g-bbD042 g-bbD042.whi2
@77 /*Mawu moves closer, shivering with both horror and excitement. She presses her lips to your left ear and whispers. "The Lady... in reality... is I-" */
END
IF~~THEN REPLY @79 /*Listen closely. */ DO~ActionOverride("g-bb042",PlaySoundThroughVoice("g-42dd")) Kill("g-bb042") AddexperienceParty(100000) ChangeAlignment(Protagonist,NEUTRAL_EVIL)~ JOURNAL @10002 EXIT
CHAIN IF~~THEN g-bbD042 g-bbD042.sens
@81 /*Mawu moves closer, takes your hand in hers, and looks deeply into your eyes. */
=@82 /*"Feel what I feel, student. See what I see, hear what I hear. Live through what I... lived through." [g-04207] */
END
IF~~THEN REPLY @84 /*Focus on the connection. */ DO~FadeToColor([20.0],0)~ + g-bbD042.sens2
CHAIN IF~~THEN g-bbD042 g-bbD042.sens2
@86 /*You open yourself to meeting people and learning their cultures, customs, and traditions. You learn to see beyond language and alignment. You learn that we all traverse the Great Wheel together. Order and chaos. Empathy and apathy. Love and hate. Weakness and strength. [SPTR_01] */
END
IF~~THEN REPLY @88 /*Snap out of it. */ DO~PermanentStatChange(Protagonist,CHR,RAISE,2) FadeFromColor([20.0],0)~ + g-bbD042.sens3
CHAIN IF~~THEN g-bbD042 g-bbD042.sens3
@90 /*Mawu smiles. "I hope you will learn to treat people with more kindness, stranger." [g-04208] */
END
IF~~THEN REPLY @92 /*"I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @93 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.know
@95 /*Mawu ponders for a moment, and her expression grows grim. "There are legends of caves in Cania so dark and cold that they put the windswept tunnels of Pandemonium to shame. So miserable is the fabric from which they are made that the rock formations gain a wicked, tyrannical personality of their own." Then, with a flick of her wrist, her smile returns. "Mawu is sure you will not have to enter those." */
END
IF~~THEN REPLY @97 /*"I sure hope not. I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @98 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.ca
@100 /*"But hopping portals..." Mawu pauses and scratches her chin dramatically. "They're the definition of chance. It's easy to fall into them if you're in the wrong place at the wrong time. Of course, they still need a key, so they're not *that* dangerous." [g-04210] */
=@101 /*The real challenge is finding them at the *right* time. They follow a path, so they may travel to the farthest reaches of the multiverse, but they will surely find their way back sooner or later. */
=@102 /*"It could be just seconds every hundred years, or... three hours per cycle, every cycle. It is really case-specific." */
=@103 /*"In any case, if you find such a portal, Mawu would advise you not to enter it. Such portals are usually one-way, and in Cania you will either freeze to death or be torn to pieces by an army of ice devils." Mawu gives you a broad, charming smile. */
END
IF~~THEN REPLY @105 /*"I have some more questions, Mawu." */ DO~~ + g-bbD042.q
IF~~THEN REPLY @106 /*"I have to go now." */ DO~~ + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.darek
@108 /*Mawu raises her hands to her slender face. "Manohae?! Manohae from the Society? He went missing a few weeks ago, but Mawu thought he'd disappeared again to go swimming in Thalasia or something..." Mawu pauses. "Poor Manohae..." */
END
IF~~THEN REPLY @110 /*"Did Manohae like swimming?" */ DO~~ + g-bbD042.darek2
IF~~THEN REPLY @111 /*"I heard Manohae was a wereshark." */ DO~~ + g-bbD042.darek2
IF~~THEN REPLY @112 /*"They found him naked, frozen to the bone." */ DO~~ + g-bbD042.darek2
CHAIN IF~~THEN g-bbD042 g-bbD042.darek2
@114 /*"Oh, Manohae... He didn't deserve such an end. He was a wereshark and loved swimming in the strangest places..." */
END
IF~~THEN REPLY @116 /*"He must have activated the portal somehow. Nothing was found near him, so he was probably robbed on the spot. Was he carrying anything unusual?" */ DO~~ + g-bbD042.darek3
CHAIN IF~~THEN g-bbD042 g-bbD042.darek3
@118 /*"Unusual?" Mawu wonders. "I doubt it. Manohae preferred experiences to possessions. Unless he ate something extraordinary?" */
END
IF~~THEN REPLY @120 /*"Ate?" */ DO~~ + g-bbD042.darek4
CHAIN IF~~THEN g-bbD042 g-bbD042.darek4
@122 /*"Manohae always liked to nibble on new creatures. He loved the sensations of the palate. Once, he won a bet on Grandfather Oak and bit off a piece of a treant. He said afterwards that he'd been pulling splinters out of his gums for a month... Dear Manohae..." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @123 /*"There's that famous Sensate 'bravery'. Let's just bite into a tree, shall we?" */
END
IF~~THEN REPLY @125 /*"Who might know what Manohae recently ate?" */ DO~~ + g-bbD042.darek5
CHAIN IF~~THEN g-bbD042 g-bbD042.darek5
@127 /*Mawu's eyes fill with tears. "Elvra Syne, a kocrachon. Manohae always dined with Elvra whenever he was in Sigil. Mawu does not know where to find him. He likely spends his time in taverns suitable for fiends..." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @128 /*"I think there may be one somewhere near the port." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @129 /*"We definitely haven't seen a bar like that yet..." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @130 /*"There's one by that smelly gutter of a 'river', The Ditch." */
END
IF~~THEN REPLY @132 /*"Thank you. I have to relate that to the fiends. I have some more questions, Mawu." */ DO~SetGlobal("G-keyquest","GLOBAL",1)~ SOLVED_JOURNAL @20087 + g-bbD042.q
IF~~THEN REPLY @133 /*"Thank you. I have to relate that to the fiends. I have to go now." */ DO~SetGlobal("G-keyquest","GLOBAL",1)~ SOLVED_JOURNAL @20087 + g-bbD042.f1
IF~~THEN REPLY @134 /*"Thank you. I have to relate that to the fiends. I have to go now, Mawu. I'm sorry for your loss." */ DO~SetGlobal("G-keyquest","GLOBAL",1)~ SOLVED_JOURNAL @20087 + g-bbD042.f1
CHAIN IF~~THEN g-bbD042 g-bbD042.modron
@136 /*"Hmmm." She ponders deeply but quickly. "I suppose it depends on whether he is sensitive to astral conduits or the energy they produce. If it is the energy, then perhaps, as it can leave behind residual magic when it... hops away" */
=@137 /*"But if it's the connection he senses, then he will be of no help. If the portal isn't currently there... the connection is not available." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @138 /*"Query unclear, function parameters unknown." */
==g-bbd042 @139 /*Mawu gives you a slightly uneasy smile. "Mawu would still like to know... what evidence is there that such a portal exists in Sigil?" */
END
IF~~THEN REPLY @141 /*"Someone has been found on the other side, someone who should have been in Sigil. Did you know Manohae Brine?" */ DO~~ + g-bbD042.darek