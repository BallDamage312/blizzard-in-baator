BEGIN g-bbD143
CHAIN IF~NumTimesTalkedTo(0) Global("g-fated1","GLOBAL",0)~THEN g-bbD143 g-bbD143.altstart
@0 /*As you climb the stairs leading toward what appears to be the main part of the Ditch settlement, you hear the loud clattering of hooves approaching from just beyond your field of vision. Moments later, a large, muscular bariaur clad in leathers appears at the top of the staircase, seemingly chased by two men in darker, spiked armor. */
=@1 /*"You shan't treat an emissary of the Fated like this. The factor will hear of this!" */
==g-bbd141 @2 /*"How about you gallop back to Ysgard, to your idyllic rich man's paradise, and stop meddling with our people, huh?" */
==g-bbd143 @3 /*"I could crush you pitiful Sinkers where you stand, as Modi is my witness!" */
==g-bbd142 @4 /*"You want to try it, berk? You're alone, and we got bloods all around this district. Draw your weapon, see what happens!" */
==g-bbd143 @5 /*"The so-called actor has to pay for his insolence. You cannot protect him forever!" */
==g-bbd141 @6 /*"Haer'Dalis did nothing wrong, and your pompous troublemaking factol knows damn well that he didn't. You lot are too stupid to see what a rotten berk your Duke is." */
==g-bbd143 @7 /*The bariaur, upon hearing this, puts his hand on the hilt of his blade. */
==g-bbd141 @8 /*Both of the other men immediately do the same. A long pause follows where nobody dares to make a move. */
==g-bbd143 @9 /*Eventually, the four-legged one takes his muscular arm off the hilt. "Darkwood will save this city yet, and hopefully expel the likes of you, Doomguard scum." */
==g-bbd142 @10 /*"Yes, yes. Run to daddy Rowan, or daddy Ulfbrand. Cry about how the mean Doomguard chased you away." */
END
IF~~THEN REPLY @12 /*Watch the men go their separate ways. */ DO~SetGlobal("G-doomvsfate","GLOBAL",2)~ SOLVED_JOURNAL @20092 EXIT