BEGIN g-bbD067
CHAIN IF~GlobalGT("g-BBmain","GLOBAL",35)~THEN g-bbD067 g-bbD067.thra_start
@0 /*Let's fight. [g-06701] */
END
IF~~THEN REPLY @3 /*Okay. */ DO~Enemy()~ EXIT
CHAIN IF~Global("g-BBminauros","GLOBAL",1)~THEN g-bbD067 g-bbD067.min_start
@5 /*"My lord, the traitors left Cania... mostly unharmed." [g-06702] */
=@6 /*"WHAT ELSE COULD ONE EXPECT FROM THE USURPER BARON? I THINK IT MAY BE TIME FOR YOU TO HAVE A BITE OF THEIR FLESH." */
=@7 /*"Lord of Avarice, I would gladly give my existence in service... but they seem formidable. If legions of gelugons couldn't deadbook them, what can one cornugon do?" [g-06703] */
=@8 /*"I THINK YOU ARE DUE FOR A PROMOTION, DEAR ANIT'BIL. GET YOURSELF READY." */
EXIT
CHAIN IF~Global("g-ribcage","GLOBAL",1)~THEN g-bbD067 g-bbD067.rib_start
@11 /*"Do you have something for me, minstrel?" [g-06704] */
==g-bbD007 @12 /*"A song, a poem, a ditty for m'lord?"  [G-00701] */
==g-bbD067 @13 /*"You overestimate a devil's sense of humor." [g-06705] */
==g-bbD007 @14 /*"You underestimate the value of a good joke, but I do apologize, Anit'bil. I would never do anything to ruffle your stubby... whatever it is. Lining your lower planes." [G-00702] */
==g-bbD067 @15 /*"Where are the abishai?" The cornugon almost growls. [g-06706] */
==g-bbD007 @16 /*"Somewhere in the Hive, they will soon not survive. But I do have some other... *exquisite* rhymes."  [G-00703] */
==g-bbD067 @17 /*"You truly are making me consider slaughter so early in a day... You are very talented indeed. Now... tell me what this meeting is *actually* about, spy, before my patience is extinguished." [g-06707] */
==g-bbD007 @18 /*"The imp is free, but it was not the rowdy rebels who let it be, it was some strange sod. Likely human. Doesn't talk a lot. I followed them for a while and learned that they're about to journey to the eight circle."  [G-00704] */
==g-bbD067 @19 /*"An imp and a man, in Cania. Suicidal." [g-06708] */
==g-bbD007 @20 /*"Yes, undeniably. Does that mean that I can be on my merry way and pursue other interests, devil?"  [G-00705] */
==g-bbD067 @21 /*"Oh, by no means. You, loud and smelly human, are going to Cania as well. To tie up some loose ends." [g-06709] */
==g-bbD007 @22 /*"Sorry, old fiend, but the Hells would sooner freeze over than... oh... right. Anyway, no way."  [G-00706] */
==g-bbD067 @23 /*"That may have been the best joke you ever made, Akershus." [g-06710] */
=@24 /*"No... Actually, the joke that you *thought* you could refuse is even better." [g-06711] */
==g-bbD007 @25 /*"Ah, Hells."  [G-00707] */
END
IF~~THEN REPLY @27 /*Continue. */ DO~StartCutScene("g-bbCr4")~ EXIT