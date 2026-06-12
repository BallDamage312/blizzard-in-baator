BEGIN g-bbD083
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD083 g-bbD083.start
@0 /*In front of you stands an elderly woman in rags. Her face is twisted in a scowl, her eyebrows furrowed. She rubs her rear furiously, as if the area is sore. An abandoned, overthrown basket lies on the ground near her, soaking in a puddle of water. The woman keeps glowering at the laughing old man nearby. */
END
IF~~THEN REPLY @2 /*"Is everything all right?" */ DO~~ + g-bbD083.A1
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD083 g-bbD083.start2
@5 /*In front of you stands an elderly woman in rags. She keeps glowering at the laughing old man nearby. */
END
IF~~THEN REPLY @7 /*"Is everything all right?" */ DO~~ + g-bbD083.A1
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD083 g-bbD083.A1
@10 /*"All right? Ha! Nothing's all right!" She spits in the puddle and winces in pain. "We went uphill to fetch a pail of water and that *idiot*," she snarls at the man who only laughs louder, "that lousy *idiot* not only tumbled down - taking me with him, mind you - but he also broke his crown. His bloody *CROWN*. Can you imagine?" The woman is so angry her whole body radiates heat and fury as if she were a fiend. */
END
IF~~THEN REPLY @12 /*"His... crown?" */ DO~~ + g-bbD083.B1
IF~~THEN REPLY @13 /*"That's rough. Well, good day to you." */ DO~~ EXIT
IF~~THEN REPLY @14 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD083 g-bbD083.B1
@16 /*"Yes! What a sad sack of useless bones!" She erupts in a fit of loud ranting, barely making a pause to catch a breath. After a minute you tune out. After another minute you deftly slip away. She does not seem to have noticed, her voice only gaining in volume. */
END
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @18 /*Ask Fall-from-Grace: "Do you know anyone able to fix a broken crown? Maybe you came across someone in the Clerk's Ward?" */ DO~~ + g-bbD083.C1
IF~~THEN REPLY @19 /*"Well, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD083 g-bbD083.C1
@21 /*The old woman pipes down and listens curiously. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @22 /*"Interesting question. In fact, there was a memory of a crown mender in the sensorium... I do not remember exactly where, but maybe Splinter could let this nice lady inside and show her the way to the right sensory stone. I am sure it would help her learn the correct technique." */
END
IF~~THEN REPLY @24 /*"So what do you think?" */ DO~~ + g-bbD083.D1
CHAIN IF~~THEN g-bbD083 g-bbD083.D1
@26 /*"I'll head there right away, young man. Thank you for your help!" */
END
IF~~THEN REPLY @28 /*Leave. */ DO~SetGlobal("G-poppy","GLOBAL",1) EscapeArea() ~ EXIT