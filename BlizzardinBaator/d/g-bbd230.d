BEGIN g-bbD230
CHAIN IF~!Global("G-brill_quest","GLOBAL",2)~THEN g-bbD230 g-bbD230.start
@0 /*"Kittens, kittens! Just look at their adorable whiskers! Why would you need love when you can have cats?" */
EXIT
CHAIN IF~Global("G-brill_quest","GLOBAL",2)~THEN g-bbD230 g-bbD230.start23
@3 /*"Kittens, kittens! Just look at their adorable whiskers! Why would you need love when you can have cats?" */
END
IF~~THEN REPLY @5 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD230.ikks
CHAIN IF~~THEN g-bbD230 g-bbD230.ikks
@7 /*The merchant points to the buildings to the right of the chronometer. "The strange gith? This building here, but I haven't seen 'im a while. Ask his lady friend, Mare." */
END
IF~~THEN REPLY @9 /*"Alright, where can I find her?" */ DO~~ + g-bbD230.ikks2
CHAIN IF~~THEN g-bbD230 g-bbD230.ikks2
@11 /*"Usually around the Vertical Sea." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @13 /*"Where is that?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD230.ikks3
IF~~THEN REPLY @14 /*"Thank you. I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD230 g-bbD230.ikks3
@16 /*"It's further away from the water, beyond the statue of Athena." */
END
IF~~THEN REPLY @18 /*"Thank you. I need to go. Farewell." */ DO~~ EXIT