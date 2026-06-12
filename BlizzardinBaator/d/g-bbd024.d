BEGIN g-bbD024
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD024 g-bbD024.start1
@0 /*The fiend seems to be preoccupied with fighting with the green abishai. */
END
IF~~THEN REPLY @2 /*Listen in. */ DO~ActionOverride("G-bb024",StartDialogueNoSet("G-bbd024"))~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD024 g-bbD024.start2
@4 /*The fiends are not going to answer your questions. */
END
IF~~THEN REPLY @6 /*Leave. */ DO~SetGlobal("nointerven","GLOBAL",1)~ EXIT