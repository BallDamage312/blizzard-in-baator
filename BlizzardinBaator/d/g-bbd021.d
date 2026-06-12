BEGIN g-bbD021
CHAIN IF~Global("G-know_tripler","GLOBAL",0) CheckStatLT(Protagonist,18,WIS)~THEN g-bbD021 g-bbD021.start1
@0 /*Your eyes catch sight of a tall skeleton standing motionless by the table. As you follow its imaginary gaze peering out from empty eye sockets, you notice three mugs on the table, forming the vertices of a perfect triangle. After a moment, you also look at its collarbones, from which three medallions hang. */
END
IF~GlobalGT("G-triplerquest","GLOBAL",9)~THEN REPLY @2 /*Repeat thrice: "Paw, you're free." */ DO~SetGlobal("G-triplerfree","GLOBAL",1)~ + g-bbD021.triplerfinale
IF~GlobalGT("G-triplerquest","GLOBAL",7) GlobalLT("G-triplerquest","GLOBAL",10)~THEN REPLY @3 /*Repeat thrice: "Your name is Paw, isn't it?" */ DO~~ + g-bbD021.tripler1
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @4 /*"Is there anything interesting about these mugs?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @5 /*"What are you doing?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @6 /*"I've got a few questions." */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @7 /*"Can you hear me?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~CheckStatGT(Protagonist,17,WIS) GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @8 /*"Do we know each other?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~Global("G-plagueof3","GLOBAL",1) GlobalLT("G-triplerquest","GLOBAL",3)~THEN REPLY @9 /*"Do you know anything about the plague of threes?" */ DO~SetGlobal("G-triplerquest","GLOBAL",3) SetGlobal("G-know_tripler","GLOBAL",1)~ JOURNAL @20230 + g-bbD021.noresponse2
IF~~THEN REPLY @10 /*Leave. */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ EXIT
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @11 /*Attack it. "Death to the undead!" */ DO~SetGlobal("G-know_tripler","GLOBAL",1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) ~ EXIT
CHAIN IF~Global("G-know_tripler","GLOBAL",0) CheckStatGT(Protagonist,17,WIS)
~THEN g-bbD021 g-bbD021.start2
@13 /*Your eyes catch sight of a tall skeleton standing motionless by the table. As you follow its imaginary gaze peering out from empty eye sockets, you notice three mugs on the table, forming the vertices of a perfect triangle. After a moment, you also look at its collarbones, from which three medallions hang. */
=@14 /*As you look at it... The deader suddenly seems familiar to you in some way. */
END
IF~GlobalGT("G-triplerquest","GLOBAL",9)~THEN REPLY @16 /*Repeat thrice: "Paw, you're free." */ DO~~ + g-bbD021.triplerfinale
IF~GlobalGT("G-triplerquest","GLOBAL",7) GlobalLT("G-triplerquest","GLOBAL",10)~THEN REPLY @17 /*Repeat thrice: "Your name is Paw, isn't it?" */ DO~~ + g-bbD021.tripler1
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @18 /*"Is there anything interesting about these mugs?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @19 /*"What are you doing?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @20 /*"I've got a few questions." */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @21 /*"Can you hear me?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~CheckStatGT(Protagonist,17,WIS) GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @22 /*"Do we know each other?" */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ + g-bbD021.noresponse
IF~Global("G-plagueof3","GLOBAL",1) GlobalLT("G-triplerquest","GLOBAL",3) GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @23 /*"Do you know anything about the plague of threes?" */ DO~SetGlobal("G-triplerquest","GLOBAL",3) SetGlobal("G-know_tripler","GLOBAL",1)~ JOURNAL @20230 + g-bbD021.noresponse2
IF~~THEN REPLY @24 /*Leave. */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ EXIT
IF~~THEN REPLY @25 /*Attack it. "Death to the undead!" */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-know_tripler","GLOBAL",1)~ EXIT
CHAIN IF~Global("G-know_tripler","GLOBAL",1)~THEN g-bbD021 g-bbD021.start3
@27 /*Your eyes catch sight of a tall skeleton standing motionless by the table. As you follow its imaginary gaze peering out from empty eye sockets, you notice three mugs on the table, forming the vertices of a perfect triangle. After a moment, you also look at its collarbones, from which three medallions hang. */
END
IF~GlobalGT("G-triplerquest","GLOBAL",9)~THEN REPLY @29 /*Repeat thrice: "Paw, you're free." */ DO~~ + g-bbD021.triplerfinale
IF~GlobalGT("G-triplerquest","GLOBAL",7) GlobalLT("G-triplerquest","GLOBAL",10)~THEN REPLY @30 /*Repeat thrice: "Your name is Paw, isn't it?" */ DO~~ + g-bbD021.tripler1
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @31 /*"Is there anything interesting about these mugs?" */ DO~~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @32 /*"What are you doing?" */ DO~~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @33 /*"I've got a few questions." */ DO~~ + g-bbD021.noresponse
IF~GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @34 /*"Can you hear me?" */ DO~~ + g-bbD021.noresponse
IF~CheckStatGT(Protagonist,17,WIS) GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @35 /*"Do we know each other?" */ DO~~ + g-bbD021.noresponse
IF~Global("G-plagueof3","GLOBAL",1) GlobalLT("G-triplerquest","GLOBAL",3) GlobalLT("G-triplerquest","GLOBAL",8)~THEN REPLY @36 /*"Do you know anything about the plague of threes?" */ DO~SetGlobal("G-triplerquest","GLOBAL",3)~ JOURNAL @20230 + g-bbD021.noresponse2
IF~Global("Speak_with_Dead","GLOBAL",1)~THEN REPLY @37 /*Use your Stories-Bones-Tell power on the skeleton. */ DO~~ + g-bbD021.noresponse
IF~~THEN REPLY @38 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.start4
@40 /*Tripler, or Paw, is sitting by his mugs set in a triangle. */
END
IF~GlobalGT("G-triplerquest","GLOBAL",9)~THEN REPLY @42 /*Repeat thrice: "Paw, you're free." */ DO~~ + g-bbD021.triplerfinale
IF~~THEN REPLY @43 /*Repeat thrice: "Tell me again, what was the name of the bartender you sold the key to?" */ DO~~ + g-bbD021.remind
IF~~THEN REPLY @44 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.noresponse
@46 /*The skeleton does not react. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~ THEN @47 /*"This never gets old, does it, chief?" */
END
IF~Global("Speak_with_Dead","GLOBAL",1)~THEN REPLY @49 /*Use your Stories-Bones-Tell power on the skeleton. */ DO~~ + g-bbD021.noresponse1
IF~~THEN REPLY @50 /*"Well, it was nice chatting, but it's time for me to go." */ DO~SetGlobal("G-Tripler_Chaotic","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @51 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.noresponse1
@53 /*The skeleton does not react despite your use of the ability. Either it is too old to retain any remnants of its mind, or it is deliberately ignoring you. Or perhaps the problem is more complex. */
END
IF~~THEN REPLY @55 /*"Well, it was nice chatting, but it's time for me to go." */ DO~SetGlobal("G-Tripler_Chaotic","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @56 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.noresponse2
@58 /*The skeleton does not react. Perhaps you should ask the local innkeepers about it. */
END
IF~~THEN REPLY @60 /*"Well, it was nice chatting, but it's time for me to go." */ DO~SetGlobal("G-Tripler_Chaotic","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @61 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.tripler1
@63 /*Just when you are about to give up hope, the skeleton's jaw begins to move, and for the first time you hear its voice. "I haven't used that name in years... I haven't used that name in years... I haven't used that name in years..." */
END
IF~~THEN REPLY @65 /*Repeat thrice: "Listen, I need the missing part of the key to the Fated armory." */ DO~~ + g-bbD021.tripler2
CHAIN IF~~THEN g-bbD021 g-bbD021.tripler2
@67 /*"Liar, you'll never get your hands on it! Liar, you'll never get your hands on it! Liar, you'll never get your hands on it!" */
END
IF~~THEN REPLY @69 /*Repeat thrice: "Listen, I know this is strange... But the man you're remembering is no longer alive. I look like him, but I have my own new consciousness." */ DO~~ + g-bbD021.tripler3a
IF~~THEN REPLY @70 /*Repeat thrice: "I don't care what you think of me, but it would be better for everyone if you gave me that key fragment." */ DO~~ + g-bbD021.tripler3a
IF~~THEN REPLY @71 /*Repeat thrice: "Give me the key fragment. Don't make me repeat myself." */ DO~~ + g-bbD021.tripler3a
CHAIN IF~~THEN g-bbD021 g-bbD021.tripler3a
@73 /*"You won't put the blinds on me a second time! You won't put the blinds on me a second time! You won't put the blinds on me a second time!" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~ THEN @74 /*"Chief, my head hurts..." */
==g-bbD021 @75 /*"I... I could have saved her, but she died because of you! I... I could have saved her, but she died because of you! I... I could have saved her, but she died because of you!" */
==g-bbD021 @76 /*"Now I suffer every day and can't truly die... Now I suffer every day and can't truly die... Now I suffer every day and can't truly die..." */
END
IF~~THEN REPLY @78 /*Repeat thrice: "You may not believe me, but I understand your suffering. I'm going through something similar. The *past* me put a curse on you and it will last until its conditions are met. Show me the location of the key fragment, and then you can rest from this madness." */ DO~~ + g-bbD021.tripler4
CHAIN IF~~THEN g-bbD021 g-bbD021.tripler4
@80 /*The skeleton is silent for a moment. "Zegonz Vlaric has the fragment. I sold it to him while I used to be alive as a charm. Zegonz Vlaric has the fragment. I sold it to him while I used to be alive as a charm. Zegonz Vlaric has the fragment. I sold it to him while I used to be alive as a charm." */
END
IF~~THEN REPLY @82 /*Repeat thrice: "So you haven't been coming back to the Oarsman for nothing. Don't go anywhere, I have to talk to a certain bartender..." */ DO~SetGlobal("G-triplerquest","GLOBAL",9)~ SOLVED_JOURNAL @20236 EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.remind
@84 /*"Zegonz Vlaric from the Styx Oarsman has the fragment. I sold it to him. Zegonz Vlaric from the Styx Oarsman has the fragment. I sold it to him. Zegonz Vlaric from the Styx Oarsman has the fragment. I sold it to him." */
END
IF~~THEN REPLY @86 /*Repeat thrice: "Thanks for the reminder." */ DO~~ + g-bbD021.remind1
CHAIN IF~~THEN g-bbD021 g-bbD021.remind1
@88 /*"You're welcome. You're welcome. You're welcome." */
END
IF~~THEN REPLY @90 /*Leave. */ DO~SetGlobal("G-know_tripler","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD021 g-bbD021.triplerfinale
@92 /*"Am I? Am I? Am I? Thanks to you thrice! Thanks to you thrice! Thanks to you thri...!" Tripler falls on the tavern's floor and crumbles. */
END
IF~~THEN REPLY @94 /*"Rest in peace, Paw." */ DO~IncrementGlobal("GOOD","GLOBAL",1) AddexperienceParty(33333)
 Kill("g-bb021") Kill("g-bb022") Kill("g-bb023") ~ EXIT
IF~~THEN REPLY @95 /*"Rust in pieces, damn thief." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) Kill("g-bb021") Kill("g-bb022") Kill("g-bb023") AddexperienceParty(33333)~ EXIT
IF~~THEN REPLY @96 /*Leave. */ DO~Kill("g-bb021") Kill("g-bb022") Kill("g-bb023") AddexperienceParty(33333)
~ EXIT