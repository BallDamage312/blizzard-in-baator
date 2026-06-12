BEGIN g-bbD188
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD188 g-bbD188.start1
@0 /*At the middle point between two developments, spanning a cove where the slow current of the Ditch deposits massive piles of trash, stretches a wooden bridge of dubious quality. It looks as if it were hastily erected using whatever materials were at hand. Right in the middle of this structure stands a rickety traveling stall, next to which a smiling cheapjack stands. The cart is positioned in such a way that in your mind's eye you can almost see it tilting and sliding into the mud and debris below. */
=@1 /*"Wanna trade?" */
END
IF~~THEN REPLY @3 /*"Show me your wares." */ DO~StartStore("g-bb#006", Protagonist)~ EXIT
IF~GlobalLT("g-cheapjack","GLOBAL",1)
~THEN REPLY @4 /*"Wouldn't it be easier for you to just settle somewhere and sell your goods? Or at least move to the Hive market?" */ DO~SetGlobal("g-cheapjack","GLOBAL",1)~ + g-bbD188.question
IF~~THEN REPLY @5 /*"No, thanks." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD188 g-bbD188.start2
@7 /*"Wanna trade?" */
END
IF~~THEN REPLY @9 /*"Show me your wares." */ DO~StartStore("g-bb#006", Protagonist)~ EXIT
IF~GlobalLT("g-cheapjack","GLOBAL",1)
~THEN REPLY @10 /*"Wouldn't it be easier for you to just settle somewhere and sell your goods? Or at least move to the Hive market?" */ DO~SetGlobal("g-cheapjack","GLOBAL",1)~ + g-bbD188.question
IF~GlobalLT("g-cheapjack1","GLOBAL",1)
~THEN REPLY @11 /*"Why are you on this bridge? it does not feel safe." */ DO~SetGlobal("g-cheapjack1","GLOBAL",1)~ + g-bbD188.bridge
IF~~THEN REPLY @12 /*"No, thanks." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD188 g-bbD188.question
@14 /*"I admit, being constantly on the move might be less comfortable. But this way, I meet more people, which means I have a more diverse clientele and more interesting trades. I might run into a human, a baatezu, a tanar'ri, a celestial, a wererat, or anyone else. Besides, a rolling stone gathers no moss, or something like that." */
END
IF~GlobalLT("g-cheapjack1","GLOBAL",1)
~THEN REPLY @16 /*"Why are you on this bridge? it does not feel safe." */ DO~SetGlobal("g-cheapjack1","GLOBAL",1)~ + g-bbD188.bridge
IF~~THEN REPLY @17 /*"Show me your wares, then." */ DO~StartStore("g-bb#006", Protagonist)~ EXIT
IF~~THEN REPLY @18 /*"I see..." */ DO~~ + g-bbD188.start2
IF~~THEN REPLY @19 /*"I don't want to trade today." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD188 g-bbD188.bridge
@21 /*The trader smiles and points to each side of the bridge with each of his hands. "See, both of these settlements require me to pay for setting up shop, even if temporary. On this admittedly rickety bridge, I have to pay *nobody*. It's no man's land!" */
END
IF~~THEN REPLY @23 /*"Show me your wares, then." */ DO~StartStore("g-bb#006", Protagonist)~ EXIT
IF~~THEN REPLY @24 /*"I see..." */ DO~~ + g-bbD188.start2
IF~~THEN REPLY @25 /*"I don't want to trade today." */ DO~~ EXIT