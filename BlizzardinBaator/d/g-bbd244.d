BEGIN g-bbD244
CHAIN IF~True()~THEN g-bbD244 g-bbD244.start
@0 /*A little boy stands near the benches, sobbing. None of the adults nearby seem to care. */
END
IF~Global("G-rattemplequest","GLOBAL",2) GlobalGT("G-kidscatter","GLOBAL",0)~THEN REPLY @2 /*"Hey. Do you know anything about a secret wererat temple? I hear some kids have found it." */ DO~~ + g-bbD244.rattemplealt
IF~Global("G-rattemplequest","GLOBAL",2) Global("G-kidscatter","GLOBAL",0)~THEN REPLY @3 /*"Hey. Do you know anything about a secret wererat temple? I hear some kids have found it." */ DO~~ + g-bbD244.rattemple
IF~Global("G-kidscatter","GLOBAL",0)~THEN REPLY @4 /*"What's wrong? Are you lost?" */ DO~~ + g-bbD244.cont
IF~GlobalGT("G-kidscatter","GLOBAL",0)~THEN REPLY @5 /*"What's wrong? Are you lost?" */ DO~~ + g-bbD244.contalt
IF~~THEN REPLY @6 /*Ignore the boy. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD244 g-bbD244.cont
@8 /*The boy points to a nearby abishai who is wandering around with an unsteady gait. "They don't want to play with me!" */
END
IF~~THEN REPLY @10 /*"Fiends? Isn't that a good thing?" */ DO~~ + g-bbD244.cont2
CHAIN IF~~THEN g-bbD244 g-bbD244.cont2
@12 /*"Not fiends! You don't understand nothing!" he shouts angrily and delivers a gentle kick to your calf. Then he runs off, still sobbing. */
END
IF~~THEN REPLY @14 /*"Ouch." */ DO~EscapeArea()~ EXIT
IF~GlobalLT("GOOD","GLOBAL",0) CheckStatGT(Protagonist,16,DEX)~THEN REPLY @15 /*Kick the little shitling in return. */ DO~DisplayString(Myself,@100204) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD244 g-bbD244.contalt
@17 /*"No. You-you chased the guys away. I have no one to play with," the boy explains, crying. "I have to find them now!" he shouts angrily and gives you a gentle kick in the calf before running off. */
END
IF~~THEN REPLY @19 /*"Ouch." */ DO~EscapeArea()~ EXIT
IF~GlobalLT("GOOD","GLOBAL",0) CheckStatGT(Protagonist,16,DEX)~THEN REPLY @20 /*Kick the little shitling in return. */ DO~DisplayString(Myself,@100204) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD244 g-bbD244.rattemple
@22 /*"I'm too little, the guys won't let me see!" The boy angrily points behind you. When you turn around, you see that he is pointing at an awkwardly moving abishai. The boy then runs away. */
END
IF~~THEN REPLY @24 /*Leave. */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD244 g-bbD244.rattemplealt
@26 /*"No. You-you chased the guys away. They knew," the boy explains, crying. "I have to find them now!"he shouts angrily and gives you a gentle kick in the calf before running off. */
END
IF~~THEN REPLY @28 /*"Ouch." */ DO~EscapeArea()~ EXIT
IF~GlobalLT("GOOD","GLOBAL",0) CheckStatGT(Protagonist,16,DEX)~THEN REPLY @29 /*Kick the little shitling in return. */ DO~DisplayString(Myself,@100204) EscapeArea()~ EXIT