BEGIN g-bbD090
CHAIN IF~NumTimesTalkedTo(0) !Dead("g-bb087")~THEN g-bbD090 g-bbD090.start1
@0 /*You see a disheveled man shifting nervously from foot to foot as he waits for his turn to see the angel. His hands are shaking and he coughs every few moments. His skin is covered in pimples and bruises. His clothes are old, worn-out, and smell awful. */
=@1 /*The man coughs violently. "Sir! Spare some jink! Or maybe you have any stones?" */
END
IF~~THEN REPLY @3 /*"Greetings. I have some questions." */ DO~~ + g-bbD090.questions
IF~PartyGoldGT(1)~THEN REPLY @4 /*Give him a piece of copper. */ DO~TakePartyGold(1)~ + g-bbD090.jink
IF~Global("G-knowstones","GLOBAL",0)~THEN REPLY @5 /*"What kinds of stones do you mean?" */ DO~~ + g-bbD090.stones1
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @6 /*"You mean sensory stones?" */ DO~~ + g-bbD090.stones2
IF~GlobalLT("GOOD","GLOBAL",15)~THEN REPLY @7 /*"Die, scum!" */ DO~Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-alviroban","GLOBAL",1)~ EXIT
IF~~THEN REPLY @8 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Dead("g-bb087")~THEN g-bbD090 g-bbD090.start2
@10 /*"Sir! Spare some jink! Or stones!" */
END
IF~~THEN REPLY @12 /*"I have some questions." */ DO~~ + g-bbD090.questions
IF~PartyGoldGT(1)~THEN REPLY @13 /*Give him a piece of copper. */ DO~TakePartyGold(1)~ + g-bbD090.jink
IF~GlobalLT("GOOD","GLOBAL",15)~THEN REPLY @14 /*"Die, scum!" */ DO~Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-alviroban","GLOBAL",1)~ EXIT
IF~~THEN REPLY @15 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~Dead("g-bb087")~THEN g-bbD090 g-bbD090.override3
@17 /*"Sir! Don't hurt me!" */
EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.questions
@20 /*You are not sure if the man understood. He is moving his jaw as if chewing something. He nods and responds a moment later. "Yeah...?" When you look into his eyes, you see that his pupils are unnaturally dilated. */
END
IF~~THEN REPLY @22 /*"Are you unwell?" */ DO~~ + g-bbD090.question1
IF~PartyGoldGT(1)~THEN REPLY @23 /*"Take this copper coin." */ DO~TakePartyGold(1)~ + g-bbD090.jink
IF~Global("G-knowstones","GLOBAL",1)~THEN REPLY @24 /*You know perfectly what is wrong with him. "It's because of the stones, isn't it?" */ DO~~ + g-bbD090.stones2
IF~Global("G-knowstones","GLOBAL",0)~THEN REPLY @25 /*"What's up with these stones?" */ DO~~ + g-bbD090.stones1
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @26 /*"Did you mean sensory stones when we started talking?" */ DO~~ + g-bbD090.stones2
IF~GlobalLT("GOOD","GLOBAL",15)~THEN REPLY @27 /*"Die, scum!" */ DO~Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-alviroban","GLOBAL",1)~ EXIT
IF~~THEN REPLY @28 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.jink
@30 /*"Jink... Hehehehe..." He begins to laugh uncontrollably until he is interrupted by a coughing fit. */
END
IF~~THEN REPLY @32 /*"I have some questions." */ DO~~ + g-bbD090.questions
IF~GlobalLT("GOOD","GLOBAL",15)~THEN REPLY @33 /*"And I will take your life in return." */ DO~SetGlobal("G-alviroban","GLOBAL",1) Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT
IF~~THEN REPLY @34 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.question1
@36 /*He shows his shaking hands. "I can't... do anything... They keep shaking..." You notice numerous discolorations and holes on his fingers. He crosses his arms and starts rocking back and forth. "They help people like me here." */
END
IF~~THEN REPLY @38 /*"Do you come to the deva to treat you?" */ DO~~ + g-bbD090.question2
IF~~THEN REPLY @39 /*"I have some other questions." */ DO~~ + g-bbD090.questions
IF~~THEN REPLY @40 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.question2
@42 /*"D-deva? You mean the angel? He's no devil." The man breaks into another coughing fit. "Yeah, he-he helps me, he helps me... What were we talking about?" */
END
IF~~THEN REPLY @44 /*"I have some other questions." */ DO~~ + g-bbD090.questions
IF~~THEN REPLY @45 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stones1
@47 /*The man bursts into maniacal laughter. "Stones... Hehehehehe... Hehehehe..." His eyes glaze over, as if he is suddenly somewhere else. It seems he has lost touch with reality, at least for the moment. */
END
IF~~THEN REPLY @49 /*Check if you have any stones in your inventory. */ DO~~ + g-bbD090.stones3
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @50 /*"What if you went to the Civic Festhall and joined the Sensates? Maybe they'd give you access to a sensorium..." */ DO~~ + g-bbD090.sensates
IF~~THEN REPLY @51 /*Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stones2
@53 /*"Yes! I need the stones. Only they give me the power to survive... I need them, I need them..." He looks at you with pleading eyes and falls to his knees in front of you. */
END
IF~~THEN REPLY @55 /*Check if you have any stones in your inventory. */ DO~~ + g-bbD090.stones3
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @56 /*"What if you went to the Civic Festhall and joined the Sensates? Maybe they'd give you access to a sensorium..." */ DO~~ + g-bbD090.sensates
IF~~THEN REPLY @57 /*"I won't give you any. They're definitely not good for you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stones3
@59 /*"Yes! Check, check!" He bares his rotten teeth in a crooked smile and bursts into a hoarse laugh. */
END
IF~PartyHasItem("cobble")~THEN REPLY @61 /*Give him the cobblestone you took out of a zombie guide's head. */ DO~TakePartyItem("cobble")~ + g-bbD090.stonea
IF~PartyHasItem("dgem")~THEN REPLY @62 /*Give him the gem from the Moridor's box. */ DO~TakePartyItem("dgem")~ + g-bbD090.stoneb
IF~PartyHasItem("porlens")~THEN REPLY @63 /*Give him a modrons' gem - the portal lens. */ DO~TakePartyItem("porlens")~ + g-bbD090.stonec
IF~PartyHasItem("iore")~THEN REPLY @64 /*Give him a lump of iron ore from the Godsmen's Foundry. */ DO~~ + g-bbD090.stoned
IF~PartyHasItem("gullet")~THEN REPLY @65 /*Give him a strange artifact - Stone Gullet of L'Phahl the Gross. */ DO~TakePartyItem("gullet")~ + g-bbD090.stonee
IF~PartyHasItem("bsphere")~THEN REPLY @66 /*Give him the bronze sphere Pharod was looking for. */ DO~~ + g-bbD090.stonef
IF~Global("AR0601_Visited","GLOBAL",1)~THEN REPLY @67 /*"What if you went to the Civic Festhall and joined the Sensates? Maybe they'd give you access to a sensorium..." */ DO~~ + g-bbD090.sensates
IF~~THEN REPLY @68 /*"I won't give you any. They're definitely not good for you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stonea
@70 /*The man picks up the cobblestone and strokes it as if it were a small child. Suddenly, his jaw opens wider than is humanly possible, briefly revealing a bizarre, scarred esophagus. The stone vanishes into his mouth in an instant, leaving no trace. Afterward, the man's face returns to its mottled and sickly normal state, and he clutches his stomach, but nothing else happens. */
END
IF~~THEN REPLY @72 /*"All right... I have some other questions." */ DO~~ + g-bbD090.questions
IF~~THEN REPLY @73 /*He's a barmy. Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stoneb
@75 /*The man takes the gem in his hand and turns it over, examining it like a jeweler. Suddenly, his jaw drops wide open, and the stone instantly vanishes into it without a trace. Afterward, the man clutches his stomach and starts coughing. After a few seconds during which he looks as if he is about to choke, his jaw opens beyond human capacity, briefly revealing a bizarre, scarred esophagus from which he coughs up a full-sized lemure, similar to the one you have already fought... The man looks healthier, and his hands are not shaking as much anymore. However, he does not have time to reflect on his health, as he screams in terror and runs away, leaving you to deal with the consequences of your decisions. */
END
IF~~THEN REPLY @77 /*"I've defeated this thing before." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1)  CreateCreatureAtFeet("BoxDmn1") SetGlobal("G-nojunkie","GLOBAL",1)
AddexperienceParty(10000) EscapeArea() ~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stonec
@79 /*The man catches the gem in one hand and stares, mouth agape, at the beautiful refraction of the light passing through it, then puts it in said mouth and swallows it whole. A moment later, he clutches his stomach, and after a split second, in a blinding flash of yellow light, he vanishes. You wonder if it was worth losing a powerful magical item for... what you just witnessed. */
END
IF~~THEN REPLY @81 /*Leave. */ DO~ActionOverride("g-bb090",StickySinisterPoof("S029GLOW",Myself,1)) IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) DestroySelf() AddexperienceParty(10000) SetGlobal("G-nojunkie","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stoned
@83 /*"Too big, too big... even for me..." he keeps repeating. "I can't get the power out of a stone that big... Keep it." */
END
IF~~THEN REPLY @85 /*"Do you want a smaller stone?" */ DO~~ + g-bbD090.stones3
IF~~THEN REPLY @86 /*He's a barmy. Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stonee
@88 /*The man examines the stone, running his fingertips over it... and suddenly swallows it. He clutches his stomach, but nothing else happens. You wonder if it was worth losing a powerful magical item for... what you just witnessed. */
END
IF~~THEN REPLY @90 /*"I have some other questions." */ DO~~ + g-bbD090.questions
IF~~THEN REPLY @91 /*He's a barmy. Ignore the man and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stonef
@93 /*When you want to give him the bronze sphere, you feel a strange tingling at the back of your head. You know this is not something you should give to *anyone*. Especially not to someone so unpredictable. */
END
IF~~THEN REPLY @95 /*Ignore the sensation and give away the sphere. */ DO~~ + g-bbD090.stonef2
IF~~THEN REPLY @96 /*"Do you want a different stone?" */ DO~~ + g-bbD090.stones3
IF~~THEN REPLY @97 /*"I won't give it to you. These stones are definitely not good for you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.stonef2
@99 /*The man touches the sphere and suddenly pulls his hand back as if he had been burned. His expression grows serious, and his eyes begin to well up. "I wasn't ready for this." He suddenly sounds much more sober and self-aware than before. He turns his back on you. "Sir, you carry... a much heavier burden than I do," he says, then walks away in silence. */
END
IF~~THEN REPLY @101 /*Leave. */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) SetGlobal("G-nojunkie","GLOBAL",1)
AddexperienceParty(10000) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.sensates
@103 /*"Go to the Mazes, sir, they'd never take someone like me. That's a place for the rich! The moment I cross the border of the Clerk's Ward, the Harmonium will kick me out to the Lower Ward, or worse, toss me down to UnderSigil..." */
END
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @105 /*"Tell them I sent you. I'm a respected member." */ DO~~ + g-bbD090.sensates2
IF~~THEN REPLY @106 /*"I have some other questions." */ DO~~ + g-bbD090.questions
IF~~THEN REPLY @107 /*"I'll think about it. Meanwhile, bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD090 g-bbD090.sensates2
@109 /*You see a glimmer of hope in this prospectless man. Maybe your Sensate allies will know how to help him overcome his addiction, it is probably a common issue to them. "Th-thanks. Maybe they'll let me in... Maybe..." It is only when he disappears from view that you realize he did not even ask your name. */
END
IF~~THEN REPLY @111 /*Leave. */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) SetGlobal("G-nojunkie","GLOBAL",1)
AddexperienceParty(10000) EscapeArea()~ EXIT