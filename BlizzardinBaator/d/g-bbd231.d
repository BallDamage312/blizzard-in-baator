BEGIN g-bbD231
CHAIN IF~!Global("G-brill_quest","GLOBAL",2)~THEN g-bbD231 g-bbD231.start
@0 /*"Bright copper kettles! And all other useful kitchen utensils! Best quality around!" */
EXIT
CHAIN IF~Global("G-brill_quest","GLOBAL",2)~THEN g-bbD231 g-bbD231.start2
@3 /*"Bright copper kettles! And all other useful kitchen utensils! Best quality around!" */
END
IF~~THEN REPLY @5 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD231.ikks
CHAIN IF~~THEN g-bbD231 g-bbD231.ikks
@7 /*The merchant points to the buildings to the right of the chronometer. "The strange gith? This building here, but I haven't seen 'im a while. Ask his lady friend, Mare." */
END
IF~~THEN REPLY @9 /*"Alright, where can I find her?" */ DO~~ + g-bbD231.ikks2
CHAIN IF~~THEN g-bbD231 g-bbD231.ikks2
@12 /*"Usually around the Vertical Sea." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @14 /*"Where is that?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD231.ikks3
IF~~THEN REPLY @15 /*"Thank you. I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD231 g-bbD231.ikks3
@17 /*"It's further away from the water, beyond the statue of Athena." */
END
IF~~THEN REPLY @19 /*"Thank you. I need to go. Farewell." */ DO~~ EXIT