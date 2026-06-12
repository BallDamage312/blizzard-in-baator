BEGIN g-bbD224
CHAIN IF~True()~THEN g-bbD224 g-bbD224.start
@0 /*A huge, tusked creature stands in the center of the beach, with a sign hanging from its neck that reads: "Ask me about the landmarks!" The hulk is slowly leaning from side to side but otherwise remains very still. */
END
IF~~THEN REPLY @2 /*"So, what are the landmarks?" */ DO~~ + g-bbD224.landmarks
IF~Global("g-beachpaid100","GLOBAL",1)~THEN REPLY @3 /*"Are you the beach manager?" */ DO~~ + g-bbD224.management
IF~~THEN REPLY @4 /*"What are you doing here?" */ DO~~ + g-bbD224.point
IF~~THEN REPLY @5 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD224 g-bbD224.landmarks
@7 /*The creature opens its mouth and starts speaking slowly in a deep, droning voice. The words are barely legible. */
=@8 /*"Across... bridge... follow water... right... for Suicide Falls." [g-22401] */
=@9 /*"Across bridge... left... stairs up... through gate... right... for Vertical Sea." [g-22402] */
=@10 /*"Have a great day." [g-22403] */
END
IF~Global("g-beachpaid100","GLOBAL",1)~THEN REPLY @12 /*"Are you the beach manager?" */ DO~~ + g-bbD224.management
IF~~THEN REPLY @13 /*"What are you doing here?" */ DO~~ + g-bbD224.point
IF~~THEN REPLY @14 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD224 g-bbD224.management
@16 /*"No." [g-22404] */
END
IF~~THEN REPLY @18 /*"So, what are the landmarks?" */ DO~~ + g-bbD224.landmarks
IF~~THEN REPLY @19 /*"Can you direct me to the management? I would like to submit a complaint." */ DO~~ + g-bbD224.management2
IF~~THEN REPLY @20 /*"What are you doing here?" */ DO~~ + g-bbD224.point
IF~~THEN REPLY @21 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD224 g-bbD224.management2
@23 /*"No." [g-22404] */
END
IF~~THEN REPLY @25 /*"So, what are the landmarks?" */ DO~~ + g-bbD224.landmarks
IF~~THEN REPLY @26 /*"What are you doing here?" */ DO~~ + g-bbD224.point
IF~~THEN REPLY @27 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD224 g-bbD224.point
@29 /*The creature shrugs and points to the sign on its chest. */
END
IF~~THEN REPLY @31 /*"So, what are the landmarks?" */ DO~~ + g-bbD224.landmarks
IF~~THEN REPLY @32 /*Leave the creature alone. */ DO~~ EXIT