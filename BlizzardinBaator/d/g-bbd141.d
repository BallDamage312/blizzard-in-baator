BEGIN g-bbD141
CHAIN IF~NumTimesTalkedTo(0) !Dead("g-bb017")~THEN g-bbD141 g-bbD141.start1
@0 /*This is the man who was arguing with the bariaur. He is clad in armor studded with spikes, including a helmet of the same design. He is missing one sleeve, and he is wearing leather gloves. */
=@1 /*"I don't have time. Sorry." */
END
IF~~THEN REPLY @3 /*"I have some questions." */ DO~~ + g-bbD141.questions0
IF~CheckStatGT(Protagonist,11,CHR)~THEN REPLY @4 /*"Greetings. I've noticed it was about a faction conflict. The cause of the Doomguard is close to my heart, maybe I could help?" */ DO~~ + g-bbD141.questions
IF~CheckStatLT(Protagonist,12,CHR)~THEN REPLY @5 /*"Greetings. I've noticed it was about a faction conflict. The cause of the Doomguard is close to my heart, maybe I could help?" */ DO~~ + g-bbD141.questions0
IF~~THEN REPLY @6 /*Leave. */ DO~~ EXIT
CHAIN IF~OR(2) !Dead("g-bb017") Global("G-hitmanD","GLOBAL",3)~THEN g-bbD141 g-bbD141.start2
@8 /*"I don't have time. Sorry." */
END
IF~~THEN REPLY @10 /*"I have some questions." */ DO~~ + g-bbD141.questions0
IF~CheckStatGT(Protagonist,11,CHR)~THEN REPLY @11 /*"Greetings. I've noticed it was about a faction conflict. The cause of the Doomguard is close to my heart, maybe I could help?" */ DO~~ + g-bbD141.questions
IF~CheckStatLT(Protagonist,12,CHR)~THEN REPLY @12 /*"Greetings. I've noticed it was about a faction conflict. The cause of the Doomguard is close to my heart, maybe I could help?" */ DO~~ + g-bbD141.questions0
IF~~THEN REPLY @13 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-hitmanD","GLOBAL",4)~THEN g-bbD141 g-bbD141.start3
@15 /*The man is packing his things and looking around nervously. "I *really* don't have time for you right now. Don't bother me." */
END
IF~~THEN REPLY @17 /*"What is going on exactly?" */ DO~~ + g-bbD141.haedeadreact
IF~~THEN REPLY @18 /*Leave. */ DO~ActionOverride("g-bb141",EscapeArea())~ EXIT
CHAIN IF~~THEN g-bbD141 g-bbD141.questions0
@20 /*"Unfortunately, I do not have time for you." */
END
IF~~THEN REPLY @22 /*"Never mind then, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD141 g-bbD141.questions
@24 /*"I'd love to help, but I really shouldn't talk to you about this." */
END
IF~~THEN REPLY @26 /*"Never mind then, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD141 g-bbD141.haedeadreact
@28 /*"That's not your business, cutter." */
END
IF~~THEN REPLY @30 /*"Good luck. Farewell." */ DO~ActionOverride("g-bb141",EscapeArea())~ EXIT
IF~~THEN REPLY @31 /*"Don't you mean Haer'Dalis's death? This is very much my business. I killed him." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD141.ikilledhim
CHAIN IF~~THEN g-bbD141 g-bbD141.ikilledhim
@33 /*"Y-you? Doomguard, to arms!" */
END
IF~~THEN REPLY @35 /*Defend yourself. */ DO~Enemy() Help() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT