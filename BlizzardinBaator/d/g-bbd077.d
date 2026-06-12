BEGIN g-bbD077
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD077 g-bbD077.start
@0 /*You see before you an emaciated humanoid figure, crouching on the ground with their face hidden in their hands. They are shaking miserably. This does not surprise you much, because the dirty rags they are wearing do not provide much warmth. As you get closer, you hear the man - as you can infer from his voice - mumbling to himself as he rocks back and forth. "Those eyes, they keep looking at me, they keep looking, they're always there. I can feel them. They know I know, they know I've been watching. Those eyes, those eyes..."  */
END
IF~~THEN REPLY @2 /*"What are you talking about?" */ DO~~ + g-bbD077.A1
IF~~THEN REPLY @3 /*"I don't have time for crazies." Leave. */ DO~~ EXIT
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD077 g-bbD077.start2
@6 /*The man mumbles to himself dolefully, rocking back and forth, face hidden in his hands: "Those eyes, they keep looking at me, they keep looking, they're always there. I can feel them. They know I know, they know I've been watching. Those eyes, those eyes..." */
END
IF~Global("G-knoweyes","GLOBAL",1)~THEN REPLY @8 /*"Maybe I could give you some eyes.." */ DO~~ + g-bbD077.E1
IF~Global("G-knoweyes","GLOBAL",0)~THEN REPLY @9 /*"What are you talking about?" */ DO~~ + g-bbD077.A1
IF~~THEN REPLY @10 /*"I don't have time for crazies." Leave. */ DO~~ EXIT
IF~~THEN REPLY @11 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD077 g-bbD077.A1
@13 /*Hearing your voice, the man flinches. He slowly turns his head towards you and removes his hands. He looks young, although suffering has already carved deep furrows on his face. However, his eyes attract the most attention - or rather two empty eye sockets, frighteningly dark. There are many scars and unhealed wounds around them, resembling small marks of teeth and claws. "Those eyes!" he screams like a damned man suffering torment in the Lower Planes. "Eyes!" */
END
IF~~THEN REPLY @15 /*"Maybe I could give you some eyes. After all, an open-air operation like that has never hurt anyone." */ DO~SetGlobal("G-knoweyes","GLOBAL",1)~ + g-bbD077.E1
IF~~THEN REPLY @16 /*"I don't know what happened to you, but I feel sorry for you. I hope you can find some peace. Goodbye." */ DO~SetGlobal("G-knoweyes","GLOBAL",1)~ EXIT
IF~~THEN REPLY @17 /*"Yeah, those eyes. Better be careful. Goodbye." */ DO~SetGlobal("G-knoweyes","GLOBAL",1)~ EXIT
IF~~THEN REPLY @18 /*Leave. */ DO~SetGlobal("G-knoweyes","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD077 g-bbD077.E1
@20 /*Which eye do you want to give to Isey? */
END
IF~PartyHasItem("g-bbi022")~THEN REPLY @23 /*Give him the philosopher's eye. */ DO~TakePartyItem("g-bbi022") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD077.E5
IF~PartyHasItem("g-bbi005")~THEN REPLY @24 /*Give him the fiend's eye. */ DO~TakePartyItem("g-bbi005") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD077.E6
IF~PartyHasItem("eyeglas2")~THEN REPLY @26 /*Give him the angle-less eye. */ DO~TakePartyItem("eyeglas2") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(30000)~ + g-bbD077.E8
IF~PartyHasItem("eyekal")~THEN REPLY @27 /*Give him the kaleidoscopic eye. */ DO~TakePartyItem("eyekal") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD077.E9
IF~PartyHasItem("eyekalem")~THEN REPLY @28 /*Give him the fiendish eye found in Ravel's Maze. */ DO~TakePartyItem("eyekalem") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD077.E10
IF~PartyHasItem("eyevecna")~THEN REPLY @29 /*Give him the eye of Vecna if you are certain that it is a good idea. */ DO~TakePartyItem("eyevecna") IncrementGlobal("G-eyes","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD077.E11
IF~~THEN REPLY @30 /*"That was a joke. Without them, your face looks much prettier." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)  IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD077.E3
IF~Global("G-eyes","GLOBAL",0)~THEN REPLY @31 /*"I don't think I have any spare eyes to give away... I really wanted to, but you'll have to forgive me." */ DO~~ + g-bbD077.E2
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @32 /*"I'm sorry, I don't think I have any other eye to give away. One must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
CHAIN IF~~THEN g-bbD077 g-bbD077.E2
@34 /*The man mumbles to himself dolefully, rocking back and forth: "Those eyes, those eyes..." */
END
IF~~THEN REPLY @36 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD077 g-bbD077.E3
@38 /*You gave the eyeless man false hope. His lacrimal glands, still intact, located under the skin just below the eyebrow, start to produce tears. The man mumbles to himself dolefully, rocking back and forth: "Those eyes, those eyes..."  */
END
IF~~THEN REPLY @40 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD077 g-bbD077.E4
@42 /*You put the eyeball in its place. You have to take into account that this man does not have the regenerative abilities that you do and the pain from the procedure may last several nights and the recovery may take much longer... Unless he gets an infection along the way from poking around in his eye socket. Right now he's screaming with pain. [INT_12L1] */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @44 /*"Hmm, one eye's down, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @45 /*"One eye must be enough. Open it. And see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @46 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E5
@48 /*You insert the prosthetic philosopher's eye into the eye socket. The procedure is not pleasant to watch, but eventually everything *clicks*. The patient screams. "I see... I see patterns... Of reality..." [INT_12L1]  */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @50 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @51 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @52 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E6
@54 /*You put the fiend's eye in the socket. The patient screams. He will be lucky if the infection does not kill him. "It hurts so much... And I feel so angry...!" [INT_12L1]  */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @56 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @57 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @58 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E7
@60 /*You insert the glass eye prosthesis into the eye socket. It's not pleasant to watch, but eventually it *clicks*. The patient screams. [INT_12L1] */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @62 /*"Hmm, one eye's down, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @63 /*"One eye must be enough. Open it. And see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @64 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E8
@66 /*You insert the angle-less eye prosthesis into the eye socket. The procedure is not pleasant to watch, but eventually everything *clicks*. [INT_12L1]  */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @68 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @69 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @70 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E9
@78 /*You insert a kaleidoscopic prosthesis into the eye socket. It shimmers with all the colors of the rainbow. Finally, it *clicks*. The magic eye grows into the eye socket. Surprisingly, it does not hurt the patient that much. Its incredible nature certainly contributed to reducing the suffering during the procedure. [INT_12L1]   */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @80 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @81 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @82 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E10
@84 /*You put the fiendish eye in the socket. The patient screams. He will be lucky if the infection does not kill him. The eye grows into the eyesocket. "Why... Am I thinking... About upcoming opportunities...? At a time like this...?!" [INT_12L1]  */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @86 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @87 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @88 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.E11
@90 /*You insert the eye of the legendary lich Vecna into the socket of this poor unknown man. He screams in pain during the procedure, but you can actually see his strength returning. "I feel such... Power! Such might!" [INT_12L1]   */
END
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @92 /*"Hmm, one eye out of the way, but you could use another... I'll see if I have any eyeballs to spare." */ DO~~ + g-bbD077.E1
IF~Global("G-eyes","GLOBAL",1)~THEN REPLY @93 /*"One eye must suffice. Open it and see the world." */ DO~~ + g-bbD077.F1
IF~Global("G-eyes","GLOBAL",2)~THEN REPLY @94 /*"Congratulations, you've got both eyes again!" */ DO~~ + g-bbD077.F2
CHAIN IF~~THEN g-bbD077 g-bbD077.F1
@96 /*The man slowly parts his eyelids. He takes in his surroundings with a new eye. "I... I see... And I'm not being watched...? I don't know how to thank you..." Suddenly, you notice that you are holding an object in your hand. You are not sure how did it get there.  */
END
IF~~THEN REPLY @98 /*"You're welcome. Go out into the world and see its beauty." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",3) AddexperienceParty(16000) EscapeArea()~ EXIT
IF~~THEN REPLY @99 /*"Some payment in copper would be nice." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",-1) AddexperienceParty(16000) ~ + g-bbD077.H1
IF~~THEN REPLY @100 /*"Are you sure? Even I can see the way they stare at you." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",-2) AddexperienceParty(16000) ~ + g-bbD077.H2
CHAIN IF~~THEN g-bbD077 g-bbD077.F2
@102 /*The man slowly parts his eyelids. He takes in his surroundings with a new set of eyes. "I... I see... With both eyes! And I'm not being watched...? I don't know how to thank you..." Suddenly, you notice that you are holding an object in your hand. You are not sure how did it get there.  */
END
IF~~THEN REPLY @104 /*"You're welcome. Go out into the world and see its beauty." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",2)
 AddexperienceParty(32000) EscapeArea()~ EXIT
IF~~THEN REPLY @105 /*"Some payment in copper would be nice." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",-1)  AddexperienceParty(32000) ~ + g-bbD077.H1
IF~~THEN REPLY @106 /*"Are you sure? Even I can see the way they stare at you." */ DO~GiveItemCreate("SPWI115",Protagonist,1,1,0) IncrementGlobal("GOOD","GLOBAL",-2)  AddexperienceParty(32000) ~ + g-bbD077.H2
CHAIN IF~~THEN g-bbD077 g-bbD077.H1
@108 /*"Sir, but I have nothing! I'm just a poor man! I don't even know where exactly I am!" */
END
IF~~THEN REPLY @110 /*"Forget it. You can go." */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @111 /*"What a shame. Those eyes weren't cheap. I'll have to take them away." */ DO~Enemy() EscapeArea()~ EXIT
IF~~THEN REPLY @112 /*"What's even worse, they're still watching." */ DO~IncrementGlobal("GOOD","GLOBAL",-3)~ + g-bbD077.H2
CHAIN IF~~THEN g-bbD077 g-bbD077.H2
@114 /*"No...! No! Eeeeeyeeees..." The man panics and stumbles away in a random direction.  */
END
IF~!InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @116 /*Pleased with yourself, leave. */ DO~Enemy() EscapeArea()~ EXIT
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @117 /*Pleased with yourself, leave. */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",-1)~ + g-bbD077.H3
CHAIN IF~~THEN g-bbD077 g-bbD077.H3
@119 /*Fall-from-Grace approaches the man and whispers a few words to him. She calms him down with priestly magic and shows him the correct direction to go. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @120 /*"Such cruelty is unbecoming of the man I once knew. I do not know what possessed you, but know that I am deeply disappointed." */
==g-bbd077 @121 /*Clumsily, the man tries to follow the indicated direction. */
END
IF~~THEN REPLY @123 /*"I'm sorry, I don't know why I did it. I wasn't thinking straight." */ DO~Enemy() EscapeArea() ~ EXIT
IF~~THEN REPLY @124 /*"Wasn't that funny? It was pretty damn funny to me." */ DO~Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-2)~ EXIT