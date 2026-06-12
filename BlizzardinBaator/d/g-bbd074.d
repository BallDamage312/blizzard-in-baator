BEGIN g-bbD074
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD074 g-bbD074.start
@0 /*Before you there is an old woman whose life surely was not a bed of roses. Motionless, she is sitting on the ground, wrapped in dirty rags. Her gray, thinning hair is tangled in a knot like a bird's nest, and her rotten teeth have the coloration of mud. One of her eye sockets remains frighteningly empty. In the other, a cloudy eyeball turns lazily in your direction. At the sight of you, the old woman begins to giggle, which sounds disturbingly similar to a rasping cough. */
=@1 /*"Nfufufu... Do you know why living in the Ditch is like a plonk?" */
END
IF~~THEN REPLY @3 /*"Because it's cheap and nasty?" */ DO~~ + g-bbD074.A1
IF~~THEN REPLY @4 /*"I don't know. Why?" */ DO~~ + g-bbD074.B1
IF~~THEN REPLY @5 /*"I don't know and I don't care. Goodbye." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD074 g-bbD074.start2
@7 /*Before you there is an old woman whose life surely was not a bed of roses. Motionless, she is sitting wrapped in dirty rags. Her gray, thinning hair is tangled in a knot like a bird's nest, and her rotten teeth have the coloration of mud. One of her eye sockets remains frighteningly empty. In the other, a cloudy eyeball turns lazily in your direction. At the sight of you, the old woman begins to giggle, which sounds disturbingly similar to a rasping cough. */
EXIT
CHAIN IF~~THEN g-bbD074 g-bbD074.A1
@10 /*"No, berk! Because it reeks of piss, nfufufu!" The woman  slaps her gnarled hands on her thighs, laughing. Amused by her own joke, she stops paying attention to you.
 */
END
IF~CheckStatLT(Protagonist,11,INT)~THEN REPLY @12 /*"I don't get it..."
 */ DO~~ EXIT
IF~~THEN REPLY @13 /*Sigh with disapproval. "This is completely frivolous and immature, not befitting an adult. Goodbye."
 */ DO~IncrementGlobal("LAW","GLOBAL",1)~ EXIT
IF~~THEN REPLY @14 /*"He he, piss. Funny! I have to go now, though."
 */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @15 /*Sigh and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD074 g-bbD074.B1
@18 /*"Because it reeks of piss, nfufufu!" The woman  slaps her gnarled hands on her thighs, laughing. Amused by her own joke, she stops paying attention to you. */
END
IF~CheckStatLT(Protagonist,11,INT)~THEN REPLY @20 /*"I don't get it..."
 */ DO~~ EXIT
IF~~THEN REPLY @21 /*Sigh with disapproval. "This is completely frivolous and immature, not befitting an adult. Goodbye."
 */ DO~IncrementGlobal("LAW","GLOBAL",1)~ EXIT
IF~~THEN REPLY @22 /*"He he, piss. Funny! I hav e to go now, though."
 */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @23 /*Sigh and leave. */ DO~~ EXIT