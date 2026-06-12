BEGIN g-bbD079
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD079 g-bbD079.start
@0 /*You see a middle-aged woman with sharp features and brown hair tied in a tight bun. She is wearing a purple robe, embroidered in elaborate symbols that indicate membership in some mystical society. The woman is sitting in the mud with her legs crossed. Her eyes are closed and she has a peaceful expression on her face, despite the fact that a leaking pipe is dripping filth onto her head. She does not seem to notice your presence. */
END
IF~Global("g-dialog5","GLOBAL",0)~THEN REPLY @2 /*"What are you doing?" */ DO~~ + g-bbD079.A1
IF~Global("g-dialog5","GLOBAL",0)~THEN REPLY @3 /*"Be careful, you'll catch something nasty."
 */ DO~~ + g-bbD079.A1
IF~~THEN REPLY @4 /*"I don't have time for this." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD079 g-bbD079.start2
@6 /*The woman is still sitting in the mud with her legs crossed. Her eyes are closed and she has a peaceful expression on her face, despite the fact that a leaking pipe is dripping filth onto her head. She does not seem to notice your presence. */
END
IF~Global("g-dialog5","GLOBAL",0)~THEN REPLY @8 /*"What are you doing?" */ DO~~ + g-bbD079.A1
IF~Global("g-dialog5","GLOBAL",0)~THEN REPLY @9 /*"Be careful, you'll catch something nasty." */ DO~~ + g-bbD079.A1
IF~~THEN REPLY @10 /*"I don't have time for this." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD079 g-bbD079.A1
@12 /*The woman opens one eye and glares at you with hostility. "How am I supposed to achieve enlightenment when I'm constantly being bothered by some uneducated berks?! Pike off." */
END
IF~CheckStatGT(Protagonist,14,WIS)~THEN REPLY @14 /*"You won't reach enlightenment by sitting in a puddle. You'll attain true wisdom not by closing yourself off, but by opening yourself up to others."
 */ DO~AddexperienceParty(12000)~ + g-bbD079.D1
IF~CheckStatLT(Protagonist,12,WIS) CheckStatLT(Protagonist,12,INT)~THEN REPLY @15 /*"It actually makes sense. I believe what you're saying. I hear you." */ DO~~ + g-bbD079.D1
IF~CheckStatGT(Protagonist,11,INT)~THEN REPLY @16 /*"But it defies any logic. How can you expect different results if repeating the same action so far has not produced them?" */ DO~IncrementGlobal("LAW","GLOBAL",1) AddexperienceParty(12000)~ + g-bbD079.D1
IF~CheckStatLT(Protagonist,10,INT)~THEN REPLY @17 /*"Muuuud! I like mud too! It's so sticky and wet. Although it sometimes gets under the nails and it's not so fun then." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD079.D1
IF~~THEN REPLY @18 /*"Do whatever you want. I don't have time for crazy women with sewage on their heads anyway." */ DO~~ EXIT
IF~~THEN REPLY @19 /*"Well, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD079 g-bbD079.D1
@21 /*The woman glares at you and opens her mouth as if to say something, but quickly closes it. She reminds you of a fish out of water, desperately trying to catch its breath. You both remain in deep silence for a moment. You can almost see the thoughts in her head spinning chaotically. Finally, the woman makes a decision. She snorts in your direction with superiority and closes her eyes. Apparently, she decided that ignoring you is another step towards enlightenment. */
END
IF~~THEN REPLY @23 /*"Well, I tried. Bye." */ DO~SetGlobal("g-dialog5","GLOBAL",1)~ EXIT
IF~~THEN REPLY @24 /*Leave without a word. */ DO~SetGlobal("g-dialog5","GLOBAL",1)~ EXIT