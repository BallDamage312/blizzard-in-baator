BEGIN g-bbD232
CHAIN IF~!Global("g-redwomanquestline","GLOBAL",6) !Global("g-redwomanquestline","GLOBAL",7)  !Global("G-brill_quest","GLOBAL",2)~THEN g-bbD232 g-bbD232.start
@0 /*"Warm woolen mittens! Textiles and materials! Hats! Get yer clothes here!" */
EXIT
CHAIN IF~OR(3) Global("G-brill_quest","GLOBAL",2) Global("g-redwomanquestline","GLOBAL",6) Global("g-redwomanquestline","GLOBAL",7)~THEN g-bbD232 g-bbD232.startalt
@3 /*"Warm woolen mittens! Textiles and materials! Hats! Get yer clothes here!" */
END
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @5 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD232.ikks
IF~Global("g-redwomantip","GLOBAL",1)~THEN REPLY @6 /*"Greetings. Did a woman in a red dress sell you any clothes recently?" */ DO~SetGlobal("g-redwomanquestline","GLOBAL",7)~ SOLVED_JOURNAL @20249 + g-bbD232.red
IF~Global("g-redwomanquestline","GLOBAL",7)~THEN REPLY @7 /*"Greetings. I actually would like to buy these clothes back. The ones sold to you by the woman in a red dress." */ DO~~ + g-bbD232.red2
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD232 g-bbD232.red
@10 /*"New clothes, used clothes. Whatever yer heart desires. She did, yes." */
END
IF~~THEN REPLY @12 /*"Can I buy them back?" */ DO~~ + g-bbD232.red2
IF~~THEN REPLY @13 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD232 g-bbD232.red2
@15 /*"Sure. 25 copper coins for the lot." */
END
IF~!PartyGoldLT(25)~THEN REPLY @17 /*"I'll take them." */ DO~TakePartyGold(25) GiveItemCreate("g-bbi116",Protagonist,1,1,0) SetGlobal("g-redwomanquestline","GLOBAL",8)~ SOLVED_JOURNAL @20250 + g-bbD232.red3
IF~~THEN REPLY @18 /*"I changed my mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD232 g-bbD232.red3
@20 /*"Here ye go." She exchanges your money for a neatly folded shirt and a pair of pants. Then she goes back to yelling over the other merchants. "Warm woolen mittens! Textiles and materials! Hats! Get yer clothes here!" */
EXIT
CHAIN IF~~THEN g-bbD232 g-bbD232.ikks
@30 /*The merchant points to the buildings to the right of the chronometer. "The strange gith? This building here, but I haven't seen 'im a while. Ask his lady friend, Mare." */
END
IF~~THEN REPLY @32 /*"Alright, where can I find her?" */ DO~~ + g-bbD232.ikks2
CHAIN IF~~THEN g-bbD232 g-bbD232.ikks2
@35 /*"Usually around the Vertical Sea." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @37 /*"Where is that?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD232.ikks3
IF~~THEN REPLY @38 /*"Thank you. I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD232 g-bbD232.ikks3
@40 /*"It's further away from the water, beyond the statue of Athena." */
END
IF~~THEN REPLY @42 /*"Thank you. I need to go. Farewell." */ DO~~ EXIT