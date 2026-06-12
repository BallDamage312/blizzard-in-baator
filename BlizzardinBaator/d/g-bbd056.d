BEGIN g-bbD056
CHAIN IF~NumTimesTalkedTo(0) !Dead("g-bb055")~THEN g-bbD056 g-bbD056.start1
@0 /*As you reach the end of the pier running through the Suicide Falls, you notice a couple arguing. The man, dressed in a Dustman's robes, is passionately gesticulating, while the woman accompanying him exudes an unwavering, almost perfect calm. */
==g-bbD055 @1 /*"Honey, come on..." From this position you cannot hear well what the man is saying to her. */
==g-bbD056 @2 /*When the woman notices you, she deliberately turns around to keep the conversation private. It seems clear she does not want anyone to intrude. */
==g-bbD055 @3 /*The man, however, looks as if he could use a second opinion. */
END
IF~~THEN REPLY @5 /*Approach the man and listen in on the conversation. */ DO~ActionOverride("G-bb055",StartDialogueNoSet("G-bbd055")) SetGlobal("g-sonnestart","GLOBAL",1)~ EXIT
IF~~THEN REPLY @6 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Dead("g-bb055") !Global("g-lovers4","GLOBAL",1)~THEN g-bbD056 g-bbD056.start2
@8 /*The couple seems to be arguing intensely about something. Despite this, there is no doubt they care about each other. But this has been going on for a while. You are faced with a dilemma - should you intervene, or should you leave them to their own devices? After all, it is none of your business. */
END
IF~~THEN REPLY @10 /*Approach the man and listen in on the conversation. */ DO~ActionOverride("G-bb055",StartDialogueNoSet("G-bbd055")) SetGlobal("g-sonnestart","GLOBAL",1)~ EXIT
IF~~THEN REPLY @11 /*Do not get involved and leave. */ DO~~ EXIT
CHAIN IF~Dead("g-bb055")~THEN g-bbD056 g-bbD056.startdead
@13 /*Sonne kneels over her dead lover, sobbing lightly.  */
=@14 /*"You.. you monster! He may have been difficult but you didn't need to carve him up like this!" She stands up and runs away. */
END
IF~~THEN REPLY @16 /*Watch her run away. */ DO~EscapeArea()~ EXIT
CHAIN IF~OR(2) Global("g-lovers4","GLOBAL",1) GlobalGT("g-lovers","GLOBAL",0)~THEN g-bbD056 g-bbD056.start3
@18 /*The woman does not want to talk to you now. */
END
IF~~THEN REPLY @20 /*No point standing about. */ DO~~ EXIT