BEGIN g-bbD080
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD080 g-bbD080.start
@0 /*You see a young man wearing a fancy, wide-brimmed hat. He holds a notebook in one hand and in the other a goose feather, using its soft tip to tap his shoulder repeatedly. He seems lost in thoughts. */
END
IF~~THEN REPLY @2 /*"Greetings. What are you doing?" */ DO~~ + g-bbD080.A1
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD080 g-bbD080.start2
@5 /*The man seems lost in thoughts and does not pay any attention to you. */
END
IF~Global("G-poem","GLOBAL",0)~THEN REPLY @7 /*"Greetings. What are you doing?" */ DO~~ + g-bbD080.A1
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD080 g-bbD080.A1
@10 /*The man looks at you with a slightly vacant gaze. He sighs heavily. "I'm thinking. I'm working on a new poem, but I'm stuck. Maybe... Maybe you can help me? I'm looking for a rhyme for the word 'Hive'." */
END
IF~~THEN REPLY @12 /*"Maybe try 'dive'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.C1
IF~~THEN REPLY @13 /*"Maybe try 'five'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.D1
IF~~THEN REPLY @14 /*"Maybe try 'thrive'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.E1
IF~~THEN REPLY @15 /*"Maybe try 'blive'?" */ DO~~ + g-bbD080.F1
IF~~THEN REPLY @16 /*"Sorry, nothing comes to mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD080 g-bbD080.C1
@18 /*The man nods vigorously, then spends a moment scribbling in silence. When he finishes the last line, he grins with satisfaction. He clears his throat and reads aloud his new magnum opus: */
=@19 /*"There was an old drunk in the Hive
Who only when sloshed felt alive.
Into the river he fell,
Where he sank like a bell.
That was his final one-way dive. " */
END
IF~~THEN REPLY @21 /*"Bravo. I'm sure it will be a great success. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @22 /*"This is the worst crap I've ever heard in my life. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD080 g-bbD080.D1
@24 /*The man nods vigorously, then spends a moment scribbling in silence. When he finishes the last line, he grins with satisfaction. He clears his throat and reads aloud his new magnum opus: */
=@25 /*"There was a man in the Hive
Who with his wife did not jive.
She told him to go,
But he said: 'No,
I'd rather give you a high-five.'" */
END
IF~~THEN REPLY @27 /*"Bravo. I'm sure it will be a great success. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @28 /*"This is the worst crap I've ever heard in my life. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD080 g-bbD080.E1
@30 /*The man nods vigorously, then spends a moment scribbling in silence. When he finishes the last line, he grins with satisfaction. He clears his throat and reads aloud his new magnum opus: */
=@31 /*"There lived a Fated in the Hive
Who did nothing but connive.
He got rich
In the Ditch. 
In Sigil, this is how you thrive!" */
END
IF~~THEN REPLY @33 /*"Bravo. I'm sure it will be a great success. Goodbye." */ DO~AddexperienceParty(10000)~ EXIT
IF~~THEN REPLY @34 /*"This is the worst crap I've ever heard in my life. Goodbye." */ DO~AddexperienceParty(10000)~ EXIT
CHAIN IF~~THEN g-bbD080 g-bbD080.F1
@36 /*"Hmmm, no, that won't work... 'Hive'-'blive'? What language is that, it's not common?" He ponders. "You really can't think of anything else...?" */
END
IF~~THEN REPLY @38 /*"Maybe try 'dive'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.C1
IF~~THEN REPLY @39 /*"Maybe try 'five'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.D1
IF~~THEN REPLY @40 /*"Maybe try 'thrive'?" */ DO~SetGlobal("G-poem","GLOBAL",1)~ + g-bbD080.E1
IF~~THEN REPLY @41 /*"Sorry, nothing comes to mind. Goodbye." */ DO~~ EXIT