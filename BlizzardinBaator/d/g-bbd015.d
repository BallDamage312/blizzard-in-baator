BEGIN g-bbD015
CHAIN IF~NumTimesTalkedTo(0) Global("G-kuotoabeach","GLOBAL",0)~THEN g-bbD015 g-bbD015.start
@0 /*There is a short, corpulent fish-like humanoid sneaking behind a wooden stand at the beach. It is chewing something in its elongated mouth. Upon noticing you, it attempts to hide between planks of wood. */
END
IF~~THEN REPLY @2 /*"Hey! Why are you hiding there?" */ DO~SetGlobal("G-kuotoabeach","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",2)~ SOLVED_JOURNAL @20187 + g-bbD015.inter
IF~~THEN REPLY @3 /*Leave the creature alone. */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",2)~ SOLVED_JOURNAL @20187 EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD015 g-bbD015.start2
@5 /*The strange creature still hides in the shadow of the booth. */
END
IF~~THEN REPLY @7 /*"Hey! Why are you hiding there?" */ DO~SetGlobal("G-kuotoabeach","GLOBAL",1)~ + g-bbD015.inter
IF~~THEN REPLY @8 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD015 g-bbD015.inter
@10 /*The fish-like humanoid hisses at you: "Sssilence. Leafff me alone." */
END
IF~~THEN REPLY @12 /*Try to see what the creature is looking at. */ DO~~ + g-bbD015.insp
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @13 /*"You are a kuo-toa. Not many like you around Sigil." */ DO~~ + g-bbD015.kuo
IF~~THEN REPLY @14 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD015 g-bbD015.insp
@16 /*The scaly stalker seems to be observing the beach goers. It whispers something under its breath, caressing a pincer-staff attached to its belt. */
END
IF~~THEN REPLY @18 /*"Hey! What are you doing here? Tell me now or I will get it out of you." */ DO~~ + g-bbD015.kuo
IF~~THEN REPLY @19 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD015 g-bbD015.kuo
@21 /*The creature hisses savagely. "Kuo-toa doesss kuo-toa busssinesss."  */
==g-bbd015 IF~!GlobalGT("G-kuotoaquestline","GLOBAL",2)~THEN @22 /*A piece of string flies out of its mouth as it hisses. */
END
IF~!GlobalGT("G-kuotoaquestline","GLOBAL",2)~THEN REPLY @24 /*"I think I may have to take interest in your busine..." */ DO~GiveItemCreate("g-bbi124",Protagonist,0,0,0) SetGlobal("G-kuotoaquestline","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @20188 EXIT
IF~!GlobalGT("G-kuotoaquestline","GLOBAL",2)~THEN REPLY @25 /*Attack the kuo-toa. */ DO~GiveItemCreate("g-bbi124",Protagonist,0,0,0) Enemy() SetGlobal("G-kuotoaquestline","GLOBAL",3)~ SOLVED_JOURNAL @20188 EXIT
IF~GlobalGT("G-kuotoaquestline","GLOBAL",2)~THEN REPLY @26 /*"I think I may have to take interest in your busine..." */ DO~EscapeArea()~ EXIT
IF~GlobalGT("G-kuotoaquestline","GLOBAL",2)~THEN REPLY @27 /*Attack the kuo-toa. */ DO~Enemy()~ EXIT