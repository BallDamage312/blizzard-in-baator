BEGIN g-bbD054
CHAIN IF~ActuallyInCombat()~THEN g-bbD054 g-bbD054.combatdial
@0 /*"This is no time to talk." */
EXIT
CHAIN IF~!Dead("g-bb017") NumTimesTalkedTo(0) Global("g-trapvictoryloop","GLOBAL",0)~THEN g-bbD054 g-bbD054.start1
@3 /*In front of you confidently stands a red tiefling. She has grayish skin, speckled with darker spots on her back. She has slightly pointed ears, and the small horns in her hair reveal her origin. She radiates an aura of self-confidence, mirrored by the smile that never leaves her face. She makes sure to give a few seconds to everyone who comes to greet her. It takes a moment to get her attention, but when she looks at you, you feel you do not want to waste her precious time. */
=@4 /*"Can I help you, good man?" She asks, resting her hand on her hip. "Is this your first time seeing our troupe, or are you a regular? Sometimes the lighting makes it hard to recognize faces, but I'm sure I'd have recognized yours. My name is Raelis Shai and I'm the front woman of this group." She studies you for a moment. "Ha, or maybe you've come to join us and showcase your talent? Not that Haer'Dalis lacks one, but sometimes you need a well-built man, and Kirinaldo is sick while Biff, well... Biff is still learning." */
END
IF~~THEN REPLY @6 /*"Greetings. I have some questions." */ DO~SetGlobal("G-knowraelis","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @7 /*"Greetings. This is your theater troupe, isn't it? What can you tell me about it?" */ DO~SetGlobal("G-knowraelis","GLOBAL",1)~ + g-bbD054.troupe
IF~~THEN REPLY @8 /*"Never mind, goodbye." */ DO~SetGlobal("G-knowraelis","GLOBAL",1)~ EXIT
CHAIN IF~!Dead("g-bb017") OR(4) Global("g-trapvictoryloop","GLOBAL",1) Global("g-trapvictoryloop","GLOBAL",3) GlobalGT("g-ulfbrandlostraid","GLOBAL",0) Global("G-ulfbrandgaveup","GLOBAL",1)~THEN g-bbD054 g-bbD054.trapvictory
@10 /*"Thank you so much. I better run too. Who knows how much time we have." */
END
IF~~THEN REPLY @12 /*"You're welcome." */ DO~EscapeArea()~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-trapvictoryloop","GLOBAL",0) !Dead("g-bb017")~THEN g-bbD054 g-bbD054.start2
@15 /*The red tiefling, miss Raelis Shai, greets you. "Welcome back to our theater. What can I help you with today, good man?" */
END
IF~~THEN REPLY @17 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @18 /*"This is your theater troupe, isn't it? What can you tell me about it?" */ DO~~ + g-bbD054.troupe
IF~~THEN REPLY @19 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~Global("g-trapvictoryloop","GLOBAL",0) Global("G-hitmanD","GLOBAL",3)~THEN g-bbD054 g-bbD054.start2alt
@21 /*The red tiefling, miss Raelis Shai, greets you. "Welcome back to our theater. What can I help you with today, good man?" */
=@22 /*She looks around, a bit confused. "Where did Haer'Dalis go?" */
END
IF~~THEN REPLY @24 /*"Oh, him? I killed him." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD054.ikilledhim
IF~~THEN REPLY @25 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @26 /*"This is your theater troupe, isn't it? What can you tell me about it?" */ DO~~ + g-bbD054.troupe
IF~~THEN REPLY @27 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~Global("G-hitmanD","GLOBAL",4)~THEN g-bbD054 g-bbD054.start3
@29 /*The red tiefling, miss Raelis Shai, is clearly shocked. */
END
IF~~THEN REPLY @31 /*"I have some questions." */ DO~~ + g-bbD054.haedeathreact
IF~~THEN REPLY @32 /*"What happened?" */ DO~~ + g-bbD054.haedeathreact
IF~~THEN REPLY @33 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.questions
@35 /*"Oh, I'm certain you have a lot of questions. Ask then, and I'll try to answer them." */
END
IF~~THEN REPLY @37 /*"This is your theater troupe, isn't it? What can you tell me about it?" */ DO~~ + g-bbD054.troupe
IF~~THEN REPLY @38 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~GlobalGT("g-fated1","GLOBAL",0)~THEN REPLY @40 /*"Tell me about the quarrel your people had with a bariaur." */ DO~~ + g-bbD054.fated
IF~Global("g-knowulfbrand1","GLOBAL",1)~THEN REPLY @41 /*"I know that Haer'Dalis has a problem with the Fated. What can you tell me about that?" */ DO~~ + g-bbD054.fated
IF~~THEN REPLY @42 /*"Do you know the audience in the room?" */ DO~~ + g-bbD054.audience
IF~~THEN REPLY @43 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.troupe
@45 /*"Yes. At the moment, the group consists of Haer'Dalis, Kirinaldo, Lunisia and Biff the Understudy." */
END
IF~~THEN REPLY @47 /*"Tell me about Haer'Dalis." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD054.haerdalis
IF~~THEN REPLY @48 /*"Tell me about Kirinaldo." */ DO~~ + g-bbD054.kirinaldo
IF~~THEN REPLY @49 /*"Tell me about Lunisia." */ DO~~ + g-bbD054.lunisia
IF~~THEN REPLY @50 /*"Tell me about Biff." */ DO~~ + g-bbD054.biff
IF~~THEN REPLY @51 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @52 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.plays
@54 /*"We have staged many plays. One about a personal drama of a royal family, where blood flows thickly and betrayal follows betrayal. One about a forbidden love of two descendants of feuding houses. One about rich family members disappearing one by one on an isolated island, where a murderous witch lives. One about a wedding during wartime attended by the ghosts of the past. Above all, dramas, sometimes doused with a sauce of horror and mysticism." */
=@55 /*"We are not afraid of controversy or touching on difficult topics. Our actors strain their minds, work with their bodies, and their words and gestures move both simpletons and art connoisseurs to the marrow of their souls. We are about to start working on a new play, but we are lacking inspiration..." */
END
IF~Global("G-scriptwriter","GLOBAL",0)~THEN REPLY @57 /*"Maybe I could help with the new script? I am something of an author myself..." */ DO~~ + g-bbD054.scriptwriter
IF~~THEN REPLY @58 /*"A personal drama of a royal family?" */ DO~~ + g-bbD054.macbeth
IF~~THEN REPLY @59 /*"A forbidden love between two descendants of feuding houses?" */ DO~~ + g-bbD054.romjul
IF~~THEN REPLY @60 /*"A witch's island?" */ DO~~ + g-bbD054.umineko
IF~~THEN REPLY @61 /*"A wedding during wartime?" */ DO~~ + g-bbD054.wesele
IF~~THEN REPLY @62 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @63 /*"I'm sorry but I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.macbeth
@65 /*"A classic tale telling about dramas of a monarchy from the Prime Material Plane. The moving tragedy of a kingslayer to whom the witches foretold that he would not die by the hand of a man born of a woman's womb - and that no murderous blow would touch him until the forest went to fight against him. I will not tell you the ending, but it is a story of guilt and madness, not alien to us here in the planes." */
END
IF~Global("G-scriptwriter","GLOBAL",0)~THEN REPLY @67 /*"Maybe I could help with the new script? I am something of an author myself..." */ DO~~ + g-bbD054.scriptwriter
IF~~THEN REPLY @68 /*"A forbidden love between two descendants of feuding houses?" */ DO~~ + g-bbD054.romjul
IF~~THEN REPLY @69 /*"A witch's island?" */ DO~~ + g-bbD054.umineko
IF~~THEN REPLY @70 /*"A wedding during wartime?" */ DO~~ + g-bbD054.wesele
IF~~THEN REPLY @71 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @72 /*"I'm sorry but I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.romjul
@74 /*"A multi-generational romantic tragedy. Imagine two families who hate each other like tanar'ri and baatezu. Their youngest members fall in love, much to their families' chagrin. It's an exploration of the gray areas between alignments. Good people do bad things in difficult circumstances, and even villains are capable of love. Above all, this play explores the power of tragic destiny - or doomed fate, if you prefer." */
END
IF~Global("G-scriptwriter","GLOBAL",0)~THEN REPLY @76 /*"Maybe I could help with the new script? I am something of an author myself..." */ DO~~ + g-bbD054.scriptwriter
IF~~THEN REPLY @77 /*"A personal drama of a royal family?" */ DO~~ + g-bbD054.macbeth
IF~~THEN REPLY @78 /*"A witch's island?" */ DO~~ + g-bbD054.umineko
IF~~THEN REPLY @79 /*"A wedding during wartime?" */ DO~~ + g-bbD054.wesele
IF~~THEN REPLY @80 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @81 /*"I'm sorry but I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.umineko
@83 /*"A member of a wealthy family is seriously ill and intends to announce the division of the inheritance. The family gathers on his island, but he dies before he can explain anything. The older generation quarrels with each other while the younger crowd faces its own dramas. Suddenly, they start disappearing one by one... And a shroud of magic surrounds everything, because the previous head of the family supposedly owed his wealth to a mysterious witch from another plane... Lady Æ especially likes this play." */
END
IF~~THEN REPLY @85 /*"What do you know about Lady Æ?" */ DO~~ + g-bbD054.raeae
IF~Global("G-scriptwriter","GLOBAL",0)~THEN REPLY @86 /*"Maybe I could help with the new script? I am something of an author myself..." */ DO~~ + g-bbD054.scriptwriter
IF~~THEN REPLY @87 /*"A personal drama of a royal family?" */ DO~~ + g-bbD054.macbeth
IF~~THEN REPLY @88 /*"A forbidden love between two descendants of feuding houses?" */ DO~~ + g-bbD054.romjul
IF~~THEN REPLY @89 /*"A wedding during wartime?" */ DO~~ + g-bbD054.wesele
IF~~THEN REPLY @90 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @91 /*"I'm sorry but I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.wesele
@93 /*"This is an adaptation based on a wedding that actually took place... So characters inspired by those we know from newsrags, like 'Sigil's Independent Global Information Service' or 'Sentinel', appear. Over time it gets weirder and weirder as ghosts and entities start to appear, unusual even for the planes, forming something like... a living capsheaf. The realistic first act intertwines with the magical second act in a dramatic finale full of symbolism but not without political subtext showing the mistakes of the faction rulers." */
END
IF~Global("G-scriptwriter","GLOBAL",0)~THEN REPLY @95 /*"Maybe I could help with the new script? I am something of an author myself..." */ DO~~ + g-bbD054.scriptwriter
IF~~THEN REPLY @96 /*"A personal drama of a royal family?" */ DO~~ + g-bbD054.macbeth
IF~~THEN REPLY @97 /*"A forbidden love between two descendants of feuding houses?" */ DO~~ + g-bbD054.romjul
IF~~THEN REPLY @98 /*"A witch's island?" */ DO~~ + g-bbD054.umineko
IF~~THEN REPLY @99 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @100 /*"I'm sorry but I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.haerdalis
@102 /*"He is, excuse me, a damn good actor. He is incredibly skilled, and he plays an instrument. Sometimes I am surprised he joined the Doomguard; it somehow does not fit his lively, extroverted stage persona. He gets along great with us and is a very valuable member of the team. The female fans love him." */
END
IF~~THEN REPLY @104 /*"Tell me about Kirinaldo." */ DO~~ + g-bbD054.kirinaldo
IF~~THEN REPLY @105 /*"Tell me about Lunisia." */ DO~~ + g-bbD054.lunisia
IF~~THEN REPLY @106 /*"Tell me about Biff." */ DO~~ + g-bbD054.biff
IF~~THEN REPLY @107 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @108 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @109 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.kirinaldo
@111 /*"Kirinaldo is a dwarven mage. If we need someone to lug heavy equipment, he is the one we turn to, especially since he is so helpful. If he gets annoyed, though, it is best to avoid his quarterstaff. To avoid accidents on stage, he wears a robe of fire resistance. I wish you got to meet him today, but unfortunately he has taken ill." */
END
IF~~THEN REPLY @113 /*"It's a shame. When I think about it, I don't see any dwarves in Sigil at all. It's starting to get absurd for such a cosmopolitan city." */ DO~~ + g-bbD054.dwarf
IF~~THEN REPLY @114 /*"Tell me about Haer'Dalis." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD054.haerdalis
IF~~THEN REPLY @115 /*"Tell me about Lunisia." */ DO~~ + g-bbD054.lunisia
IF~~THEN REPLY @116 /*"Tell me about Biff." */ DO~~ + g-bbD054.biff
IF~~THEN REPLY @117 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @118 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @119 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.lunisia
@121 /*"Lunisia is our wild beauty, an elven mage whose charm no one can resist." She chuckles. "I will not tell you her secrets, but no one can control the emotions of viewers like she can." */
END
IF~~THEN REPLY @123 /*"Tell me about Haer'Dalis." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD054.haerdalis
IF~~THEN REPLY @124 /*"Tell me about Kirinaldo." */ DO~~ + g-bbD054.kirinaldo
IF~~THEN REPLY @125 /*"Tell me about Biff." */ DO~~ + g-bbD054.biff
IF~~THEN REPLY @126 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @127 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @128 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.biff
@130 /*"Biff is the understudy for the other actors when they are unavailable. Today, Kirinaldo's role falls to him... They differ in some ways, but acting is the art of portraying someone completely different, whether in body or character. Biff is, well, uneducated. But he is learning. He gives it his all. He can become a real actor in time. Although, he's not here right now. He must have gone somewhere." */
END
IF~~THEN REPLY @132 /*"Tell me about Haer'Dalis." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD054.haerdalis
IF~~THEN REPLY @133 /*"Tell me about Kirinaldo." */ DO~~ + g-bbD054.kirinaldo
IF~~THEN REPLY @134 /*"Tell me about Lunisia." */ DO~~ + g-bbD054.lunisia
IF~~THEN REPLY @135 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @136 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @137 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.dwarf
@139 /*"Oh, that's a false impression! In fact, they're the fifth most common race in Sigil. Just because you don't notice them doesn't mean you don't pass them by. It's worth keeping an eye out. Sigil is full of interesting people. Or you can always ride a conduit to the Prime if you want to meet one. There are plenty of dwarves, elves, orcs..." She laughs. "Of course, none of them will be as wonderful as our Kirinaldo." */
END
IF~~THEN REPLY @141 /*"Tell me about Haer'Dalis." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD054.haerdalis
IF~~THEN REPLY @142 /*"Tell me about Lunisia." */ DO~~ + g-bbD054.lunisia
IF~~THEN REPLY @143 /*"Tell me about Biff." */ DO~~ + g-bbD054.biff
IF~~THEN REPLY @144 /*"What productions do you stage?" */ DO~~ + g-bbD054.plays
IF~~THEN REPLY @145 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @146 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.audience
@148 /*"Let me think. Among our viewers, Lady Æ is a regular. I see a few more people I do not recognize, maybe they are here for the first time. */
END
IF~~THEN REPLY @150 /*"What do you know about Lady Æ?" */ DO~~ + g-bbD054.raeae
IF~~THEN REPLY @151 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @152 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.raeae
@154 /*"Lady Æ is an enigma to me. I have great respect for her, although it's hard for me to say why. I do not know much about her background. I guess she is from a different plane. She always supports us when we are not doing well. On the other hand, having her eyes on you during a performance is like having a hundred more people in the audience. It is hard for me to explain. You should try talking to her yourself." */
END
IF~Global("G-knowaestory","GLOBAL",1)~THEN REPLY @156 /*"I had a chance to talk to her and heard that... She stems from three people? I should get used to such abstract concepts, living in the planes." */ DO~~ + g-bbD054.raeae1
IF~~THEN REPLY @158 /*"Who else comes here?" */ DO~~ + g-bbD054.audience
IF~~THEN REPLY @159 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @160 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.raeae1
@162 /*"Interesting case, eh? And each of these sisters had their own story and skills that complemented each other like the components of the human mind. We should stage that one day..." */
END
IF~Global("Pestle_Kilnn","AR0612",1)~THEN REPLY @165 /*"When I think of it, I once encountered a case where two people were fused. But they were ordinary pharmacists without any supernatural powers..." */ DO~~ + g-bbD054.raeae3
IF~~THEN REPLY @166 /*"Who else comes here?" */ DO~~ + g-bbD054.audience
IF~~THEN REPLY @167 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @168 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.raeae2
@170 /*"Do not be afraid. It is not like she is completely alien to human morality; she just needs some entertainment. And it is not like someone else, such as me, will suddenly speak her words when she finds out you are gossiping about her. You are safe." */
END
IF~~THEN REPLY @172 /*"I feel completely safe. I sense no danger. None at all." */ DO~~ + g-bbD054.smile
IF~Global("G-knowaestory","GLOBAL",1)~THEN REPLY @173 /*"But the fact that she stems from three people? I should get used to such abstract concepts, living in the planes." */ DO~~ + g-bbD054.raeae1
IF~~THEN REPLY @174 /*"Who else comes here?" */ DO~~ + g-bbD054.audience
IF~~THEN REPLY @175 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @176 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.raeae3
@178 /*"Oh yes, in the Clerk's Ward, right? That was not a very successful fusion, was it? But yes, weirder things happen in the planes." */
END
IF~Global("G-aehorror","GLOBAL",1)~THEN REPLY @180 /*"Talking to Æ was a terrifying, existential experience." */ DO~~ + g-bbD054.raeae2
IF~~THEN REPLY @181 /*"Who else comes here?" */ DO~~ + g-bbD054.audience
IF~~THEN REPLY @182 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @183 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.smile
@185 /*Raelis smiles. */
END
IF~~THEN REPLY @187 /*"I have some questions." */ DO~~ + g-bbD054.questions
IF~~THEN REPLY @188 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.scriptwriter
@190 /*"A crazy idea! But I like it. Our play is called 'Comedy of Horrors'. It refers to events from ours and other plays in a humorous way. There is a classic motif of two lovers... but we haven't fleshed out the specific characters yet." */
END
IF~~THEN REPLY @192 /*"Maybe a classic? Young people from two feuding families..." */ DO~SetGlobal("G-script_heroes_mundane","GLOBAL",1)~ + g-bbD054.scriptwriter1
IF~~THEN REPLY @193 /*"Let it be a tiefling and an aasimar. A slight contrast reflected in the descendants of good and evil beings..." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_heroes_planar","GLOBAL",1)~ + g-bbD054.scriptwriter1
IF~~THEN REPLY @194 /*"Let's go all out. Listen to this: tanar'ri and baatezu." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",2) SetGlobal("G-script_heroes_superplanar","GLOBAL",1)~ + g-bbD054.scriptwriter1
IF~~THEN REPLY @195 /*"Let them be an elf and a dwarf." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",-1) SetGlobal("G-script_heroes_lotr","GLOBAL",1)~ + g-bbD054.scriptwriter1
IF~~THEN REPLY @196 /*"Wait, I have a few questions on another topic first." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @197 /*"I guess I need to think about this. I'll come back." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.scriptwriter1
@199 /*"And the action takes place in..." */
END
IF~~THEN REPLY @201 /*"In Sigil, just like that." */ DO~SetGlobal("G-script_loc_sigil","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @202 /*"Somewhere extremely far away. Maybe Mechanus... Or Limbo!" */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_loc_planes","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @203 /*"The Hells, of course." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_loc_planes","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @204 /*"The Heavens, obviously." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_loc_planes","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @205 /*"Let's have some crazy plane or something that's not even really a plane, like the Lady's Maze." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",2) SetGlobal("G-script_loc_maze","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @206 /*"In Faerûn where most famous stories take place." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",-1) SetGlobal("G-script_loc_prime","GLOBAL",1)~ + g-bbD054.scriptwriter2
IF~~THEN REPLY @207 /*"Wait, I have a few questions on another topic first." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @208 /*"I guess I need to think about this. I'll come back." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.scriptwriter2
@210 /*"What might the titular horrors entail? What would be the best source of fear?" */
END
IF~~THEN REPLY @212 /*"Ghosts are what I'm most afraid of." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",-1) SetGlobal("G-script_horror_undead1","GLOBAL",1)~ + g-bbD054.scriptwriter3
IF~~THEN REPLY @213 /*"The social stratification of Sigil. Oh look, a surprise alliteration." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_horror_social","GLOBAL",1)~ + g-bbD054.scriptwriter3
IF~~THEN REPLY @214 /*"The burdens of 'just being', or the fact of the necessity of existence." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",1) SetGlobal("G-script_horror_meta","GLOBAL",1)~ + g-bbD054.scriptwriter3
IF~~THEN REPLY @215 /*"Ghouls and zombies." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",-1) SetGlobal("G-script_horror_undead2","GLOBAL",1)~ + g-bbD054.scriptwriter3
IF~~THEN REPLY @216 /*"Wait, I have a few questions on another topic first." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @217 /*"I guess I need to think about this. I'll come back." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptlater","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.scriptwriter3
@219 /*"So, what actually causes the main conflict?" */
END
IF~~THEN REPLY @221 /*"The issue of the Blood War?" */ DO~SetGlobal("G-script_conflict_bloodwar","GLOBAL",1) SetGlobal("G-scriptwriter","GLOBAL",1)~ + g-bbD054.scriptwriter4
IF~~THEN REPLY @222 /*"The arrival of a third person, someone who would contrast well with the characters' personalities..." */ DO~SetGlobal("G-script_conflict_someone","GLOBAL",1) SetGlobal("G-scriptwriter","GLOBAL",1)~ + g-bbD054.scriptwriter4
IF~Global("G-knowRowan","GLOBAL",1)~THEN REPLY @223 /*"Rowan Darkwood, obviously." */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",2) SetGlobal("G-dissrowan","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",-1) SetGlobal("G-scriptwriter","GLOBAL",1)~ + g-bbD054.scriptwriter4
IF~~THEN REPLY @224 /*"Hmm, discord between the families of the main characters?" */ DO~IncrementGlobal("G-scriptinteresting","GLOBAL",-1) SetGlobal("G-script_conflict_family","GLOBAL",1) SetGlobal("G-scriptwriter","GLOBAL",1)~ + g-bbD054.scriptwriter4
IF~~THEN REPLY @225 /*"Wait, I have a few questions on another topic first." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptwriter","GLOBAL",1) SetGlobal("G-scriptlater","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @226 /*"I guess I need to think about this. I'll come back." */ DO~SetGlobal("G-scriptinteresting","GLOBAL",0) SetGlobal("G-scriptwriter","GLOBAL",1) SetGlobal("G-scriptlater","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.scriptwriter4
@228 /*"Okay, let us take a look at what we have here..." */
==g-bbd054 IF~Global("G-dissrowan","GLOBAL",1)~THEN @229 /*Raelis smiles. "Factol of the Fated? That's rather bold..." She puts it down in her notebook regardless. "Right. So..." */
==g-bbd054 IF~Global("G-script_loc_sigil","GLOBAL",1)~THEN @230 /*"We start off in Sigil, the city at the center of the multiverse, where everything cool happens, it's here that we meet our unlikely protagonists..." */
==g-bbd054 IF~Global("G-script_loc_prime","GLOBAL",1)~THEN @231 /*"We start off in... Faerûn, like so many great stories before. It's here that we meet our unlikely protagonists..." */
==g-bbd054 IF~Global("G-script_loc_planes","GLOBAL",1)~THEN @232 /*"We start off in the planes. In belief made solid, land of the powers. It's here that we meet our unlikely protagonists..." */
==g-bbd054 IF~Global("G-script_loc_maze","GLOBAL",1)~THEN @233 /*"We start off in darkness. In the unending depths of imprisonment by the one and only, her Serenity, the Lady of Pain. In her infamous mazes, we meet our unlikely, and miserable, protagonists..." */
==g-bbd054 IF~Global("G-script_loc_sigil","GLOBAL",1) Global("G-script_heroes_lotr","GLOBAL",1)~THEN @234 /*"A simple dwarven gal and an elven prince... I guess that would be unusual in Sigil. They are desperately and needlessly in love, but there is something that stands in their way..." */
==g-bbd054 IF~Global("G-script_loc_planes","GLOBAL",1) Global("G-script_heroes_lotr","GLOBAL",1)~THEN @235 /*"...a pair of planar adventurers, a stout dwarven smith and an elven sorceress. They are desperately and needlessly in love. but there is something that stands in their way..." */
==g-bbd054 IF~Global("G-script_loc_maze","GLOBAL",1) Global("G-script_heroes_lotr","GLOBAL",1)~THEN @236 /*"...a pair of adventurers, a dwarven cleric and an elven monk... Banished for breaking the Lady's rule of worship they fall in love, desperately and needlessly in love. But there is something that stands in their way...other than obviously being trapped, which they will cleverly deal with by act three. But the real threat turns out to be..." */
==g-bbd054 IF~Global("G-script_loc_prime","GLOBAL",1) Global("G-script_heroes_lotr","GLOBAL",1)~THEN @237 /*"...a dwarf.... and an elf. You know? Because they are unlikely? Well anyway, they are, of course, lovers, but there is something that stands in their way..." */
==g-bbd054 IF~Global("G-script_loc_sigil","GLOBAL",1) Global("G-script_heroes_mundane","GLOBAL",1)~THEN @238 /*"...two young namers, but from opposing factions. The classic. Their love is of course further hindered by..." */
==g-bbd054 IF~Global("G-script_loc_maze","GLOBAL",1) Global("G-script_heroes_mundane","GLOBAL",1)~THEN @239 /*"...two young namers, but from opposing factions. The classic. The twist is that they are mazed, but they would get over that with the help from one of their factions. But their love is of course further hindered by..." */
==g-bbd054 IF~Global("G-script_loc_prime","GLOBAL",1) Global("G-script_heroes_mundane","GLOBAL",1)~THEN @240 /*"...two young adventurers. They fight monsters and crime and whatnot. Their love is threatened, though, by..." */
==g-bbd054 IF~Global("G-script_loc_planes","GLOBAL",1) Global("G-script_heroes_mundane","GLOBAL",1)~THEN @241 /*"...two simple planar adventurers. They fight aberrations and evil proxies and whatnot. Their sacred love is threatened, though, by..." */
==g-bbd054 IF~Global("G-script_loc_sigil","GLOBAL",1) Global("G-script_heroes_planar","GLOBAL",1)~THEN @242 /*"...a sneaky tiefling thief from the Hive and a beautiful aasimar harmonium woman. The polar opposites attract and their love is born, but of course it's not meant to be because..." */
==g-bbd054 IF~Global("G-script_loc_maze","GLOBAL",1) Global("G-script_heroes_planar","GLOBAL",1)~THEN @243 /*"...a mad tiefling Dustman woman, banished for endangering the city and a naive aasimar newcomer, foolish enough to worship the lady. They meet under dire circumstances and the feelings are born. They of course escape the Maze eventually but their love is not meant to be because of..." */
==g-bbd054 IF~Global("G-script_loc_prime","GLOBAL",1) Global("G-script_heroes_planar","GLOBAL",1)~THEN @244 /*"...two polar opposites of young plane-touched adventurers. They fight monsters and crime and whatnot. Their love is paradoxical but also threatened by..." */
==g-bbd054 IF~Global("G-script_loc_planes","GLOBAL",1) Global("G-script_heroes_planar","GLOBAL",1)~THEN @245 /*"...an aasimar enforcer from an independent town in the upper planes and a seductive tiefling slaver from the lower planes. They meet on neutral grounds and... somehow don't kill each other. The opposite in fact. Their strange and tempestuous love is threatened, though, by..." */
==g-bbd054 IF~Global("G-script_loc_sigil","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @246 /*"...an alu-fiend bartender from the Styx Oarsman and an incessant but charming lemure with such incredible luck and charisma that it wins her over. However, the crazy couple is in danger because of..." */
==g-bbd054 IF~Global("G-script_loc_maze","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @247 /*"..a long forgotten Demon Lord and one of long lost daughters of Mephistopheles himself meet in the Mazes, but instead of waging war against one another, they form a spicy and dangerous alliance to break free. Their good fortune is soon disrupted by..." */
==g-bbd054 IF~Global("G-script_loc_prime","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @248 /*"...a lilitu who came to corrupt the worship at a remote mountain monastery meets a devil who is already tempting the rectress for her soul. Their rivalry turns into romance, but, of course, this shaky relationship is disrupted by..." */
==g-bbd054 IF~Global("G-script_loc_planes","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @249 /*"...a cunning, shapeshifting succubus acting as a spy with a mission to Nessus that gets cut short by an even more cunning pit fiend. But instead of unmasking her, they engage in a crazy trip around the great wheel, but their strange dance is interrupted by..." */
==g-bbd054 IF~Global("G-script_horror_undead1","GLOBAL",1)~THEN @250 /*"...ghosts? The voices from beyond the grave belong to ancient creatures, who are somehow causing them continuous trouble because..." */
==g-bbd054 IF~Global("G-script_horror_undead2","GLOBAL",1)~THEN @251 /*"...an army of the undead, waiting to strike from an uncomfortably close, yet desperately unreachable location. The army of course is the direct result of..." */
==g-bbd054 IF~Global("G-script_horror_social","GLOBAL",1)~THEN @252 /*"...they come from backgrounds they just can not reconcile in the end, and they grow apart, more and more, the grow resentful to one another because of their placement on the ladders of society. But! The real wedge is driven between them because of..." */
==g-bbd054 IF~Global("G-script_horror_meta","GLOBAL",1)~THEN @253 /*"...the futility of it all? What is love, in the face of decay, relativity and the meaningless existence in our wretched multiverse, where justice is an empty promise. But the ultimate slash at their barely-holding connection comes because of..." */
==g-bbd054 IF~Global("G-script_conflict_bloodwar","GLOBAL",1) Global("G-script_horror_undead1","GLOBAL",1)~THEN @254 /*"...the ghosts have been actually conscripted to participate in the blood war and used their posting to escape and haunt the protagonists for their sins. The whole finale takes place at the large battlefield and everyone dies. Now, the protagonists are ghosts too!" */
==g-bbd054 IF~Global("G-script_conflict_someone","GLOBAL",1) Global("G-script_horror_undead1","GLOBAL",1)~THEN @255 /*"...the ghosts have been sent by another, jealous former lover of one of the characters. This is an attempt to scare them apart. But of course our heroes are no wimps so they defeat the ghosts in an old temple, where the villain has been conducting their dark rituals. Possibly make love on the altar, but that depends on who we cast as protagonists." */
==g-bbd054 IF~Global("G-dissrowan","GLOBAL",1) Global("G-script_horror_undead1","GLOBAL",1)~THEN @256 /*"...they have been summoned by none other than Rowan Darkwood. Obviously, the protagonists are secretly rich and he is trying to scam them out of their jink, by offering help. They are clever, though and they see through it. They cover Darkwood in tar and feathers for everyone to see. And the play ends in a musical number as everyone dances around the bastard." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_undead1","GLOBAL",1) !Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @257 /*"...the ghosts have been sent by the protagonists' families to stop this ridiculous union. We end up in a debate whether it's the family... or love that should be the root of duty. Before we reach the conclusion... the curtain drops and the audience has to answer the question themselves." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_undead1","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @258 /*"...the ghosts have been sent by the protagonists' houses in their respective planes to stop this ridiculous union. We then debate whether it's the allegiance to your fiendish race... or love that should be the root of duty. Before we reach the conclusion... the curtain drops and the audience has to answer the question themselves." */
==g-bbd054 IF~Global("G-script_conflict_bloodwar","GLOBAL",1) Global("G-script_horror_undead2","GLOBAL",1)~THEN @259 /*"...the goddess of undeath, Kiaransalee's attempt to sway the scales of the Blood War and disrupt the balance of the multiverse. The protagonists go on an epic journey to stop the disruption and we end up with..." Raelis pauses. "Perhaps the death of the multiverse? Haer'Dalis would love that..." */
==g-bbd054 IF~Global("G-script_conflict_someone","GLOBAL",1) Global("G-script_horror_undead2","GLOBAL",1)~THEN @260 /*"... an ancient lich, who just happens to be hungry for some artifact the protagonists carry. They have to make an epic stand in some scenic location, full of dramatic monologues and close calls and then, at the end of the day, one of them dies and the other finds their strength in revenge against the foul undead, killing him screaming the name of their beloved." */
==g-bbd054 IF~Global("G-dissrowan","GLOBAL",1) Global("G-script_horror_undead2","GLOBAL",1)~THEN @261 /*"...meddling of course. And who's meddling? The bastard, Darkwood. He opens a portal to Niflheim and pours undead at the protagonists. Why? Because he felt like it. Why not perform yet another act of senseless, pointless cruelty? We end up with the protagonists rerouting the army, which ends up at Rowan's bedroom before we turn off all the lights, make it pitch black and just have Rowan scream for about five minutes. When lights turn on again, there is a prop skeleton at the center of the stage." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_undead2","GLOBAL",1) !Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @262 /*"...the army has been sent by the protagonists' families to stop this ridiculous union. They would rather see the heroes dead than together. We end up in a debate whether it's the family... or love that should be the root of duty. But it's obvious. If your family tries to murder you over who you love, they are *probably* in the wrong." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_undead2","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @263 /*"...the armies have been sent by the forces of Abyss to stop this ridiculous union. We end up in a debate whether it's the allegiance to your fiendish race... or love that should be the root of duty. Before we reach the conclusion... the curtain drops and the audience has to answer the question themselves." */
==g-bbd054 IF~Global("G-script_conflict_bloodwar","GLOBAL",1) Global("G-script_horror_social","GLOBAL",1)~THEN @264 /*"One of them gets conscripted to the Blood War, and the other cannot do anything about it. When truly separated and threatened with disintegration on the battlefield, they overcome their idiotic resentment but it is too late. While one of them risks their skin in Gehenna, it is the other one who actually perishes, out of grief and worry. Because war is bad." */
==g-bbd054 IF~Global("G-script_conflict_someone","GLOBAL",1) Global("G-script_horror_social","GLOBAL",1)~THEN @265 /*"... the actual gap between them is fabricated by a former lover of one of them. They grow even more distant until they treat each other as perfect strangers and in time, forget about each other. The guilty third party fails to win the love of one of the heroes, because she grew apathetic to all feelings thanks to his actions. We end up in a grim, loveless reality." */
==g-bbd054 IF~Global("G-dissrowan","GLOBAL",1) Global("G-script_horror_social","GLOBAL",1)~THEN @266 /*".. who *better* to falsify a social status, deepen divisions, sow disorder and betray trust than the bastard himself, Darkwood? His meddling is of course discovered in time and stopped. His scheme to steal or overthrow whatever fails, as the heroes find it in their hearts to unite against his soulless plot. He is banished to Pandemonium for his crime and fun is had by all." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_social","GLOBAL",1) !Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @267 /*"... the families who only enforce the social difference with their constant bickering. When all seems lost in the love between the two lovebirds, the rich ones suddenly lose their fortune, and come to the poor one for help. The latter aids the troubled family, because the true riches are the riches of our empathy. And that's that." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_social","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @268 /*"... the baatezu, who swim in money, finally convince one of the heroes to abandon the other, the tanar'ri. Little do they know that Mammon is coming for their fortune and soon, they are all slain, including the baatezu protagonist, who chose death over love." */
==g-bbd054 IF~Global("G-script_conflict_bloodwar","GLOBAL",1) Global("G-script_horror_meta","GLOBAL",1)~THEN @269 /*"... the Blood War. What is better to illustrate the hopelessness of it all than the senseless slaughter that the fiend's battle for ultimate supremacy breeds. The lovers, driven by entropy, both join in the war and meet at the battlefield. The climax takes place at the bridge over River Styx. They battle to the death, but both fall into the depths below and emerge with no memory who they are. Clueless, they join forces, again, to try to find their way out of their predicament as the play ends. Do they find their happiness again in oblivion? Do they regain their senses of self and finish the slaughter? We shall never know." */
==g-bbd054 IF~Global("G-script_conflict_someone","GLOBAL",1) Global("G-script_horror_meta","GLOBAL",1)~THEN @270 /*"... an appearance of a prophet, announcing the end of existence. So powerful his message is, that they both join his legion and become mindless cultists over time. We observe their mundane lives as minions in the cult and their complete lack of interactions until the final moment arrives and we see them looking at it... holding hands. Have they been secretly maintaining their love behind the scenes!? We won't know, as the multiverse ends." */
==g-bbd054 IF~Global("G-dissrowan","GLOBAL",1) Global("G-script_horror_meta","GLOBAL",1)~THEN @271 /*"... actually, scratch that, their *rescue* comes in finding out that there is one thing worth living for. And that is opposing the oppression that Darkwood suddenly imposes on their homes. They break out of apathy to bring the tyrant down in an epic struggle, which has our heroes on the brink of catastrophe until the Darkwood's confidence in his victory becomes his own undoing." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_meta","GLOBAL",1) !Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @272 /*"...their families. Their constant pestering just deepens the senselessness, and after it escalates into abuse on their part the couple decides to take their lives together, hoping to find each other in the afterlife, where they might find some reason behind it. But... they end up in divine realms across the planes and never see each other again. The message? Stop worrying, make love." */
==g-bbd054 IF~Global("G-script_conflict_family","GLOBAL",1) Global("G-script_horror_meta","GLOBAL",1) Global("G-script_heroes_superplanar","GLOBAL",1)~THEN @273 /*"...their fiendish races. Their constant bickering just deepens the senselessness, and after it escalates into abuse on their part the couple decides to become nullified, hoping to find comfort in nonexistence. They allow themselves to be swallowed by Dendar, the Night Serpent and... that's it. The final monologue belongs to Dendar who says she is having gastric problems because of just how sour the two protagonists were. The message? Stop worrying, make love, don't annihilate yourself." */
END
IF~Global("G-scriptinteresting","GLOBAL",-4)~THEN REPLY @275 /*"So what do you think?" */ DO~AddexperienceParty(1)~ JOURNAL @6023 + g-bbD054.review1
IF~OR(3) Global("G-scriptinteresting","GLOBAL",-3)
Global("G-scriptinteresting","GLOBAL",-2)
Global("G-scriptinteresting","GLOBAL",-1)~THEN REPLY @276 /*"So what do you think?" */ DO~AddexperienceParty(100)~ JOURNAL @6023 + g-bbD054.review2
IF~OR(3) Global("G-scriptinteresting","GLOBAL",0)
Global("G-scriptinteresting","GLOBAL",1)
Global("G-scriptinteresting","GLOBAL",2)~THEN REPLY @277 /*"So what do you think?" */ DO~AddexperienceParty(1000)~ JOURNAL @6023 + g-bbD054.review3
IF~OR(4) Global("G-scriptinteresting","GLOBAL",3)
Global("G-scriptinteresting","GLOBAL",4)
Global("G-scriptinteresting","GLOBAL",5)
Global("G-scriptinteresting","GLOBAL",6)~THEN REPLY @278 /*"So what do you think?" */ DO~AddexperienceParty(10000)~ JOURNAL @6024 + g-bbD054.review4
IF~Global("G-scriptinteresting","GLOBAL",7)~THEN REPLY @279 /*"So what do you think?" */ DO~AddexperienceParty(100000)~ JOURNAL @6024 + g-bbD054.review5
CHAIN IF~~THEN g-bbD054 g-bbD054.review1
@281 /*"That's probably... the worst thing I've ever seen in my life." Raelis bursts out laughing. "Don't take it personally, you're an amateur, so I wasn't expecting anything, but at least we had fun." */
END
IF~~THEN REPLY @283 /*"You could have laughed *a little* quieter... I gave it my best. I still have some questions." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @284 /*"Oh well. I'd better go now." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.review2
@286 /*"I am afraid this will not work for us. There are too many clichés and hackneyed motifs. But I appreciate you trying." */
END
IF~~THEN REPLY @288 /*"I tried so hard but in the end it doesn't even matter? Too bad. I've got other questions though." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @289 /*"Oh well. I'd better go now." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.review3
@291 /*"I don't know what to think about it, it's a... perfectly mundane draft. Maybe with a few minor changes it will work? I don't want to promise you anything..." Raelis smiles awkwardly. */
END
IF~~THEN REPLY @293 /*"All right. I don't want any promises. I still have some questions, though." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @294 /*"Oh well. I'd better go now." */ DO~SetGlobal("G-scriptbad","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.review4
@296 /*"It shows great promise. The ideas are so unusual that they should interest the audience. Thank you very much for your help; it was invaluable!" */
END
IF~~THEN REPLY @298 /*"I'm glad I could help. I've got other questions though." */ DO~SetGlobal("G-scriptgood","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @299 /*"I'm glad I could help but I have to go now." */ DO~SetGlobal("G-scriptgood","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.review5
@301 /*Raelis rereads her notes, nodding vigorously. "Yes! That's it! This will be our *best* play yet. I can already see it in my mind's eye. You're a godsend, stranger!" */
END
IF~~THEN REPLY @303 /*"I'm glad I could help. I've got other questions though." */ DO~SetGlobal("G-scriptgood","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @304 /*"I'm glad I could help but I have to go now." */ DO~SetGlobal("G-scriptgood","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.fated
@306 /*"Ah, he's got beef with Rowan Darkwood, their factol. Please talk to Haer'Dalis about this. I don't want to get involved. I know it may concern me to some extent, but I want to trust him with how we handle this, okay?" */
END
IF~~THEN REPLY @308 /*Walk away from Raelis. */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ EXIT
IF~~THEN REPLY @309 /*"I have some questions." */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD054.questions
IF~~THEN REPLY @310 /*"Never mind, goodbye." */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.haedeathreact
@312 /*"I'm not in the mood to talk right now. Haer'Dalis... I found him dead backstage... I don't know what will become of us now. This is the end of our theater." Raelis Shai leaves the stage. */
==g-bbd054 IF~PartyHasItem("g-bbi135")~THEN @313 /*"And... someone removed his head! The Fated are monsters!" */
END
IF~~THEN REPLY @315 /*"I'm sorry for your loss. Farewell." */ DO~EscapeArea() ActionOverride("g-bb054",EscapeArea())~ EXIT
IF~~THEN REPLY @316 /*"I see. Farewell." */ DO~EscapeArea() ActionOverride("g-bb054",EscapeArea())~ EXIT
IF~~THEN REPLY @317 /*"Oh, that's what it's all about. I killed him." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD054.ikilledhim
IF~PartyHasItem("g-bbi135")~THEN REPLY @318 /*Show her Haer'Dalis' head. "Oh, you mean this?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD054.ikilledhim1
CHAIN IF~~THEN g-bbD054 g-bbD054.ikilledhim
@320 /*"You... You did what...?!" She starts to cry. "He trusted you! How could you?!" Suddenly, she lunges at you. */
END
IF~~THEN REPLY @322 /*Defend yourself. */ DO~Enemy() Help() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD054 g-bbD054.ikilledhim1
@324 /*Raelis throws her hands up in surprise and screams in horror. However, she quickly composes herself, shouts for help and starts casting a spell as her eyes fill with tears. */
END
IF~~THEN REPLY @326 /*Defend yourself. */ DO~ForceSpell([PC],WIZARD_CHROMATIC_ORB) Enemy() Help() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT