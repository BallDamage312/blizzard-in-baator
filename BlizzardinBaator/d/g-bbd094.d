BEGIN g-bbD094
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD094 g-bbD094.start
@0 /*It is hard for you to describe the person in front of you. You think it is a woman, but you cannot be sure. There is something... translucent about her. As if her facial features and figure were not fully drawn by the brush of creation. You cannot name a single characteristic of her, or describe her attire, or even attempt to guess what race she might belong to. The being looks at you calmly, as if waiting for something. */
END
IF~~THEN REPLY @2 /*"Hello. Who are you?" */ DO~SetGlobal("G-knowecho","GLOBAL",1)~ + g-bbD094.A1
IF~~THEN REPLY @3 /*"I don't have time for this." */ DO~SetGlobal("G-knowecho","GLOBAL",1)
~ + g-bbD094.B1
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD094 g-bbD094.start2
@5 /*The being looks at you calmly, as if waiting for something. */
END
IF~~THEN REPLY @7 /*"Hello. Who are you?" */ DO~~ + g-bbD094.A1
IF~~THEN REPLY @8 /*"I don't have time for this." */ DO~~ + g-bbD094.B1
IF~~THEN REPLY @9 /*"Waste of time. Goodbye." */ DO~~ + g-bbD094.H1
CHAIN IF~~THEN g-bbD094 g-bbD094.A1
@11 /*"Hello. Who are you?" The woman answers you in a melodic voice. She is rocking slightly back and forth as if moved by invisible ocean waves. She continues to stare at you. Her face shows no emotion. */
END
IF~~THEN REPLY @13 /*"I asked first. Who are you?"  */ DO~~ + g-bbD094.C1
IF~~THEN REPLY @14 /*"Stop mocking me!" */ DO~~ + g-bbD094.D1
IF~~THEN REPLY @15 /*"Waste of time. Goodbye." */ DO~~ + g-bbD094.H1
CHAIN IF~~THEN g-bbD094 g-bbD094.B1
@17 /*"I don't have time for this." The woman answers you in a melodic voice. She is rocking slightly back and forth as if moved by invisible ocean waves. She continues to stare at you. Her face shows no emotion. */
END
IF~~THEN REPLY @19 /*"Stop mocking me!" */ DO~~ + g-bbD094.D1
IF~~THEN REPLY @20 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.C1
@22 /*"I asked first. Who are you?" The woman repeats your words, but she does not react in any other way. She does not seem to be trying to spite you. She looks at you dispassionately. */
END
IF~~THEN REPLY @24 /*"Well, at this rate we're not going to have a conversation, are we?" */ DO~~ + g-bbD094.F1
IF~~THEN REPLY @25 /*"Stop it! It's really annoying!" */ DO~~ + g-bbD094.G1
IF~~THEN REPLY @26 /*"I've had enough of you. Goodbye." */ DO~~ + g-bbD094.I1
IF~~THEN REPLY @27 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.D1
@29 /*"Stop mocking me!" For the first time you see emotion showing on the woman's face. You recognize her sadness, but it quickly dissolves into the nothingness of the void.  */
END
IF~~THEN REPLY @31 /*"That does it. I think I'll simply kill you." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-3) IncrementGlobal("LAW","GLOBAL",-3) ~ EXIT
IF~~THEN REPLY @32 /*"I don't know what's going on here, but I've had enough. Goodbye." */ DO~~ + g-bbD094.I1
IF~~THEN REPLY @33 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.F1
@35 /*"Well, at this rate we're not going to have a conversation, are we?" For the first time you see emotion showing on the woman's face. You recognize her sadness, but it quickly dissolves into the nothingness of the void.  */
END
IF~~THEN REPLY @37 /*"I'm sorry. Maybe someday it will work out. Goodbye." */ DO~~ + g-bbD094.J1
IF~~THEN REPLY @38 /*"I have nothing to say to you anyway. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @39 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.G1
@41 /*"Stop it! It's really annoying!" For the first time you see emotion showing on the woman's face. You recognize her sadness, but it quickly dissolves into the nothingness of the void.  */
END
IF~~THEN REPLY @43 /*"I'm sorry. Maybe someday it will work out. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @44 /*"I have nothing to say to you anyway. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @45 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.H1
@47 /*"Waste of time. Goodbye." */
END
IF~~THEN REPLY @49 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.I1
@51 /*"I don't know what's going on here, but I've had enough. Goodbye." */
END
IF~~THEN REPLY @53 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.J1
@55 /*"I'm sorry. Maybe someday it will work out. Goodbye." */
END
IF~~THEN REPLY @57 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD094 g-bbD094.K1
@59 /*"I have nothing to say to you anyway. Goodbye." */
END
IF~~THEN REPLY @61 /*Leave without a word. */ DO~~ EXIT