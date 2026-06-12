BEGIN g-bbD213
CHAIN IF~true()~THEN g-bbD213 g-bbD213.start
@0 /*This is Mawu's journal. It is undeniably thick and filled with information. It would take a long time to read it, but you could probably scan it to find the information you need. */
END
IF~~THEN REPLY @2 /*Look for any information about portals to Cania in Sigil. */ DO~~ + g-bbD213.cania
IF~Global("G-BBmain","GLOBAL",2)~THEN REPLY @3 /*Look for any information about hopping portals in general. */ DO~SetGlobal("G-BBmain","GLOBAL",3)~ SOLVED_JOURNAL @20009 + g-bbD213.hopping
IF~GlobalGT("G-BBmain","GLOBAL",2)~THEN REPLY @4 /*Look for any information on hopping portals in general. */ DO~~ + g-bbD213.hopping
IF~Global("G-keyquest","GLOBAL",0)~THEN REPLY @5 /*Look for any notes on Manohae, the Sensate found in Cania. */ DO~SetGlobal("G-keyquest","GLOBAL",1)~ SOLVED_JOURNAL @20087 + g-bbD213.brine
IF~GlobalGT("G-keyquest","GLOBAL",0)~THEN REPLY @6 /*Look for any notes on Manohae, the Sensate found in Cania. */ DO~~ + g-bbD213.brine
IF~~THEN REPLY @7 /*Close the journal for now. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD213 g-bbD213.cania
@9 /*The only mention of a portal to Cania is in a short note about the nexus of tunnels beneath the vast ruins that cover the entire seventh layer of Baator, Maladomini. Mawu never ventured there in person, so the note is purely for contextualizing travel in the Hells. */
=@10 /*When it comes to portals leading *out* of Cania, supposedly there is one leading back to Maladomini in Mephistar, and another leading down to Nessus through a huge pit filled with 9,999 ice devils at the bottom of a nearby glacier. */
END
IF~~THEN REPLY @12 /*Look for something else. */ DO~~ + g-bbD213.start
IF~~THEN REPLY @13 /*Close the journal for now. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD213 g-bbD213.hopping
@15 /*You find a fragment of the transcript of a recent lecture.  */
=@16 /*"Hopping portals are the definition of chance. It's easy to fall into them if you're in the wrong place at the wrong time. Of course, you still need a key to use them, so they're not extremely dangerous. The real challenge is finding them at the right time. They follow a path, so they can travel to the farthest reaches of the multiverse, but they will surely find their way back sooner or later. It could be just seconds every hundred years or three hours every day. It's really case-specific." */
END
IF~~THEN REPLY @18 /*Look for something else. */ DO~~ + g-bbD213.start
IF~~THEN REPLY @19 /*Close the journal for now. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD213 g-bbD213.brine
@21 /*There is not much. Manohae was not at the center of her academic studies. There is one brief case of Mawu complaining about the wereshark being absent from a lecture he had promised to hep with, claiming he was probably spending time eating strange things with the good-for-nothing kocrachon, Elvra Syne in one of the fiendish taverns. */
END
IF~~THEN REPLY @23 /*Look for something else. */ DO~~ + g-bbD213.start
IF~~THEN REPLY @24 /*Close the journal for now. */ DO~~ EXIT