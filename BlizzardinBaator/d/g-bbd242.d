BEGIN g-bbD242
CHAIN IF~True()~THEN g-bbD242 g-bbD242.start
@0 /*Below the grandiose bronze statue of a giant wererat, some kind of ritual appears to be taking place. One of the wererats present is wearing more ornamental clothing than the others and is facing them all, dancing and reciting lofty verses. */
=@1 /*"Death to the enemies of Squerrik, and death to the apostates! Those who are unworthy of carrying out his sacred mission of unity and domination. Death!" */
=@2 /*The resounding cry of "DEATH!" echoes throughout the temple as everyone present repeats the call for violence with great enthusiasm. */
=@3 /*The apparent chief of the congregation raises his hairy finger and the cries stop almost instantly. He then sniffs three times with deep, long inhales through his pointy nose. */
=@4 /*The wererat's eyes wander up and onto the platform. His raised finger points at you as his arm straightens with supranatural speed. "INTRUDER!" */
END
IF~~THEN REPLY @6 /*"What? No. I'm a friend." */ DO~Enemy() SetGlobal("g-squerrikalert","GLOBAL",1)~ + g-bbD242.lies
IF~~THEN REPLY @7 /*Defend yourself. */ DO~Enemy() SetGlobal("g-squerrikalert","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD242 g-bbD242.lies
@9 /*"There will be no hairless friends for the true believers of the Lord of the Sewers! Attack!" */
EXIT