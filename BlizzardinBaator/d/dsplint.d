EXTEND_TOP DSPLINT 1

IF ~Global("G-BBmain","GLOBAL",2) Global("G-asked_splinter","GLOBAL",0)~THEN REPLY @0 DO~SetGlobal("G-asked_splinter","GLOBAL",1)~ EXTERN DSPLINT MAWU // "I heard there Is a guest professor in the Hall, Mawu. Do you know where she is?"
END

EXTEND_TOP DSPLINT 10

IF ~Global("G-BBmain","GLOBAL",2) Global("G-asked_splinter","GLOBAL",0)~THEN REPLY @0 DO~SetGlobal("G-asked_splinter","GLOBAL",1)~ EXTERN DSPLINT MAWU // "I heard there Is a guest professor in the Hall, Mawu. Do you know where she is?"
END


APPEND DSPLINT
IF ~~ THEN BEGIN MAWU
SAY @1 // "Oh, her? She should be in one of the lecture halls. When she's not lecturing she loves to listen in on others. Look for a lady with a darker complexion, bright blonde hair and a green dress."
IF ~~ THEN REPLY @2 GOTO 1 // "Thank you. I have some other questions."
IF ~~ THEN REPLY @3 EXIT // Thank you. that will be all for now."
END
END
