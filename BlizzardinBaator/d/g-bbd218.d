BEGIN g-bbD218
CHAIN IF~Global("g-portcut1","GLOBAL",0)~THEN g-bbD218 g-bbD218.start
@0 /*You do not always feel like talking to fiends, but this one leaves you no choice. A huge lizard-like devil with red scales and powerful wings blocks your path, menacingly flaring his nostrils. The malevolent glint in his eyes and the numerous scars on his body suggest a violent past. He sniffs you loudly and ostentatiously from left to right, then contemptuously snorts at you. When he speaks, his voice sounds as if it comes from somewhere deep within the bowels of the earth. His silent companion just stares at you. */
=@1 /*"You... You stink of Tergush'tekhn. Talk, worm. Where is he and what did he want from you? Tell us the truth or die in agony." */
END
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @3 /*Lie: "Oh, you mean the red abishai I just killed by the Gatehouse? He's dust now." */ DO~AddexperienceParty(20000) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD218.override
IF~~THEN REPLY @4 /*"Who do you think you are, threatening me?" */ DO~~ + g-bbD218.A1
IF~~THEN REPLY @5 /*"Why do you care?" */ DO~~ + g-bbD218.B1
IF~!CheckStatGT(Protagonist,19,CHR)~THEN REPLY @6 /*Lie: "Relax. We had a brief chat. There's nothing between us." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD218.C1
IF~~THEN REPLY @7 /*"He gave me a task. So what?" */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD218.D1
IF~~THEN REPLY @8 /*"Get lost, berk. I'm not telling you anything." */ DO~~ + g-bbD218.E1
CHAIN IF~Global("g-portcut1","GLOBAL",1)~THEN g-bbD218 g-bbD218.altstart
@10 /*On the pier, a group of red abishai can be seen observing each boat as it docks at the Hive Port. As you disembark, they point at you with their claws. */
=@11 /*"There he is, the rotten mortal! Get him!" */
END
IF~~THEN REPLY @13 /*Defend yourself. */ DO~Enemy() SetGlobal("g-bssn_gatespawn","GLOBAL",1) SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.A1
@15 /*A wisp of smoke escapes from the abishai's nostrils as the ashes of his rage scorch the air between you. "You shall not defile my name, servant of Tergush. Prepare to die for your arrogance. I will get my answers from your corpse." */
END
IF~~THEN REPLY @17 /*Defend yourself. */ DO~Enemy() SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.B1
@19 /*The abishai narrows his eyes, transforming his gaze into two slivers of cold, calculating malice. "It's none of your business, mortal. My affairs are my own. Whatever you have to do with him, you must die. Your arrogance makes my decision easier. I will get my answers from your corpse." */
END
IF~~THEN REPLY @21 /*Defend yourself. */ DO~Enemy() SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.C1
@23 /*The abishai looks at you intently, as if trying to read your soul. His tail swishes irritably through the air. "You lie, human filth. Did you think you could deceive me? You deserve to die for the very assumption. I will get my answers from your corpse." */
END
IF~~THEN REPLY @25 /*Defend yourself. */ DO~Enemy() SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.D1
@27 /*The abishai's mouth stretches into a nasty smile. "Honesty is a rare trait among mortals. As a token of my gratitude, I will kill you quickly and get the remaining answers from your corpse." */
END
IF~~THEN REPLY @29 /*Defend yourself. */ DO~Enemy() SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.E1
@31 /*You try to get past him, but the abishai blocks your way. A scowl of agitation stretches across his face. "How dare you, mortal! You will die for this insult!" */
END
IF~~THEN REPLY @33 /*Defend yourself. */ DO~Enemy() SetGlobal("g-biessassin","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD218 g-bbD218.override
@35 /*"Gatehouse?!" The fiend spreads his wings and begins to fly away. His companion continues to stare at you for a moment, as if he was not entirely convinced by your words, but eventually follows suit. */
END
IF~~THEN REPLY @37 /*"Goodbye." */ DO~SetGlobal("g-biessassin","GLOBAL",7)~ EXIT