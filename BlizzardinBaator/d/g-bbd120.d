BEGIN g-bbD120
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD120 g-bbD120.start1
@0 /*A strange scene is unfolding in the distance in front of you. You see two people at the edge of the cliff. One of them is a young woman in fashionable green clothes that are now dirty and torn, as if the owner has stopped caring about anything. The other is a potbellied man in an elegant suit, standing right next to her. His face, with pointed features and a prominent nose, has something rat-like about it – even more so with his slicked-back light brown hair that resembles fur. The man recites something for a while, waving his hands as if to emphasize the importance of what he is saying. From afar, you cannot hear the words, but the pantomime makes you think of a vendor at a market, hawking his wares. The woman listens to him with a blank look. She seems completely indifferent.  */
=@1 /*The man produces a piece of parchment from his breast pocket, then unrolls it in front of the woman, handing her a quill pen at the same time. The woman reaches for it automatically, running it across the paper with apathy. She has barely made the last stroke when the man almost yanks the pen away from her, baring his teeth in a self-satisfied smile. */
=@2 /*The numb woman turns away from him as if he does not exist. She closes her eyes, then lurches forward. You see her fall out of your sight, disappearing in the void below. */
END
IF~~THEN REPLY @4 /*Continue. */ DO~ActionOverride("g-bb225",SetAnimState(Myself,ANIM_MIMEDIE) ) ActionOverride("g-bb225",DestroySelf()) SetGlobal("g-malahaicut","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-malahaicut","GLOBAL",1)~THEN g-bbD120 g-bbD120.34
@7 /*The man finally notices you. He beckons you over with an inviting gesture. When you approach, he bows to you. Politeness is plastered to his face, but he radiates deceit brighter than a lighthouse in the darkness of the night. "Hello, dear sir! What a terrible, terrible world! Not a glimmer of hope to find! The only rational thing to do is to kill yourself and end your suffering, right? I suppose you'll be jumping too, won't you?" */
END
IF~~THEN REPLY @9 /*"What are you talking about?" */ DO~SetGlobal("g-malahaicut","GLOBAL",0)~ + g-bbD120.A1
CHAIN IF~NumTimesTalkedToGT(0) Global("g-mahalai","GLOBAL",0)~THEN g-bbD120 g-bbD120.start2
@12 /*"Ah, it's you. Have you changed your mind? Perhaps you'll sign the document and jump after all?" Mahalai smiles at you ingratiatingly. */
END
IF~~THEN REPLY @14 /*"Definitely not." */ DO~~ + g-bbD120.C1
IF~~THEN REPLY @15 /*"Even if I wanted to, it wouldn't be that easy." */ DO~~ + g-bbD120.D1
CHAIN IF~NumTimesTalkedToGT(0) Global("g-mahalai","GLOBAL",1)~THEN g-bbD120 g-bbD120.start3
@17 /*"Oh, it's you. Have you changed your mind? Will you jump after all?" Mahalai smiles at you ingratiatingly. */
END
IF~~THEN REPLY @19 /*"No, I won't jump." */ DO~~ + g-bbD120.U1
IF~~THEN REPLY @20 /*"Alright. I'll jump." */ DO~~ + g-bbD120.T1
IF~~THEN REPLY @21 /*"I have to think this through. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.A1
@23 /*The man seems confused. "Don't you want to make a deal with me... and commit suicide?" */
END
IF~~THEN REPLY @25 /*"Definitely not." */ DO~~ + g-bbD120.C1
IF~~THEN REPLY @26 /*"Even if I wanted to, it wouldn't be that easy." */ DO~~ + g-bbD120.D1
IF~~THEN REPLY @27 /*Lie: "Maybe I would. What's that to you?" */ DO~~ + g-bbD120.E1
IF~~THEN REPLY @28 /*"There's something very wrong with you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.C1
@30 /*The man seems genuinely concerned. Most likely not about your fate. "But why? Life is horrible and meaningless! Only toil and suffering await us. Wouldn't it be better to end it all quickly and painlessly? And while at it, help your fellow man and perform a good deed before death to ensure your eternity in the Upper Planes?" */
END
IF~~THEN REPLY @32 /*"Good deed? What do you mean?" */ DO~~ JOURNAL @6029 + g-bbD120.F1
IF~~THEN REPLY @33 /*"I don't care. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.D1
@35 /*The man clearly does not understand the full meaning of your words, but he nods with mock sympathy anyway. "Of course, of course, these things are very difficult. But the truth is that life is horrible and meaningless! Only toil and suffering await us. Wouldn't it be better to end it all quickly and painlessly? And while at it, help your fellow man and perform a good deed before death to ensure your eternity in the Upper Planes?" */
END
IF~~THEN REPLY @37 /*"Good deed? What do you mean?" */ DO~~ JOURNAL @6029 + g-bbD120.F1
IF~~THEN REPLY @38 /*"I don't care. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.E1
@40 /*The man's face lights up instantly. "Excellent! A very brave decision, bravo! I support it with all my heart! It just so happens that I am exactly the person you need! After all, wouldn't you like to go to the afterlife having performed a good deed and helped your fellow man, thus ensuring your eternity in the Upper Planes?" */
END
IF~~THEN REPLY @42 /*"Good deed? What do you mean?" */ DO~~ JOURNAL @6029 + g-bbD120.F1
IF~~THEN REPLY @43 /*"I don't care. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.F1
@45 /*"I'll explain, I'll explain. My name is Mahalai Trevisti and I'm a member of the Fated. I don't know if you've heard of us, but we're an association of people who are... resourceful. And also highly altruistic! For example, I'm waiting here, at the Suicide Falls, to relieve the burden of this mortal coil from the shoulders of those who decide to take the final step. Thanks to the fact that they sign over their fortune to me before the jump, they can enter the afterlife unburdened by destructive materialism, and, at the same time, their generosity earns them points with the powers of good. A perfect arrangement, everyone benefits from it! So what do you say to that? A quick signature, one tiny leap, and then a golden future in the land of angels?" */
END
IF~~THEN REPLY @47 /*"No, I'm not interested." */ DO~~ + g-bbD120.H1
IF~~THEN REPLY @48 /*"Sounds... interesting. Show me the contract." */ DO~~ + g-bbD120.I1
IF~~THEN REPLY @49 /*"People like you are the cause of the moral rot that is eating away at this city. It's you who will go to the land of angels today... although, to be honest, you seem to be heading towards the Lower Planes." */ DO~Enemy() EscapeArea() IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("g-fatedpower","GLOBAL",-1)~ JOURNAL @6030 EXIT
IF~InParty("Vhail") !StateCheck("!Vhail",CD_STATE_NOTVALID) ~THEN REPLY @50 /*"Vhailor, don't you think a great injustice has been done here?" */ DO~IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("g-fatedpower","GLOBAL",-1)~ JOURNAL @6030 + g-bbD120.V1
IF~~THEN REPLY @51 /*Attack."Maybe I'll relieve the burden of this mortal coil from your shoulders?" */ DO~Enemy() EscapeArea() IncrementGlobal("g-fatedpower","GLOBAL",-1)~ JOURNAL @6030 EXIT
IF~~THEN REPLY @52 /*"I think you lost your mind. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.H1
@54 /*Mahalai sighs heavily and shakes his head. "I understand, I understand. It's a difficult decision. But if you choose to make it, I'll be here waiting." */
END
IF~~THEN REPLY @56 /*"I changed my mind, show me the contract." */ DO~~ + g-bbD120.I1
IF~~THEN REPLY @57 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.I1
@59 /*Mahalai's hand moves so quickly that your eyes have trouble following it. From his breast pocket, he produces a rolled parchment, which he swiftly unrolls and hands to you with reverence. In his other hand, he already has a quill ready. He stares at you intensely like a predator moments before devouring its prey. */
END
IF~CheckStatGT(Protagonist,19,INT)~THEN REPLY @61 /*Read the contract... */ DO~SetGlobal("g-mahalai","GLOBAL",1)~ + g-bbD120.K
IF~CheckStatGT(Protagonist,12,INT) CheckStatLT(Protagonist,20,INT)~THEN REPLY @62 /*Read the contract... */ DO~SetGlobal("g-mahalai","GLOBAL",1)~ + g-bbD120.L
IF~CheckStatLT(Protagonist,13,INT)~THEN REPLY @63 /*Read the contract... */ DO~SetGlobal("g-mahalai","GLOBAL",1)~ + g-bbD120.M
IF~InParty("Grace") !StateCheck("!Grace",CD_STATE_NOTVALID) ~THEN REPLY @64 /*"Fall-from-Grace, what do you think of this document?" */ DO~~ + g-bbD120.W1
IF~~THEN REPLY @65 /*"I don't have time for such nonsense." You hand the parchment back to Mahalai and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.K
@67 /*You take a close look at the contract. At first glance, everything seems fine. The person writes their name in the appropriate place, thus donating to Mahalai everything they owned in life. However, the longer you read the text, the more mistakes and oversights you notice. Commas in the wrong places, ambivalent wording, an imprecise provision regarding the transfer of property... You are convinced that if you sign this document, Mahalai will have to give everything he owns to you. */
END
IF~~THEN REPLY @69 /*He who lives by the sword, dies by the sword. With a smile on your face, you sign the document. */ DO~~ + g-bbD120.Kcont
IF~~THEN REPLY @70 /*"You know what, I've changed my mind." You hand the parchment back to Mahalai. */ DO~~ + g-bbD120.M1
IF~~THEN REPLY @71 /*"I don't have time for such nonsense." You hand the parchment back to Mahalai and leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.Kcont
@73 /*Mahalai, on cloud nine, reaches out to take the parchment from you. But you stop him with a smile as cold as steel. */
END
IF~~THEN REPLY @75 /*"Not so fast. I think I'll keep this document. After all, I'll own all your assets after your death."  */ DO~~ + g-bbD120.Kcont1
CHAIN IF~~THEN g-bbD120 g-bbD120.Kcont1
@77 /*Mahalai looks at you baffled as you patiently explain your interpretation of the contract, pointing out all the loopholes and ambiguities you intend to exploit. As you speak, the man's face becomes more and more twisted in fury. Finally, he lets out a frustrated cry and reaches out for the parchment, ripping it out of your hands. */
END
IF~~THEN REPLY @79 /*Look at him menacingly. "If you try to take this document from me, it will be the last thing you do in your life, and I will become instantly rich." */ DO~~ + g-bbD120.P1
IF~~THEN REPLY @80 /*Why not help your luck a little? Shove him. Let him fall over the edge. */ DO~~ + g-bbD120.R1
IF~~THEN REPLY @81 /*Let him take your parchment. */ DO~~ + g-bbD120.O1
CHAIN IF~~THEN g-bbD120 g-bbD120.L
@83 /*You look closely at the contract, but the language is so formal and specific that you don't understand much of its intricacies. It seems to you that if you sign it, everything you own will go to Mahalai after your death. And since you are immortal... */
END
IF~~THEN REPLY @85 /*"You know what, I've changed my mind." You hand the parchment back to Mahalai. */ DO~~ + g-bbD120.M1
IF~~THEN REPLY @86 /*Sign the document. */ DO~~ + g-bbD120.L1
CHAIN IF~~THEN g-bbD120 g-bbD120.M
@88 /*You look closely at the contract, but the language is so formal and specific that you don't understand much of its intricacies. It seems to you that if you sign, everything you own will go to Mahalai after your death. You are not sure how that would work in your case, since you cannot die. You decide not to sign the document. */
END
IF~~THEN REPLY @90 /*"You know what, I've changed my mind." You hand the parchment back to Mahalai. */ DO~~ + g-bbD120.M1
CHAIN IF~~THEN g-bbD120 g-bbD120.O1
@92 /*Furiously, Mahalai takes the document. Contrary to your expectations, he does not tear it to shreds. Instead, you hear the man begin to hurl foul curses and bemoan the state of the world where you cannot trust anyone anymore. He ends his tirade with a threat that you will see each other in court. He marches away, seething with anger. */
END
IF~~THEN REPLY @94 /*"Well. This could be interesting." */ DO~AddexperienceParty(10000) SetGlobal("g-mahalai","GLOBAL",2) EscapeArea() IncrementGlobal("g-fatedpower","GLOBAL",-2)~ JOURNAL @6031 EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.P1
@96 /*Mahalai pales like a sheet, but he seems to get the message - he does not come any closer. Instead, you hear the man begin to hurl foul curses and bemoan the state of the world where you cannot trust anyone anymore. He ends his tirade with a threat that you will see each other in court. He marches away, seething with anger. */
END
IF~~THEN REPLY @98 /*"Well. This could be interesting." */ DO~AddexperienceParty(10000) SetGlobal("g-mahalai","GLOBAL",2) EscapeArea() IncrementGlobal("g-fatedpower","GLOBAL",-2)~ JOURNAL @6031 EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.R1
@100 /*Unceremoniously, you shove Mahalai. The attack comes as a surprise, so he does not resist. Inertia drags him over the edge. You watch impassively as his body hits the water surface and disappears into the churning depths. If you ever make it to the Hall of Records, you can take back what is rightfully yours. */
END
IF~~THEN REPLY @102 /*"Only the strongest will survive. And the richest." */ DO~AddexperienceParty(10000) SetGlobal("g-mahalai","GLOBAL",1) Kill(Myself) Deactivate(Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("g-fatedpower","GLOBAL",-1)~ JOURNAL @6030 EXIT
IF~~THEN REPLY @103 /*Do not say anything and leave. */ DO~AddexperienceParty(10000) SetGlobal("g-mahalai","GLOBAL",1) Kill(Myself) Deactivate(Myself) IncrementGlobal("g-fatedpower","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1)~ JOURNAL @6030 EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.L1
@105 /*Mahalai takes the parchment from you, grinning as if it is the best day of his life. He rolls up the contract quickly and tucks it under his shirt. "Thank you, thank you very much. I'm sure all the celestials will look upon this good deed favorably. I won't bother you any further. Please jump in peace." */
END
IF~~THEN REPLY @107 /*"I changed my mind, I won't jump." */ DO~~ + g-bbD120.S1
IF~~THEN REPLY @108 /*"Alright. I'll jump." */ DO~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)~ + g-bbD120.T1
CHAIN IF~~THEN g-bbD120 g-bbD120.T1
@110 /*This time death by drowning or being thrown out to the Outlands was not written in the stars for you. The water carried you towards the cliffs, where you caught yourself on a protruding boulder. With considerable difficulty, you managed to climb up the almost vertical wall. You are safe and sound, although completely soaked. You stand before Mahalai, who is both irritated and impressed. "Well, well, congratulations. Not many people survive such a jump. The powers must be watching over you. Oh well, don't lose hope! You can always try again! You'll manage eventually!" */
END
IF~~THEN REPLY @112 /*"I changed my mind, I won't jump." */ DO~~ + g-bbD120.S1
IF~~THEN REPLY @113 /*"Alright. I'll jump again." */ DO~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)~ + g-bbD120.T1
CHAIN IF~~THEN g-bbD120 g-bbD120.S1
@115 /*Mahalai frowns. "What do you mean, you won't jump? You wanted to kill yourself. Don't throw away your dreams of death! You can solve all your problems so easily! One tiny leap and that's it!" He looks at you almost pleadingly. */
END
IF~~THEN REPLY @117 /*"No, I won't jump." */ DO~~ + g-bbD120.U1
IF~~THEN REPLY @118 /*"Alright. I'll jump." */ DO~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0)~ + g-bbD120.T1
CHAIN IF~~THEN g-bbD120 g-bbD120.M1
@120 /*Mahalai tries to stay calm, but he is unable to hide his disappointment. If he could, he would grab your wrist and guide it to sign that sodded thing himself. "I understand, it's a big decision. Well, I'll be here if you change your mind." */
END
IF~~THEN REPLY @122 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.U1
@124 /*Mahalai is not happy with your decision. He gives you an intense look of a disappointed parent. He sighs. "Fine, death is not a rabbit, it will not run away. I will wait here until you change your mind. However, if you're planning to die somewhere else, I would appreciate a notice in advance. Less paperwork." */
END
IF~~THEN REPLY @126 /*"I'll definitely let you know when I'm dying. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @127 /*"Forget it. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.V1
@129 /*The man turns pale upon seeing the Mercykiller and starts to run away. */
==DVhail @130 /**Liar!* [VHA138] */
END
IF~~THEN REPLY @132 /*Pursue the fraud! */ DO~IncrementGlobal("g-fatedpower","GLOBAL",-1) ActionOverride("g-bb120",ForceAttack("Vhail",Myself)) ActionOverride("g-bb120",Enemy()) ActionOverride("g-bb120",RandomRun()) SetGlobal("g-mahalai","GLOBAL",3) Wait(6) ActionOverride("g-bb120",EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD120 g-bbD120.W1
@134 /*Together with Grace you take a close look at the contract. At first glance, everything looks fine. The person writes their name in the appropriate place, donating to Mahalai everything they owned in life. However, the longer you read the text, the more mistakes and oversights you notice. Commas in the wrong places, ambivalent wording, an imprecise provision regarding the transfer of property... */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @135 /*"It is you who will own all Mahalai's assets after his death." Mahalai looks at her in bafflement, so she patiently explains her interpretation of the contract, pointing out all the loopholes and ambiguities one could exploit. [FFG085] */
==g-bbd120 @136 /*As Grace speaks, the man's face twists more and more in fury. Finally, he lets out a frustrated cry and reaches out for the parchment, trying to rip it out of your hands. */
END
IF~~THEN REPLY @138 /*Let him take your parchment. */ DO~~ + g-bbD120.O1
IF~~THEN REPLY @139 /*Sign the document. */ DO~~ + g-bbD120.Extra1
CHAIN IF~~THEN g-bbD120 g-bbD120.Extra1
@141 /*"No, no, no! Give it back right here, berk!" */
END
IF~~THEN REPLY @143 /*Look at him menacingly. "If you try to take this document from me, it will be the last thing you do in your life, and I will become instantly rich." */ DO~~ + g-bbD120.P1
IF~~THEN REPLY @144 /*Why not help your luck a little? Shove him. Let him fall over the edge. */ DO~~ + g-bbD120.R1