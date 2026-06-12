BEGIN g-bbD069
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD069 g-bbD069.start
@0 /*You see a man of indeterminate age. He has a face that could just as easily belong to a twenty-year-old as to a fifty-year-old. The worn beret on his head and the eclectic clothing in which nothing matches don't help you gauge the length of his existence so far. */
=@1 /*The man sits on a large piece of rubble, staring blankly into space. In his hand is a stale piece of bread, which he chews calmly like a cow in a pasture. He does not react in any way to your appearance. */
END
IF~~THEN REPLY @3 /*"Hello. What are you doing?" */ DO~~ + g-bbD069.A1
IF~~THEN REPLY @4 /*"Hmm, enjoy your meal. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @5 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD069 g-bbD069.start2
@7 /*This man is sitting on a large piece of rubble, staring blankly into space. In his hand is a stale piece of bread, which he chews calmly like a cow in a pasture. He does not react in any way to your appearance. */
END
IF~~THEN REPLY @9 /*"Hello. What are you doing here?" */ DO~~ + g-bbD069.A1
IF~~THEN REPLY @10 /*"Hmm, enjoy your meal. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @11 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD069 g-bbD069.A1
@13 /*The man stares at you with a gaze untainted by reason. "Huh?" */
END
IF~~THEN REPLY @15 /*"I'm asking you: what are you doing here?" */ DO~~ + g-bbD069.C1
IF~~THEN REPLY @16 /*"Nevermind. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @17 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD069 g-bbD069.C1
@19 /*The man continues to chew his food calmly, showing no signs of comprehension. "Huh?" */
END
IF~~THEN REPLY @21 /*"You're not the sharpest tool in the shed, are you?" */ DO~~ + g-bbD069.E1
IF~~THEN REPLY @22 /*"I don't have the time nor patience for this. Bye." */ DO~~ EXIT
IF~~THEN REPLY @23 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD069 g-bbD069.E1
@25 /*The man tilts his head slightly like a dog that does not understand what his master is saying. "Huh?" */
END
IF~~THEN REPLY @27 /*"You know what, nevermind. Enjoy your meal. Bye." */ DO~~ EXIT
IF~~THEN REPLY @28 /*"Huh?" */ DO~~ + g-bbD069.F1
IF~~THEN REPLY @29 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD069 g-bbD069.F1
@31 /*"You should have said that at the beginning!" He hands you a piece of parchment and leaves. */
END
IF~~THEN REPLY @33 /*"Huh...?" */ DO~GiveItemCreate("aclue",Protagonist,1,1,0)~ EXIT