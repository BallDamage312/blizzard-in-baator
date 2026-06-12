BEGIN g-bbD011
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD011 g-bbD011.start
@0 /*A hairy middle-aged human sits at the table in the corner. He looks to be the personification of the Ditch itself, and reminds you of absolutely nobody in particular. The only distinctive feature you can ascertain are his bloodshot eyes, red like he is an albino rabbit, and possibly the fractals of alcohol stains covering the front of his worn out shirt, accumulated throughout the years. */
=@1 /*He drains half of his mug in one gulp, gargles vigorously and then spits it all out on the table with a loud gurgling sound. He then leans over to examine the liquid with the intensity of an augur trying to discover the secrets of the future. You hear him whisper to himself. "Chicken? Huh... no, dog! Here's an eye." */
=@2 /*Satisfied, he wipes his mouth with his sleeve and finishes his drink, culminating the process with a loud burp.  */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @3 /*You look at the skull. He may not have a stomach, but he can mimic the sounds of vomiting very well. */
END
IF~~THEN REPLY @5 /*"Yuck." */ DO~~ EXIT
IF~~THEN REPLY @6 /*"Cheers." */ DO~~ + g-bbD011.2
CHAIN IF~~THEN g-bbD011 g-bbD011.2
@8 /*"Cheesss." */
EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD011 g-bbD011.start2
@11 /*The man is still shining on life's stage, strangely conscious despite his state of alcoholic intoxication. The table is still stained with his art. What a horrible time to have a sense of smell, or any senses at all. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @12 /*"Can we move away, chief? He is making me grow phantom organs I didn't know I could feel." */
END
IF~~THEN REPLY @14 /*"Yuck." */ DO~~ EXIT
IF~~THEN REPLY @15 /*"Cheers." */ DO~~ + g-bbD011.2