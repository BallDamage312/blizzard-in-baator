BEGIN g-bbD072
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD072 g-bbD072.start
@0 /*You see a man as old as the hills, sitting on an equally old chest, motionless as a statue. He froze in a thinker's position, his back hunched and his chin resting on his hand. You could consider him an inanimate work of art, if not for the fact that every few seconds he sighs deeply and mournfully. */
END
IF~Global("g-oldman","GLOBAL",0)~THEN REPLY @2 /*"Why are you sighing so much?" */ DO~~ + g-bbD072.A1
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD072 g-bbD072.start2
@6 /*The older man froze in a thinker's position, his back hunched and his chin resting on his hand. You could consider him an inanimate work of art, if not for the fact that every few seconds he sighs deeply and mournfully. */
END
IF~Global("g-oldman","GLOBAL",0)~THEN REPLY @8 /*"Why are you sighing so much?" */ DO~~ + g-bbD072.A1
IF~~THEN REPLY @9 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD072 g-bbD072.A1
@11 /*The man turns toward you, slow as a glacier, his watery eyes fixing on you. When he speaks, his voice seems to come from far away, as if echoing from the bottom of a well. "Someone has to..." */
END
IF~~THEN REPLY @13 /*"What do you mean?" */ DO~SetGlobal("g-oldman","GLOBAL",1)~ + g-bbD072.C1
IF~~THEN REPLY @14 /*"Nobody's forcing you to sigh, old man..." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-oldman","GLOBAL",1)~ + g-bbD072.C1
IF~~THEN REPLY @15 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD072 g-bbD072.C1
@17 /*The man sighs deeply. You are not sure if your stupidity is the cause or the general state of reality. "You do not understand. No one understands. The multiverse is constantly being flooded with terrifying waves of sadness and suffering, great enough to drown all the planes. And only I, a lonely dam, defend the world from this flood. For millions do I suffer agonies so that they do not have to suffer." */
END
IF~~THEN REPLY @19 /*"But why you? What's so special about you?" */ DO~~ + g-bbD072.F1
IF~~THEN REPLY @20 /*"You went completely mad. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @21 /*Leave without saying anything. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD072 g-bbD072.F1
@24 /*The old man sighs and shakes his head, staring off into space. "Special? Nothing. Nothing at all. Someone just has to do it..." The man zones out, no longer paying any attention to you. He freezes in the pose of a statue again, only the rise and fall of his chest indicating that he is still alive. */
END
IF~~THEN REPLY @26 /*Leave. */ DO~~ EXIT