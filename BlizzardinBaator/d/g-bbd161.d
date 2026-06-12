BEGIN g-bbD161
CHAIN IF~NumTimesTalkedTo(0) !Global("G-narthulyagnobrawl","GLOBAL",2)~THEN g-bbD161 g-bbD161.start
@0 /*This large, segmented fiend is wandering around the upper floor of the Styx Oarsman, looking for something... Trouble, perhaps. He sports many arms and exudes a general air of derangement, and you conclude he's probably of the Abyss. Unlike the other patrons, he is not partaking in drinks, conversations, or any other tavern activities. When he notices you are looking at him, he approaches rapidly, stopping right in front of you and blowing a stream of rancid, hot air into your face from his deformed nostrils. */
=@1 /*"I am the patient architect of despair.
My palace is strung from my own entrails,
And I sit at its heart, a wretch with even knives.
The careless stumble into my tomb,
And I drink their marrow drop by drop,
Leaving only hollow husks to decorate my halls.

Tell me, what am I?" */
END
IF~Global("G-ActualCannibal","GLOBAL",1)~THEN REPLY @3 /*Words try to climb to the front of your mouth: "I don't care. It sounds... delicious." */ DO~SetGlobal("G-mawfriend","GLOBAL",1)~ + g-bbD161.cannibal
IF~~THEN REPLY @4 /*"A vampire." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @5 /*"A demon." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @6 /*"A coffin." */ DO~~ + g-bbD161.wrong
IF~!CheckStatGT(Protagonist,15,INT)~THEN REPLY @7 /*"A spider." */ DO~~ + g-bbD161.right
IF~~THEN REPLY @8 /*"A siren." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @9 /*"A grave." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @10 /*"Death itself." */ DO~~ + g-bbD161.wrong
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @11 /*The correct answer is obvious. "A spider." */ DO~~ + g-bbD161.right
IF~~THEN REPLY @12 /*"A barmy fiend is what you are." */ DO~Enemy()~ EXIT
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @13 /*Do not answer. Stare down the fiend. */ DO~~ + g-bbD161.stareS
IF~!CheckStatGT(Protagonist,19,CHR)~THEN REPLY @14 /*Do not answer. Stare down the fiend. */ DO~~ + g-bbD161.stareF
IF~~THEN REPLY @15 /*Do not answer. Back away. */ DO~~ + g-bbD161.leave3
CHAIN IF~Global("G-narthulyagnobrawl","GLOBAL",2)~THEN g-bbD161 g-bbD161.start2
@17 /*"Delicious. That was exhilarating. I better leave before all the others come running. You are a truly demonic being. Have fun!" He starts laughing maniacally and slowly walks away. */
END
IF~~THEN REPLY @19 /*"Thanks..." */ DO~PlaySound("ABYSS05") StickySinisterPoof("S213HRHD",Myself,1) DestroySelf()~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.cannibal
@21 /*The strange fiend sniffs the air around you and smiles viciously. "Ah, this one is different. Not prey, but a predator. How interesting... I am Narthuul Hollow Maw, from Thanatos, servant to my beloved queen, Kiaransalee. Pleasure to meet you." */
END
IF~~THEN REPLY @23 /*"Likewise. I don't remember my name, though." */ DO~SetGlobal("G-knowThanatos","GLOBAL",1) SetGlobal("G-knowKiaransalee","GLOBAL",1)~ + g-bbD161.q3
IF~~THEN REPLY @24 /*Lie: "Likewise. I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-knowThanatos","GLOBAL",1) SetGlobal("G-knowKiaransalee","GLOBAL",1)~ + g-bbD161.q3
CHAIN IF~~THEN g-bbD161 g-bbD161.q3
@26 /*"So, scarred creature. What brings you here? This pitiful abode is for fiends. People like you usually come here to serve as entertainment... or a meal." The creature's many appendages, which you cannot easily divide into arms and legs, move around you unnervingly. He licks his floppy lips, as if looking at a succulent meal.   */
END
IF~~THEN REPLY @28 /*"I have some questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @29 /*"I am just passing through." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.leave
@31 /*"What a coincidence, fleshy one. Me too. I thought I would devour one more Sigilian and make my way home to my queen. You were to be my victim, but you seem not only fiendish enough to be spared, but also very stringy. Probably foul in taste. I guess it is time for me to leave as well." */
END
IF~~THEN REPLY @33 /*"In that case, I have some questions before you go." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @34 /*"Then be on your merry way." */ DO~PlaySound("ABYSS05")  StickySinisterPoof("S213HRHD",Myself,1) DestroySelf()~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.q
@36 /*"Maybe I will answer. Maybe you will regret that you asked. Let us find out." The fiend's almost dog-like face breaks into a wicked grin. */
END
IF~~THEN REPLY @38 /*"Tell me about the marraenoloth." */ DO~~ + g-bbD161.mar
IF~~THEN REPLY @39 /*"Tell me about the baernaloth." */ DO~~ + g-bbD161.baer
IF~Global("G-knowLilitu","GLOBAL",0) Global("g-knowBeatha","GLOBAL",1)~THEN REPLY @40 /*"Tell me about the jeweler." */ DO~SetGlobal("G-knowLilitu","GLOBAL",1)~ + g-bbD161.beatha
IF~Global("G-knowLilitu","GLOBAL",1)~THEN REPLY @41 /*"Tell me about the lilitu jeweler." */ DO~~ + g-bbD161.beatha
IF~Global("G-knowLilitu","GLOBAL",2) Global("G-MawLie","GLOBAL",0)~THEN REPLY @42 /*"Tell me about the lilitu jeweler who used to sell her wares here." */ DO~~ + g-bbD161.beatha2
IF~Global("G-MawElvra","GLOBAL",0)~THEN REPLY @44 /*"Tell me about Elvra Syne." */ DO~IncrementGlobal("G-MawElvra","GLOBAL",1)~ + g-bbD161.elvra
IF~Global("G-MawElvra","GLOBAL",1)~THEN REPLY @45 /*"Tell me again about Elvra Syne." */ DO~IncrementGlobal("G-MawElvra","GLOBAL",1)~ + g-bbD161.elvra1
IF~Global("G-MawElvra","GLOBAL",2)~THEN REPLY @46 /*"Tell me ONE MORE time about Elvra Syne." */ DO~~ + g-bbD161.elvra2
IF~Global("G-knowThanatos","GLOBAL",0)~THEN REPLY @47 /*"Where do you come from?" */ DO~~ + g-bbD161.wherefrom
IF~Global("G-knowThanatos","GLOBAL",1) CheckStatGT(Protagonist,18,INT)~THEN REPLY @48 /*"Can you tell me more about Thanatos?" */ DO~~ + g-bbD161.thanatos1
IF~Global("G-knowQueen","GLOBAL",1) ~THEN REPLY @50 /*"Who is your queen?" */ DO~~ + g-bbD161.kiaransalee
IF~Global("G-knowKiaransalee","GLOBAL",1) ~THEN REPLY @51 /*"Who is Kiaransalee?" */ DO~~ + g-bbD161.kiaransalee
IF~~THEN REPLY @52 /*"Don't take it the wrong way, but... what are you?" */ DO~~ + g-bbD161.abomination
IF~~THEN REPLY @53 /*"Actually, I've got nothing. Goodbye." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.right
@55 /*"This is unexpected. The food knows the answer. Maybe it is not food after all." He takes a long look at you. "You do not seem too fresh anyway. I would probably have to spit you right out. I am Narthuul Hollow Maw, and I am preparing to return to my queen. What is your name?" */
END
IF~~THEN REPLY @57 /*"I don't remember my name." */ DO~SetGlobal("G-knowQueen","GLOBAL",1) ~ + g-bbD161.q3
IF~~THEN REPLY @58 /*Lie: "I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-knowQueen","GLOBAL",1) ~ + g-bbD161.q3
CHAIN IF~~THEN g-bbD161 g-bbD161.wrong
@60 /*"Why, yes, mortal. You are correct. Close your eyes and I will give you your reward." Several of the fiend's many arms reach behind his trunk. You are not sure if he is grabbing something or preparing to take a swing at you. Before you can decide, his arms fly right towards your face. */
END
IF~~THEN REPLY @62 /*Defend yourself. */ DO~Enemy()~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.stareS
@64 /*The fiend does not avert his eyes for a good while. As your gazes meet, time seems to come to a halt. It is as if two beams of energy met in the center point between your heads. The air almost palpably heats up. "How curious. The food shows defiance. Maybe it is not food after all," he says eventually, not breaking eye contact. "You do not seem too fresh anyway. I would probably have to spit you right out. I am Narthuul Hollow Maw, and I am preparing to return to my queen. What is your name?" */
END
IF~~THEN REPLY @66 /*"I don't remember my name." */ DO~SetGlobal("G-knowQueen","GLOBAL",1) SetGlobal("G-mawfriend","GLOBAL",1)~ + g-bbD161.q3
IF~~THEN REPLY @67 /*Lie: "I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-knowQueen","GLOBAL",1) SetGlobal("G-mawfriend","GLOBAL",1)~ + g-bbD161.q3
CHAIN IF~~THEN g-bbD161 g-bbD161.stareF
@69 /*The fiend does not avert his eyes for a good while. As your gazes meet, time seems to come to a halt. It is as if two beams of energy met in the center point between your heads. The air almost palpably heats up. Eventually, you sense that you are about to lose. The fiend is indomitable. You are forced to close your eyes for a split second, and when you open them againhem again, you see all of the fiend's appendages ready to strike you. */
END
IF~~THEN REPLY @71 /*Defend yourself. */ DO~Enemy()~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.mar
@73 /*"Bah. Yugoloths. They make me sick. And I already feel sick after eating some leper behind the Gatehouse. Spineless, worthless traitors and sellouts. This one here was robbed by some wererats. *WERERATS*. I would swallow such vermin whole before they could scurry away to their dark, dirty holes. And this one here? Pathetic city fiend." Narthuul spits on the floor. You realize that his spit immediately forms a solid, white coating on the deck of the ship. Better not step in it. */
END
IF~~THEN REPLY @75 /*"Yeah, that does sound pretty pathetic." */ DO~~ + g-bbD161.mara
IF~~THEN REPLY @76 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @77 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mara
@79 /*"I could take on any yugoloth, no problem... with my eyes closed, even. It is child's play." */
END
IF~~THEN REPLY @81 /*"Can you take on this marraenoloth?" */ DO~~ + g-bbD161.mara2a
IF~~THEN REPLY @82 /*"Can you take on this baernaloth?" */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.mara2b
IF~~THEN REPLY @83 /*"Can you take on this yagnoloth?" */ DO~~ + g-bbD161.mara2c
IF~~THEN REPLY @84 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @85 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mara2a
@87 /*"Sure I could! But he is friends with the owner. That would get me banished from the Oarsman, and it is my favorite joint in the Cage." */
END
IF~~THEN REPLY @89 /*"Can you take on this baernaloth?" */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.mara2b
IF~~THEN REPLY @90 /*"Can you take on this yagnoloth?" */ DO~~ + g-bbD161.mara2c
IF~~THEN REPLY @91 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @92 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mara2b
@94 /*"Of course I could, but we are in business with this one. It would be a bit rash and would likely ruin Kiaransalee's campaigns, both here and there." */
END
IF~~THEN REPLY @96 /*"Can you take on this marraenoloth?" */ DO~~ + g-bbD161.mara2a
IF~~THEN REPLY @97 /*"Can you take on this yagnoloth?" */ DO~~ + g-bbD161.mara2c
IF~~THEN REPLY @98 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @99 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mara2c
@101 /*"*This* yagnoloth? With pleasure. He seems unimportant enough. Watch this." Without further ado, the fiend disappears in a puff of green mist. */
END
IF~~THEN REPLY @103 /*Watch. */ DO~SetGlobal("G-narthulyagnobrawl","GLOBAL",1) AddexperienceParty(20000) IncrementGlobal("LAW","GLOBAL",-1) StartCutScene("g-brawl")  ~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.baer
@105 /*"Ugh. What a strange species. Some say they are yugoloths, others say they are not. And that lackey... that pet... of his is stranger still. Regardless, this one here is just a big weakling. Yes... that sums him up best.... He does have his uses though..." Narthuul sighs and falls silent, as if something were stopping him from continuing his rant. */
END
IF~~THEN REPLY @107 /*"What uses?" */ DO~~ + g-bbD161.baer2
IF~~THEN REPLY @108 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @109 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.baer2
@111 /*"My queen is in business with him. I would not want to speak against her allies." He seems somewhat saddened by this limitation. */
END
IF~~THEN REPLY @114 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @115 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.beatha
@117 /*"She is a lovely piece of work, that lilitu. She may be my favorite fiend here. She hates me, of course, with all her little black heart, which only makes me like her more." Narthuul sounds almost enamored. */
END
IF~~THEN REPLY @120 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @121 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.beatha2
@123 /*"She was a lovely piece of work, that lilitu. She may have been my favorite fiend here. She hated me, of course, with all her little black heart, which only made me like her more... It is a shame she left, I was going to..." He pauses and studies you very carefully. "Wait a second... Aren't you the berk she slaughtered before she ran?" */
END
IF~!CheckStatGT(Protagonist,17,CHR)~THEN REPLY @126 /*Lie: "No, I was... someplace else. Definitely." */ DO~IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD161.attack
IF~~THEN REPLY @127 /*"Yes. She's fierce indeed. Let me tell you..." */ DO~~ + g-bbD161.attack
CHAIN IF~~THEN g-bbD161 g-bbD161.lie
@129 /*"Oh. I guess it makes sense. If someone gets stabbed through the head, they rarely go on existing. It is a short route to the dead-book." The fiend relaxes... and so do you. */
END
IF~~THEN REPLY @131 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @132 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.attack
@134 /*The fiend looks at you as his breathing grows heavier. His eyes start glowing red as he is getting ready to strike. "YOU TOOK HER FROM ME!" He leaps toward you. */
END
IF~~THEN REPLY @136 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
IF~~THEN REPLY @137 /*"She's not dead. She killed *ME!*" */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
IF~~THEN REPLY @138 /*"Surely you can't be serious." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.elvra
@140 /*"Baatezu cockroach. A truly despicable creature. Just thinking about kocrachons makes me vomit." True to his word, he spews disgusting mucus on the wooden boards. They instantly start to sizzle and warp. */
==g-bbd121 IF ~NearbyDialog("g-bbd121")~ THEN @141 /*"Hey! Brother! Stop ruining our floor." */
==g-bbd161 IF ~NearbyDialog("g-bbd121")~ THEN @142 /*"Sorry, beautiful!" Narthuul shouts across the open space. He then leans towards you and whispers: "She loves me." */
END
IF~~THEN REPLY @144 /*"I'm sure. I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @145 /*"I'm sure. I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.elvra1
@147 /*"Why are you bringing him up again? A mere thought about him makes me want to bring up my dinner. They should all rot in my webs, they..." He bends over and releases another stream of acidic bile on the floor. */
==g-bbd121 IF ~NearbyDialog("g-bbd121")~ THEN @148 /*"I'm warning you! Tanar'ri blood runs thick, but not *that* thick." */
==g-bbd161 IF ~NearbyDialog("g-bbd121")~ THEN @149 /*"Of course, darling!" Narthuul proclaims mockingly. */
END
IF~~THEN REPLY @151 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @152 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.elvra2
@154 /*"No. No way. Those... *gulp* You little..." Narthuul spews a third wave of disgusting fluid. This one is big enough to burn a hole in the floor, which you can look straight through. Downstairs, you can see an abishai looking up with wide eyes, surprised by the sudden acid rain. */
==g-bbd121 IF ~NearbyDialog("g-bbd121")~ THEN @155 /*"Now you've done it, you worm!" */
END
IF~~THEN REPLY @157 /*"Uh oh..." */ DO~SetGlobal("G-narthulyagnobrawl","GLOBAL",3) StartCutScene("g-brawm")  ~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.wherefrom
@159 /*"I come from the best piking place in the multiverse. Lachrymosa in Thanatos, deep in the Abyss. I originally served Lolth in the Demonweb Pits, but she discarded me. My queen, Kiaransalee lifted me up and brought me to her layer." */
END
IF~~THEN REPLY @161 /*"Tell me about Lolth." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.lolth
IF~CheckStatGT(Protagonist,18,WIS) CheckStatGT(Protagonist,18,INT)~THEN REPLY @162 /*A distant memory is tingling at the back of your head. Allow it to surface. */ DO~FadeToColor([20.0],0) SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1)  SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.orcus
IF~~THEN REPLY @163 /*"Tell me about Kiaransalee." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.kiaransalee
IF~~THEN REPLY @164 /*"I have other questions." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.q
IF~~THEN REPLY @165 /*"I have nothing more to say. I'll be on my way." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.orcus
@167 /*You walk across the dusty expanse in what can only be described as an apocalyptic blizzard, but it is not ice and snow that whirls around you. It is pulverized bone. Immaterial glimpses of undead appear in front of you: some puny and weak, some gargantuan, and others powerful. The diversity is stunning. Eventually, the outline of a massive fortress comes into view, barely discernible in the bone fog.  [SPTR_01] */
=@168 /*Everlost, in Oblivion's End. The palace and realm of the pretender prince of demons. What was his name again? */
=@169 /*It is strange. You know that there was a name, but it is as if it was ripped from your memory. At the same time, with your memory already so scrambled, you feel as if it is still there, somewhere. Somehow. Impossibly. */
END
IF~~THEN REPLY @171 /*It is not worth it. Let the name go. */ DO~~ + g-bbD161.orcus3
IF~CheckStatGT(Protagonist,20,WIS) CheckStatGT(Protagonist,20,INT)~THEN REPLY @172 /*Focus on the lost name with all your might. */ DO~AddexperienceParty(100000)~ + g-bbD161.orcus2
CHAIN IF~~THEN g-bbD161 g-bbD161.orcus2
@174 /*Yes. It is there. It had been waiting in the broken depths of your subconscious. Somehow, it feels dangerous to try to recall it. You are now aware of the concept, but the letters themselves seem to resist being pulled to the surface. You calm yourself and attempt to extract them.
O. There it is, something is happening.
R. A shiver travels down your spine.
C. This suddenly feels like grinding against the cogs of the planes themselves.
U.
Will there be consequences?

Surely not. He is gone. He is...

S.

*ORCUS*.  [SPTR_01] */
END
IF~~THEN REPLY @176 /*Come back. */ DO~FadeFromColor([20.0],0) SetGlobal("G-knowOrcus","GLOBAL",1) ~ JOURNAL @10013 + g-bbD161.orcus3
CHAIN IF~~THEN g-bbD161 g-bbD161.orcus3
@178 /*"You still here, gummy man? Got bored of talking to old Hollow Maw?" */
END
IF~Global("G-knowOrcus","GLOBAL",1) ~THEN REPLY @180 /*"I... thought that Thanatos was ruled by... *Orcus*?" */ DO~~ + g-bbD161.orcus4
IF~~THEN REPLY @181 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @182 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.orcus4
@184 /*The fiend's eyes grow large. He seems deeply offended. "What? Who is Orcus? Kiaransalee has always been the rightful ruler of Thanatos. What is this heresy?!" Narthuul looks almost surprised, as if he himself was not sure why the offense was so grave, yet he is obviously on the verge of losing control. */
END
IF~~THEN REPLY @186 /*"Sorry. I don't know what came over me." */ DO~~ + g-bbD161.attack2
IF~~THEN REPLY @187 /*"Sorry. I have some other questions." */ DO~~ + g-bbD161.attack2
IF~~THEN REPLY @188 /*"Sorry. I have nothing more to say, I'll be on my way." */ DO~~ + g-bbD161.attack2
CHAIN IF~~THEN g-bbD161 g-bbD161.attack2
@190 /*The fiend glares at you as his breathing grows heavier. His eyes glow red as he is getting ready to strike. "Blasphemous swine!" He leaps toward you. */
END
IF~~THEN REPLY @192 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.lolth
@194 /*"Ah, the spider queen." He spits, leaving yet another chunk of spiderweb on the floor. Looking around the tavern, you realize that decimating the deck of this ship must be Narthuul's personal mission. "What an absolute bitch. She was using me for decades, sending me to Prime Material worlds to mate with her detestable priestesses. But when I went off and did my own thing *one time*, that was all it took for her to turn me into this abomination. Whore." */
END
IF~~THEN REPLY @196 /*"You had to mate with priestesses?" */ DO~~ + g-bbD161.mate
IF~~THEN REPLY @197 /*"Abomination?" */ DO~~ + g-bbD161.abomination
IF~~THEN REPLY @198 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @199 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mate
@201 /*"Whenever a priestess of Lolth gets ordained to the status of a high priestess, one of the rites of passage is to mate with a glabrezu and give birth to a draegloth. Half-drow, half-glabrezu." */
END
IF~~THEN REPLY @203 /*"And what are you now?" */ DO~~ + g-bbD161.abomination
IF~~THEN REPLY @204 /*"That's horrible." */ DO~~ + g-bbD161.mate2
IF~~THEN REPLY @205 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @206 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.mate2
@208 /*"I know! And to think those mixed-blood wretches consider themselves equal to the tanar'ri!" He snorts, getting ready to spit on the floor some more. */
==g-bbd121 IF ~NearbyDialog("g-bbd121")~ THEN @209 /*The marilith bartender is watching Narthuul very carefully. */
END
IF~~THEN REPLY @211 /*"And what are you now?" */ DO~~ + g-bbD161.abomination
IF~~THEN REPLY @213 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @214 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.abomination
@216 /*"When a mortal crosses Lolth's will, she turns them into a drider, a half-drow, half-spider abomination. Apparently, if a tanar'ri crosses her will, she will do the same... I used to be a glabrezu. You could say that I am now one of a kind." He lifts his appendages to look at them and growls in frustration. "I do not like my form." */
END
IF~Global("g-knowKiaransalee","GLOBAL",1)~THEN REPLY @218 /*"Could your Kiaransalee turn you back into a glabrezu?" */ DO~SetGlobal("G-knowLolth","GLOBAL",1) ~ + g-bbD161.abomination2
IF~~THEN REPLY @219 /*"I have other questions." */ DO~SetGlobal("G-knowLolth","GLOBAL",1) ~ + g-bbD161.q
IF~~THEN REPLY @220 /*"I have nothing more to say. I'll be on my way." */ DO~SetGlobal("G-knowLolth","GLOBAL",1) ~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.abomination2
@222 /*"She will! I have to serve under her for a couple more years and she will do it. She promised." The fiend smiles creepily. */
END
IF~~THEN REPLY @224 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @225 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.thanatos1
@227 /*"Thanatos lies deep in the Abyss. The idiots from this sorry excuse of a town say it is layer 113, but what do they know? It is one of the best layers, with many cities and a *lot* of undead. Even Sigil's own Dusties have an outpost out there, Galendure Citadel in the city of Vadrian. I reside in the magnificent Forbidden Citadel, built atop a colossal bust of our beautiful queen, Kiaransalee." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @228 /*"I know this layer. It's as cold as it is bleak, ever rotting away." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @229 /*"A colossal bust of a beautiful goddess? Chief, we should definitely visit after your business is concluded. That is... if there is an 'after'..." */
==g-bbd161 @230 /*"It is... beautiful..." The demon cannot cry, but it feels like the memory of home almost brings him to tears... or his equivalent of them, at least. */
END
IF~CheckStatGT(Protagonist,18,WIS) CheckStatGT(Protagonist,18,INT)~THEN REPLY @232 /*A distant memory is tingling at the back of your head. Allow it to surface. */ DO~FadeToColor([20.0],0) SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.orcus
IF~~THEN REPLY @233 /*"Tell me about Kiaransalee." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.kiaransalee
IF~~THEN REPLY @234 /*"I have other questions." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.q
IF~~THEN REPLY @235 /*"I have nothing more to say. I'll be on my way." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1) SetGlobal("G-knowLolth","GLOBAL",1) SetGlobal("G-knowThanatos","GLOBAL",1)~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.kiaransalee
@237 /*"My avenger queen is known by many titles. The Lady of the Dead. The Vengeful Banshee. The Pitiless Dowager. She is the Dark Seldarine goddess of undeath, as beautiful as she is maniacal. Her ascension to divinity is the most beautiful tale in the planes, and one day, she will rule over all things. All shall quiver under the threat of her claws. Her holy symbol will hang over every city and her name will be on everyone's rotting lips." */
END
IF~~THEN REPLY @239 /*"What is the story of her ascension?" */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.ascend
IF~~THEN REPLY @240 /*"I really don't think this will happen. I *hope* not, anyway." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.attack2
IF~~THEN REPLY @241 /*"I have other questions." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.q
IF~~THEN REPLY @242 /*"I have nothing more to say. I'll be on my way." */ DO~SetGlobal("g-knowKiaransalee","GLOBAL",1)~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.leave3
@245 /*"Nooo, no, no. You answer me or you die, mortal. What am I?" */
END
IF~Global("G-ActualCannibal","GLOBAL",1)~THEN REPLY @247 /*Words try to climb to the front of your mouth: "I don't care. It sounds... delicious." */ DO~SetGlobal("G-mawfriend","GLOBAL",1)~ + g-bbD161.cannibal
IF~~THEN REPLY @248 /*"A vampire." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @249 /*"A demon." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @250 /*"A coffin." */ DO~~ + g-bbD161.wrong
IF~!CheckStatGT(Protagonist,15,INT)~THEN REPLY @251 /*"A spider." */ DO~~ + g-bbD161.right
IF~~THEN REPLY @252 /*"A siren." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @253 /*"A grave." */ DO~~ + g-bbD161.wrong
IF~~THEN REPLY @254 /*"Death itself." */ DO~~ + g-bbD161.wrong
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @255 /*The correct answer is obvious. "A spider." */ DO~~ + g-bbD161.right
IF~~THEN REPLY @256 /*"A barmy fiend is what you are." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @257 /*Do not answer. Stare down the fiend. */ DO~~ + g-bbD161.stareS
IF~!CheckStatGT(Protagonist,19,CHR)~THEN REPLY @258 /*Do not answer. Stare down the fiend. */ DO~~ + g-bbD161.stareF
IF~~THEN REPLY @259 /*Attack the fiend. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD161 g-bbD161.ascend
@261 /*The fiend beams with joy at the opportunity to boast further about his goddess. "Of course! My queen was once a mere mortal like you... a dark elven necromancer queen on a world known as Threnody. A great wizard and scholar she was, but her treacherous husband, the king, banished her for her 'unholy' experiments with the undead." */
=@262 /*Narthuul groans with disgust at the very mention of the husband. "Fortunately, Lady Kiaransalee escaped with a small group of friends and continued her work in secret for centuries, achieving lichdom before raising an army of undead to exact her vengeance on the king and... well... everyone else. Threnody became a dead world, and the architect of this great transformation moved to the Abyss, taking her army with her. There, she deservingly clawed her way to dark divinity." */
END
IF~OR(4)
GlobalLT("GOOD","GLOBAL",0)
Global("G-ActualCannibal","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @264 /*"She sounds... amazing. Can I worship her?" */ DO~SetGlobal("G-kiaransaleefollower","GLOBAL",1)
SetGlobal("G-kiaransaleeworship","GLOBAL",100)~ + g-bbD161.worship
IF~~THEN REPLY @265 /*"She sounds like a mad crone and a mass murderer. Someone should put her down!" */ DO~~ + g-bbD161.attack2
IF~~THEN REPLY @266 /*"I have other questions." */ DO~~ + g-bbD161.q
IF~~THEN REPLY @267 /*"I have nothing more to say. I'll be on my way." */ DO~~ + g-bbD161.leave
CHAIN IF~~THEN g-bbD161 g-bbD161.worship
@269 /*Narthuul laughs, spraying acidic saliva over the floor. Some even gets on your skin with a slight sizzle. "Why not, mortal. She accepts everyone, and you already look quite undead." He extends one of his arms and places it on your head. "I accept you into the cult of the Lady of the Dead, Kiaransalee. May her black hand guide you in your quest to quench lives and bring vengeance to those who deserve it." */
END
IF~~THEN REPLY @271 /*"That's it?" */ DO~~ + g-bbD161.worship2
CHAIN IF~~THEN g-bbD161 g-bbD161.worship2
@273 /*"Well, it is not like you became her paladin or anything. It is more of a symbolic thing. Although..." Your new comrade in faith pauses and extends his arm, muttering something under his breath. After a second, a swirl of putrid, green energy appears around his claw. When it dissipates, you notice that he is holding a small bone wand topped with a strange skull. */
=@274 /*He hands it to you. "A traditional gift for new acolytes. An unholy symbol of our goddess queen, with some of her scriptures written on the handle. But most importantly, it can summon a faithful priestess of Kiaransalee to aid you in battle, wherever you are." */
=@275 /*"Now go, and spread death. There will come a day when your devotion will be put to a test. Be ready and you will receive her grace." */
END
IF~~THEN REPLY @277 /*"Thank you. I have other questions." */ DO~SetGlobal("G-mawfriend","GLOBAL",1) GiveItemCreate("g-bbi118",Protagonist,1,1,0) SetGlobal("G-kiaransaleequest","GLOBAL",1)~ SOLVED_JOURNAL @20289 + g-bbD161.q
IF~~THEN REPLY @278 /*"Thank you. I have nothing more to say. I'll be on my way." */ DO~SetGlobal("G-mawfriend","GLOBAL",1) GiveItemCreate("g-bbi118",Protagonist,1,1,0) SetGlobal("G-kiaransaleequest","GLOBAL",1)~ SOLVED_JOURNAL @20289 + g-bbD161.leave