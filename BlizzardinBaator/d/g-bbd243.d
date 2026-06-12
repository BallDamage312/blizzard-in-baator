BEGIN g-bbD243
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD243 g-bbD243.start
@0 /*Behind the counter, you see a man trying to pour a drink while reading through a number of documents spread out in front of him. He looks a little lost. He sees you approaching and hastily puts the drink down. */
=@1 /*"Yes? Yes? Sorry, I'm busy. Can I help you?" */
END
IF~~THEN REPLY @3 /*"Do you have any rooms?" */ DO~StartStore("g-bb#012",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @4 /*"Do you have anything to drink?" */ DO~~ + g-bbD243.nodrink
IF~~THEN REPLY @5 /*"Are you new? Have you come to replace the old barkeep?" */ DO~~ + g-bbD243.story
IF~~THEN REPLY @6 /*"Not right now, thank you." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD243 g-bbD243.start2
@8 /*"Oh, it's you again. Sorry, I *still* have my hands full. Can I help you?" */
END
IF~~THEN REPLY @10 /*"Do you have any rooms?" */ DO~StartStore("g-bb#012",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @11 /*"Do you have anything to drink?" */ DO~~ + g-bbD243.nodrink
IF~~THEN REPLY @12 /*"Are you new? Have you come to replace the old barkeep?" */ DO~~ + g-bbD243.story
IF~~THEN REPLY @13 /*"Not right now, thank you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD243 g-bbD243.nodrink
@15 /*"Ah, you know... I *do,* but the previous owner was very unusual about keeping score of which barrel contained what and how much any of it costs, so the drinks are currently unavailable. I'll have a new system up and running soon... hopefully." */
END
IF~~THEN REPLY @17 /*"Do you have any rooms?" */ DO~StartStore("g-bb#012",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @18 /*"But I just saw you pour a drink." */ DO~~ + g-bbD243.nodrink2
IF~~THEN REPLY @19 /*"Are you new? Have you come to replace the old barkeep?" */ DO~~ + g-bbD243.story
IF~~THEN REPLY @20 /*"All right, bye then." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD243 g-bbD243.nodrink2
@22 /*"Oh... I did pour *something,* yes. Mostly for myself. This sudden takeover is very stressful, you see." */
END
IF~~THEN REPLY @24 /*"Do you have any rooms?" */ DO~StartStore("g-bb#012",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @25 /*"Are you new? Have you come to replace the old barkeep?" */ DO~~ + g-bbD243.story
IF~~THEN REPLY @26 /*"All right, bye then." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD243 g-bbD243.story
@28 /*"Oh yes! The Guild of Merchants sent me here until a permanent replacement is found. Apparently, the previous owner met his end at the hands of a large, slightly dead-looking tattooed man..." He eyes you very carefully. "Erm... I don't *know* what happened, and it doesn't concern me. Whatever his affiliations were, they are not mine. I have been put here somewhat against my will." */
END
IF~~THEN REPLY @30 /*"Do you have any rooms?" */ DO~StartStore("g-bb#012",LastTalkedToBy())~ EXIT
IF~~THEN REPLY @31 /*"Do you have anything to drink?" */ DO~~ + g-bbD243.nodrink
IF~~THEN REPLY @32 /*"All right, bye then." */ DO~~ EXIT