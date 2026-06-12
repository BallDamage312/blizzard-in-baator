BEGIN g-bbD162
CHAIN IF~True()~THEN g-bbD162 g-bbD162.start1
@0 /*You hold a set of parchments in your hands, destined to call on the factions of Sigil to take action. These are official documents bearing the seals of the Hall of Speakers. Distributing these documents will seal the fate of the conflict in which you have become involved. */
==g-bbd162 IF~Global("g-alliesgathered","GLOBAL",0)~THEN @1 /*Included with them is a separate parchment bearing a symbol depicting a head of a horse, which, according to the accompanying instruction, is meant to summon a messenger. */
==g-bbd162 IF~Global("g-alliesgathered","GLOBAL",0)~THEN @2 /*You have sided with the Doomguard: Haer'Dalis, Raelis Shai, and the entire Beneathmask theater. To prevent the destruction of this temple of the arts, you can call upon your allies to join the Doomguard ambush in a secluded alley behind the Great Foundry. */
==g-bbd162 @3 /*^NOTE: Use this item to initiate the resolution to the faction conflict.^- */
END
IF~OR(2) Global("G-doomvsfatevsKEY","GLOBAL",8)  Global("G-doomvsfatevsKEY","GLOBAL",9) Global("g-alliesgathered","GLOBAL",0)~THEN REPLY @5 /*It is time to call on your allies. Think about who you can send a message to. */ DO~~ + g-bbD162.doomside
IF~Global("g-alliesgathered","GLOBAL",0)~THEN REPLY @6 /*Do not call on your allies yet. */ DO~~ EXIT
IF~Global("g-alliesgathered","GLOBAL",1)~THEN REPLY @7 /*Do not ride into to battle yet. You are not ready. */ DO~~ EXIT
IF~OR(2) Global("G-doomvsfatevsKEY","GLOBAL",8) Global("G-doomvsfatevsKEY","GLOBAL",9) Global("g-alliesgathered","GLOBAL",1)~THEN REPLY @8 /*It is time to lead Ulfbrand into a trap. ^0xff8c6b69Let the march begin.^- */ DO~DestroyPartyItem("g-bbi057",TRUE) SetGlobal("g-FWAMBUSH","GLOBAL",1) StartMovie("g-ambush") TeleportParty("arg-b1",[800.1024],0)~ EXIT
CHAIN IF~~THEN g-bbD162 g-bbD162.doomside
@10 /*Which representatives of the factions would you like to call upon for help in turning against the Fated? Some factions do not play well with one another so you have to be careful. */
END
IF~Global("g-batdus","GLOBAL",0) !Dead("emoric") OR(2) Global("G-Blast_From_Past","GLOBAL",2) GlobalGT("AR0205_Visited","GLOBAL",0)~THEN REPLY @12 /*Send a request to Emoric for the Dustmen's support. */ DO~SetGlobal("g-batdus","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1) IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~Global("g-batgod","GLOBAL",0) !Dead("keldor") OR(2) Global("G-Blast_From_Past","GLOBAL",2) GlobalGT("AR0503_Visited","GLOBAL",0)~THEN REPLY @13 /*Send a request to Keldor for the Godsmen's support. */ DO~SetGlobal("g-batgod","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1)  IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~Global("g-batsen","GLOBAL",0) !Dead("splinter") OR(2) Global("G-Blast_From_Past","GLOBAL",2) GlobalGT("AR0601_Visited","GLOBAL",0)~THEN REPLY @14 /*Send a request to Splinter for the Sensates' support. */ DO~SetGlobal("g-batsen","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1)  IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~Global("g-batana","GLOBAL",0) !Dead("ebb") OR(2) Global("G-Blast_From_Past","GLOBAL",2)  GlobalGT("AR0902_Visited","GLOBAL",0) GlobalGT("Know_Ebb","GLOBAL",0)~THEN REPLY @15 /*Send a request to Ebb Creakknees for the Anarchists' support. */ DO~SetGlobal("g-batana","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1)  IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~Global("g-bathar","GLOBAL",0) !Dead("ebb") OR(2) Global("G-Blast_From_Past","GLOBAL",2)  GlobalGT("AR0902_Visited","GLOBAL",0) GlobalGT("Know_Ebb","GLOBAL",0)~THEN REPLY @16 /*Send a request to Ebb Creakknees for the Harmonium's support. */ DO~SetGlobal("g-bathar","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1)  IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~Global("g-batxao","GLOBAL",0) !Dead("barking") OR(2) Global("G-Blast_From_Past","GLOBAL",2) GlobalGT("Wilder","GLOBAL",0)~THEN REPLY @17 /*You do not have much hope, but send a request to Barking-Wilder for Xaositects' support. */ DO~SetGlobal("g-batxao","GLOBAL",1) SetGlobal("g-atleast1","GLOBAL",1)  IncrementGlobal("g-alliesmath","GLOBAL",1)~ + g-bbD162.doomside
IF~GlobalGT("g-atleast1","GLOBAL",0)~THEN REPLY @18 /*You do not need anyone else. Touch the horse's head. */ DO~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) ~ + g-bbD162.doomready
IF~Global("g-batdus","GLOBAL",0) Global("g-batgod","GLOBAL",0) Global("g-batsen","GLOBAL",0) Global("g-batana","GLOBAL",0) Global("g-bathar","GLOBAL",0) Global("g-batxao","GLOBAL",0)~THEN REPLY @19 /*You do not need anyone to help me. */ DO~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) SetGlobal("g-alliesgathered","GLOBAL",1)~ + g-bbD162.start1
CHAIN IF~~THEN g-bbD162 g-bbD162.doomready
@21 /*When you touch the symbol of the horse's head, there is no visible reaction. You begin to wonder if you understood the instructions correctly or if this parchment might just be a prank played on you by some particularly mischievous faction namer. */
=@22 /*But a moment later, you hear what sounds like the clatter of hooves in the distance, growing louder and louder, as if a horse were galloping toward you, even though you do not see any such animal nearby. Suddenly, right in front of your face, a small, light-blue flame-like portal opens, and out of it... an orange horse's head peeks out. The clearly inter-dimensional horse snorts and opens its mouth wide. */
END
IF~~THEN REPLY @24 /*Stick your letters into the horse's mouth. */ DO~~ + g-bbD162.ready2
IF~~THEN REPLY @25 /*"How can... I help you?" */ DO~~ + g-bbD162.readyalt
CHAIN IF~~THEN g-bbD162 g-bbD162.readyalt
@27 /*The horse does not answer, but rolls its eyes in disapproval and snorts again, this time, however, you can clearly hear impatience in the sound. */
END
IF~~THEN REPLY @29 /*Stick your letters into the horse's mouth. */ DO~~ + g-bbD162.ready2
CHAIN IF~~THEN g-bbD162 g-bbD162.ready2
@31 /*The head retreats through the portal and disappears without a word of explanation, carrying your letters to your allies in its mouth. It looks like this will not take too long. */
END
IF~~THEN REPLY @33 /*Wait for the horse to return. */ DO~FadeToColor([20.0],0) Wait(7) AdvanceTime(1) FadeFromColor([20.0],0) ~ + g-bbD162.ready3
CHAIN IF~~THEN g-bbD162 g-bbD162.ready3
@35 /*Indeed, it did not take long. Soon, the sound of hooves echoes once more, and a moment later, the portal opens. A horse's head pokes out. this time blue, and spits the answers into your hands. The look the animal gives you before disappearing makes it seem as though, despite the different color, it was exactly the same horse. */
END
IF~~THEN REPLY @37 /*Look through the responses. */ DO~~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.answers1
@39 /*Here are the letters that arrived. */
END
IF~Global("g-batdus","GLOBAL",1) GlobalGT("Emoric_Pharod","GLOBAL",1)~THEN REPLY @41 /*Read Emoric's answer. */ DO~~ + g-bbD162.dustmenYES
IF~Global("g-batdus","GLOBAL",1) !GlobalGT("Emoric_Pharod","GLOBAL",1)~THEN REPLY @42 /*Read Emoric's answer. */ DO~~ + g-bbD162.dustmenNO
IF~Global("g-batgod","GLOBAL",1)~THEN REPLY @43 /*Read Keldor's answer. */ DO~~ + g-bbD162.godsmenYES
IF~Global("g-batsen","GLOBAL",1) OR(3) Global("G-Join_Sensates","GLOBAL",1) Global("Join_Sensates","GLOBAL",1) InParty("Grace")~THEN REPLY @44 /*Read Splinter's answer. */ DO~~ + g-bbD162.sensatesYES
IF~Global("g-batsen","GLOBAL",1) !Global("G-Join_Sensates","GLOBAL",1) !Global("Join_Sensates","GLOBAL",1) !InParty("Grace")~THEN REPLY @45 /*Read Splinter's answer. */ DO~~ + g-bbD162.sensatesNO
IF~Global("g-batana","GLOBAL",1) OR(2) Global("G-Join_Anarchists","GLOBAL",0) GlobalLT("LAW","GLOBAL",1)~THEN REPLY @46 /*Read the anonymous answer. */ DO~~ + g-bbD162.anarchistsYES
IF~Global("g-batana","GLOBAL",1) !Global("G-Join_Anarchists","GLOBAL",0) !GlobalLT("LAW","GLOBAL",1)~THEN REPLY @47 /*Read the anonymous answer. */ DO~~ + g-bbD162.anarchistsNO
IF~Global("g-bathar","GLOBAL",1) GlobalGT("LAW","GLOBAL",1) Global("G-wanted","GLOBAL",0)~THEN REPLY @48 /*Read Ebb's answer. */ DO~~ + g-bbD162.harmoniumYES
IF~Global("g-bathar","GLOBAL",1) !GlobalGT("LAW","GLOBAL",1) Global("G-wanted","GLOBAL",0)~THEN REPLY @49 /*Read Ebb's answer. */ DO~~ + g-bbD162.harmoniumNO
IF~Global("g-bathar","GLOBAL",1) Global("G-wanted","GLOBAL",1)~THEN REPLY @50 /*Read Ebb's answer. */ DO~~ + g-bbD162.harmoniumNONO
IF~Global("g-batxao","GLOBAL",1) OR(3) Global("G-Join_Chaosmen","GLOBAL",1) GlobalGT("Join_Chaosmen","GLOBAL",0) GlobalLT("Law","GLOBAL",-10) ~THEN REPLY @51 /*Read Barking-Wilder's answer?! */ DO~~ + g-bbD162.xaositectsYES
IF~Global("g-batxao","GLOBAL",1) !Global("G-Join_Chaosmen","GLOBAL",1) !GlobalGT("Join_Chaosmen","GLOBAL",0) !GlobalLT("Law","GLOBAL",-10) ~THEN REPLY @52 /*Read Barking-Wilder's answer?! */ DO~~ + g-bbD162.xaositectsNO
IF~~THEN REPLY @53 /*That is all of them. You did not miss any. */ DO~SetGlobal("g-alliesgathered","GLOBAL",1)~ + g-bbD162.start1
CHAIN IF~~THEN g-bbD162 g-bbD162.dustmenYES
@55 /*"Nameless One,
To avoid an escalation of the conflict in Sigil, we agree to help, especially since the Doomguard are our close allies. Of course, we will lend our mages.

Sincerely,
Emoric,
Factor of the Dustmen Faction" */
END
IF~~THEN REPLY @57 /*Check the other letters. */ DO~SetGlobal("g-batdus","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.dustmenNO
@59 /*"Nameless One,
We cannot help. You know what you did.

Sincerely,
Emoric,
Factor of the Dustmen Faction" */
END
IF~~THEN REPLY @61 /*Check the other letters. */ DO~SetGlobal("g-batdus","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.godsmenYES
@63 /*"Hello, Comrade!

It looks like the battle will take place right outside our walls. Remember, this is a test. We will treat it as such as well. We will send armed reinforcements.

Sincerely,
Keldor of Durian" */
END
IF~~THEN REPLY @65 /*Check the other letters. */ DO~SetGlobal("g-batgod","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.godsmenNO
@67 /*"Dear Sir,

Unfortunately, we must decline your inquiry. Our response is based on the severance of cooperation upon your separation from our faction.

Sincerely,
Keldor of Durian" */
END
IF~~THEN REPLY @69 /*Check the other letters. */ DO~SetGlobal("g-batgod","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.sensatesYES
@71 /*"Dear Friend,

Although the Doomguard are not close to us, you and your companions are. So we will help you in your time of need.

Take care,
Splinter,
Son of Isahar and Priest-King of Ur" */
END
IF~~THEN REPLY @73 /*Check the other letters. */ DO~SetGlobal("g-batsen","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.sensatesNO
@75 /*"Dear Sir,

We regretfully decline your inquiry. Our response is based on the severance of cooperation upon your separation from our faction.

Sincerely,

Splinter,
Son of Isahar and Priest-King of Ur" */
END
IF~~THEN REPLY @77 /*Check the other letters. */ DO~SetGlobal("g-batsen","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.anarchistsYES
@79 /*The letter is short. "AGREED."It must have come from the Anarchists. */
END
IF~~THEN REPLY @81 /*Check the other letters. */ DO~SetGlobal("g-batana","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.anarchistsNO
@83 /*The letter is short. "Not possible. You've offended someone. Take care of yourself."  It must have come from the Anarchists. */
END
IF~~THEN REPLY @85 /*Check the other letters. */ DO~SetGlobal("g-batana","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.harmoniumYES
@87 /*"We'll help. We can't let this kind of disorder happen on our streets. Hang in there.
Ebb" */
END
IF~~THEN REPLY @89 /*Check the other letters. */ DO~SetGlobal("g-bathar","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.harmoniumNO
@91 /*"Sorry, friend. I was unable to convince those above. Take care.
Ebb" */
END
IF~~THEN REPLY @93 /*Check the other letters. */ DO~SetGlobal("g-bathar","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.harmoniumNONO
@95 /*"You are aware, that you are wanted, my friend? We cannot associate with you. Be grateful we will not send a patrol to intercept you.
Ebb" */
END
IF~~THEN REPLY @97 /*Check the other letters. */ DO~SetGlobal("g-bathar","GLOBAL",-2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.xaositectsYES
@99 /*The letter is folded in such a way that if thrown it can fly like a paper bird. The writing is sloppy and barely legible. "BARKING CLAN STARVED DOGS HELP?! YOUR ALSO SOMEONE" */
END
IF~~THEN REPLY @101 /*Check the other letters. */ DO~SetGlobal("g-batxao","GLOBAL",2)~ + g-bbD162.answers1
CHAIN IF~~THEN g-bbD162 g-bbD162.xaositectsNO
@103 /*The letter is folded in such a way that if thrown it can fly like a paper bird. The writing is sloppy and barely legible. "DEAR SIR, CHAOS. TOO LITTLE. NEW OPENING." */
END
IF~~THEN REPLY @105 /*Check the other letters. */ DO~SetGlobal("g-batxao","GLOBAL",-2)~ + g-bbD162.answers1