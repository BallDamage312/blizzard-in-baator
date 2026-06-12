BEGIN g-bbD071
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD071 g-bbD071.start
@0 /*You see a rag-clad figure of a balding man, furiously rummaging through a pile of stinking waste. His skin is covered in a network of hideous scars - left by fire, acid, various blades. He is shivering, as if from cold, but the nervous twitching of his left eyelid and the tic with regular scratching of his mangled ear point to a more health-related cause for his condition. */
=@1 /*As you approach him, the man looks up at you. His eyes widen in terror. He curls into himself and lets out a whine like a wounded animal. "No! No! NO!!! Die, perish! You won't hurt me again! I won't let you, no! NO!!!" */
END
IF~~THEN REPLY @3 /*"Calm down, I won't hurt you. I don't even know you. Who are you?" */ DO~SetAnimState(Myself,ANIM_MIMEDIE)~ + g-bbD071.A1
IF~~THEN REPLY @4 /*"This must be some kind of mistake. I've never seen you before. Who are you?" */ DO~SetAnimState(Myself,ANIM_MIMEDIE)~ + g-bbD071.A1
IF~~THEN REPLY @5 /*"Do you know me? Have we met before?" */ DO~SetAnimState(Myself,ANIM_MIMEDIE)~ + g-bbD071.A1
IF~~THEN REPLY @6 /*"Hmm. Interesting. I'd better leave you alone." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD071 g-bbD071.A1
@8 /*The man seems so traumatized that he is not even listening to you. He just stares at you as if you were one of the rulers of the Abyss, the cruelest and most depraved of demons. "No! Never again! No more torture!" With surprising speed, he reaches under his robe and pulls out a knife. You brace yourself for an attack, but the blade is not turned toward you. In one swift motion, the man slits his own throat. You can only watch as his body falls to the ground, staining the mud with blood-red scarlet. He convulses for a moment before he finally stills forever.  */
END
IF~Global("Speak_With_Dead","GLOBAL",1)~THEN REPLY @10 /*Use Stories-Bones-Tell on the corpse. */ DO~~ + g-bbD071.D1
IF~NumInPartyLT(2)~THEN REPLY @11 /*Leave. */ DO~Kill(Myself)~ EXIT
IF~NumInPartyGT(2)~THEN REPLY @12 /*Leave. */ DO~Kill(Myself)~ + g-bbD071.A1A
IF~NumInPartyGT(1) NumInPartyLT(3)~THEN REPLY @13 /*Leave. */ DO~Kill(Myself)~ + g-bbD071.A1B
CHAIN IF~~THEN g-bbD071 g-bbD071.A1A
@15 /*None of your companions say anything, but you feel the weight of their gaze on you. */
END
IF~~THEN REPLY @17 /*Leave. */ DO~Kill(Myself)~ EXIT
CHAIN IF~~THEN g-bbD071 g-bbD071.A1B
@19 /*Your companion does not say anything, but you feel the weight of their gaze on you. */
END
IF~~THEN REPLY @21 /*Leave. */ DO~Kill(Myself)~ EXIT
CHAIN IF~~THEN g-bbD071 g-bbD071.D1
@23 /*You remember how to do it. You recall how Stale Mary taught you to listen to them. You know how to make corpses talk - the ones whose souls have not had time to lose themselves or transform into something else. */
=@24 /*The spark of life begins to flicker in the man's eyes once again. For a moment, he seems confused, not knowing what is happening. But he quickly becomes aware of your presence. His horrifying scream of fear and despair gradually turns into helpless sobs. The man does not react to your questions. It seems that you will get nothing out of him. */
END
IF~GlobalGT("Good","GLOBAL",-1)~THEN REPLY @26 /*"You have suffered enough. At my hands as well, it seems. Go in peace." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD071.E1
IF~GlobalLT("Good","GLOBAL",1)~THEN REPLY @27 /*"I hope you won't feel at peace even after death, you worthless scum." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD071.F1
IF~~THEN REPLY @28 /*"Keep on crying if you don't want to talk." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Kill(Myself)~ EXIT
CHAIN IF~~THEN g-bbD071 g-bbD071.E1
@30 /*The man has not known much mercy in his life, but seeing the peaceful face of the now silent corpse, you get the feeling that he can finally truly rest on the other side. */
END
IF~~THEN REPLY @32 /*Feeling relief, walk away. */ DO~Kill(Myself)~ EXIT
CHAIN IF~~THEN g-bbD071 g-bbD071.F1
@34 /*The man has not known much mercy in his life, and now you are sure that things will not be any better for him on the other side. */
END
IF~~THEN REPLY @36 /*Pleased with yourself, leave. */ DO~Kill(Myself)~ EXIT