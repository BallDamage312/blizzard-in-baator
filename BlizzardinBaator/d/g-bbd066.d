BEGIN g-bbD066
CHAIN IF~NumTimesTalkedTo(0) !ActuallyInCombat() Global("G-aereturn","GLOBAL",0)~THEN g-bbD066 g-bbD066.start1
@0 /*In one of the theater seats, you see a woman dressed in a black robe inscribed with runes. Her fiery red hair contrasts sharply with her dark robes, but upon closer inspection, you notice strands of many other colors shimmering in the light. She wears a strange collar around her neck, and her lips glisten a blood-red. She watches the actors and the other theatergoers intently, periodically sipping something from a small cup placed next to her.  */
END
IF~CheckStatLT(Protagonist,18,WIS)~THEN REPLY @2 /*Come over. */ DO~~ + g-bbD066.comeover1
IF~CheckStatGT(Protagonist,17,WIS) CheckStatLT(Protagonist,25,WIS)~THEN REPLY @3 /*Come over. */ DO~~ + g-bbD066.comeover2
IF~CheckStatGT(Protagonist,24,WIS)~THEN REPLY @4 /*Come over. */ DO~~ + g-bbD066.comeover3
IF~CheckStatLT(Protagonist,18,WIS)~THEN REPLY @5 /*Leave before you enter her field of view. */ DO~~ + g-bbD066.forcedtotalk
IF~CheckStatGT(Protagonist,17,WIS) ~THEN REPLY @6 /*Leave before you enter her field of view. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.forcedtotalk
@8 /*You try to walk away, but your legs seem to have a mind of their own and drag you towards the woman. It is not a stressful situation, though. For some reason, you *want* to go over to her. */
END
IF~CheckStatLT(Protagonist,18,WIS)~THEN REPLY @10 /*Come over. */ DO~SetGlobal("G-aeforcedtotalk","GLOBAL",1)~ + g-bbD066.comeover1
IF~CheckStatGT(Protagonist,17,WIS) CheckStatLT(Protagonist,25,WIS)~THEN REPLY @11 /*Come over. */ DO~SetGlobal("G-aeforcedtotalk","GLOBAL",1)~ + g-bbD066.comeover2
IF~CheckStatGT(Protagonist,24,WIS)~THEN REPLY @12 /*Come over. */ DO~SetGlobal("G-aeforcedtotalk","GLOBAL",1)~ + g-bbD066.comeover3
CHAIN IF~ActuallyInCombat()~THEN g-bbD066 g-bbD066.combattalk
@14 /*The mysterious woman stops you with a casual wave of her hand. "You already know that I love talking to you, but now doesn't seem like the right time. But yes, I'm having a good time, if that's what you're wondering."
 */
EXIT
CHAIN IF~Global("G-aepostcombat","GLOBAL",0) OR(4) GlobalGT("G-ulfbrandwonraid","GLOBAL",0) GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0) GlobalGT("g-raidendedwhendead","GLOBAL",0)~THEN g-bbD066 g-bbD066.postcombat1
@17 /*"Thanks to you, the blood of the innocent is soaking into the stage of this beautiful theater... I will be pondering for a long time what exact impact this event will have on *you*." She shows no trace of hostility or fear. Does she truly feel sorry for the actors? Or is it just an act? */
END
IF~~THEN REPLY @19 /*"Let's talk then." */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @20 /*Leave. */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ EXIT
CHAIN IF~Global("G-aepostcombat","GLOBAL",0) OR(3) GlobalGT("G-ulfbrandgaveup","GLOBAL",0) GlobalGT("G-ulfbrandlostraid","GLOBAL",0) GlobalGT("G-ulfbrandlostambush","GLOBAL",0)~THEN g-bbD066 g-bbD066.postcombat2
@22 /*The woman smiles when she sees you again. "Do you want me to praise you or something? Should I explain to you that you're a good person?" */
END
IF~~THEN REPLY @24 /*"Let's talk." */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @25 /*Leave. */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ EXIT
CHAIN IF~Global("G-aepostcombat","GLOBAL",0) GlobalGT("G-ulfbrandwonambush","GLOBAL",0)~THEN g-bbD066 g-bbD066.postcombat3
@27 /*"I feel sorry for the troupe," the woman sighs. "I quite liked them. But you did what you could." */
END
IF~~THEN REPLY @29 /*"Let's talk." */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @30 /*Leave. */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ EXIT
CHAIN IF~Global("G-aepostcombat","GLOBAL",0) GlobalGT("G-ulfbrandlady","GLOBAL",0)~THEN g-bbD066 g-bbD066.postcombat4
@32 /*"The Lady's will is law around here. Right?" The woman looks at you. "Sometimes, the quill is taken from our hands, and someone else uses it to write their name in the pages of history. I just wonder, if you'd known your involvement would end this way, would you have taken a slightly different path? Hmm?" */
END
IF~~THEN REPLY @34 /*"Maybe. Let's talk." */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @35 /*"I don't think so. Let's talk." */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @36 /*Leave. */ DO~SetGlobal("G-aepostcombat","GLOBAL",1)~ EXIT
CHAIN IF~GlobalGT("G-aepostcombat","GLOBAL",0)
~THEN g-bbD066 g-bbD066.postpost
@38 /*"You keep coming back to me, even though the most important part is already over." Æ looks at you curiously. "Isn't it time to move on?" */
END
IF~~THEN REPLY @40 /*"Let's talk." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @41 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.comeover1
@43 /*As you approach the row of seats, you feel as though you are getting smaller and smaller. Your eye level does not change, but you feel as if your consciousness is shifting somewhere toward your feet. Despite the surreal nature of the moment, the seated woman is calm and resolute. Her demeanor plunges you deeper into the thicket of submission. She looks at you for the first time, or at least for the first time with the curious eyes visible on her face. You move even closer and automatically sit down in the chair next to her. */
END
IF~~THEN REPLY @45 /*"Hnngh." */ DO~~ + g-bbD066.sit
CHAIN IF~~THEN g-bbD066 g-bbD066.comeover2
@47 /*As you get closer, you feel a strange tingling sensation at the back of your head. Your willpower is strong, but not strong enough to make your legs take a different path. This stranger's presence is immense. */
END
IF~~THEN REPLY @49 /*Take a seat beside her. */ DO~~ + g-bbD066.sit
IF~~THEN REPLY @50 /*Try with all your might to walk away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.comeover3
@52 /*As you get closer, you feel a strange tingling sensation at the back of your head. You sense that her willpower is equal to yours. It would not be wise to mess with her. */
END
IF~~THEN REPLY @54 /*Sit down. */ DO~~ + g-bbD066.sit
IF~~THEN REPLY @55 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.sit
@57 /*"Hello, Nameless One. I'm Æ." She speaks, and her voice seems to come from beyond this realm. You hear her inside your head, as if she were using telepathy, but her blood red lips are clearly moving. You do not know what this whole absurd situation looks like from the outside, but no one seems alarmed. Maybe it is just your mind playing tricks on you. */
END
IF~~THEN REPLY @59 /*"Do you know me?" */ DO~~ JOURNAL @6016 + g-bbD066.knowme
IF~~THEN REPLY @60 /*"Let's get to the point. It looks like you want something from me." */ DO~~ JOURNAL @6016 + g-bbD066.want
CHAIN IF~~THEN g-bbD066 g-bbD066.knowme
@62 /*"In a certain sense. I like to admire your struggle. But today...  I have the chance to talk to you." */
END
IF~~THEN REPLY @64 /*"I think... I've got some questions..." */ DO~~ + g-bbD066.questions
CHAIN IF~~THEN g-bbD066 g-bbD066.want
@66 /*"You're not very good at this game," she admits with a sigh. "I'm a big admirer of your efforts... but today... I get to answer your famous *questions*." */
END
IF~~THEN REPLY @68 /*"Yes... I do have some questions, actually..." */ DO~~ + g-bbD066.questions
CHAIN IF~NumTimesTalkedTo(1) !ActuallyInCombat() Global("G-aereturn","GLOBAL",0)~THEN g-bbD066 g-bbD066.start2
@70 /*In one of the theater seats, you see a woman dressed in a black robe inscribed with runes. Her fiery red hair contrasts sharply with her dark robes, but upon closer inspection, you notice strands of many other colors shimmering in the light. She wears a strange collar around her neck, and her lips glisten a blood-red. She watches the actors and the other theatergoers intently, periodically sipping something from a small cup placed next to her.  "Are you here to talk or are you checking to see if the conversation would look the same as the first one, Nameless One?" */
END
IF~~THEN REPLY @72 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @73 /*"Just checking..." */ DO~~ EXIT
IF~~THEN REPLY @74 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedTo(2) !ActuallyInCombat() Global("G-aereturn","GLOBAL",0)~THEN g-bbD066 g-bbD066.start3
@76 /*In one of the theater seats, you see a woman dressed in a black robe inscribed with runes. Her fiery red hair contrasts sharply with her dark robes, but upon closer inspection, you notice strands of many other colors shimmering in the light. She wears a strange collar around her neck, and her lips glisten a blood-red. She watches the actors and the other theatergoers intently, periodically sipping something from a small cup placed next to her. You feel her reaching into your mind. "No, I won't say a new thing every time you come to me, Nameless One." She laughs. "You can admire the description of the beauty of this form I have taken every time though. You should be grateful." */
END
IF~~THEN REPLY @78 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @79 /*"Was than an undertone? Should I read between the lines?" */ DO~~ + g-bbD066.seduce
IF~~THEN REPLY @80 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(2) !ActuallyInCombat() Global("G-aereturn","GLOBAL",0)~THEN g-bbD066 g-bbD066.start4
@82 /*In one of the theater seats, you see a woman dressed in a black robe inscribed with runes. Her fiery red hair contrasts sharply with her dark robes, but upon closer inspection, you notice strands of many other colors shimmering in the light. She wears a strange collar around her neck, and her lips glisten a blood-red. She watches the actors and the other theatergoers intently, periodically sipping something from a small cup placed next to her. "Shall we talk, Nameless One?" */
END
IF~~THEN REPLY @84 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @85 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.questions
@87 /*Æ smiles a little and waits for your questions. */
END
IF~Global("G-knowaestory","GLOBAL",0)~THEN REPLY @89 /*"What's your story? How did you get here?" */ DO~~ + g-bbD066.aestory1
IF~Global("G-knowaewhy","GLOBAL",0) Global("G-aeforcedtotalk","GLOBAL",1)~THEN REPLY @90 /*"Is there a specific reason you forced me to talk to you?" */ DO~~ + g-bbD066.aetalk
IF~Global("Know_Ravel","GLOBAL",1) GlobalLT("G-aehorror","GLOBAL",1) GlobalLT("G-aenope","GLOBAL",1)~THEN REPLY @91 /*"What do you know of the hag, Ravel Puzzlewell?" */ DO~~ + g-bbD066.aeravel
IF~GlobalGT("Regret","GLOBAL",0)~THEN REPLY @92 /*"Do you know anything about the Fortress of Regrets?" */ DO~~ + g-bbD066.aeregret
IF~Global("Know_O","GLOBAL",1)~THEN REPLY @93 /*"I feel you may have something in common with O, whom I met in the Smoldering Corpse. Are you from the Great Beyond too?" */ DO~~ + g-bbD066.aeo
IF~NumInPartyGT(1) Global("Join_Chaosmen","GLOBAL",1) Global("G-companionsquestions","GLOBAL",1)~THEN REPLY @94 /*"What do you think of my precious little party of misfits?" */ DO~~ + g-bbD066.companions
IF~Class(Protagonist,Mage)~THEN REPLY @95 /*"I sense great power in you. Can you teach me anything?" */ DO~~ + g-bbD066.aepower3
IF~Global("G-aeknowaltern","GLOBAL",1)~THEN REPLY @96 /*"Can you really see alternate versions of events?" */ DO~~ + g-bbD066.aealternate
IF~Global("G-aewitch","GLOBAL",1)~THEN REPLY @97 /*"Are you a witch?" */ DO~~ + g-bbD066.aewitch
IF~~THEN REPLY @98 /*"Do you know anything about the residence nearby the theater?" */ DO~~ + g-bbD066.aekabatum
IF~GlobalGT("G-BBmain","GLOBAL",0) Global("G-Know_DitchPortal","GLOBAL",0)~THEN REPLY @99 /*"Do you know anything about a portal to Cania in the Ditch?" */ DO~~ + g-bbD066.aeportal
IF~GlobalGT("G-modlib1","GLOBAL",0)~THEN REPLY @100 /*"I agreed to find books for the modron librarian. Do you know where to find them?" */ DO~~ + g-bbD066.aemodron
IF~GlobalGT("G-knowaestory","GLOBAL",0) Global("G-aegift","GLOBAL",0)~THEN REPLY @101 /*"I understand much more now. There's no point in hiding anything from you. Can you help me somehow?" */ DO~~ + g-bbD066.aegift
IF~Global("G-knowaewhy","GLOBAL",1)~THEN REPLY @102 /*"I want to tell you about my progress." */ DO~~ + g-bbD066.aeraport
IF~GlobalGT("G-aepostcombat","GLOBAL",0)~THEN REPLY @103 /*"You're probably wondering what caused the conflict between the factions to play out the way it did." */ DO~~ + g-bbD066.aepostpost2
IF~Dead("g-bb017")~THEN REPLY @104 /*"You probably know already that Haer'Dalis is dead." */ DO~~ + g-bbD066.aepostpost2
IF~~THEN REPLY @105 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aestory1
@107 /*"I come from a plane whose existence has come to an end, yet it persists nonetheless. I am condemned to eternally experience the dichotomy of its existence and non-existence. The continuity of time dwells within me so that I may contemplate this loss... or the absence of loss... for all eternity. It is both my reward for my efforts and my punishment for my sins. Does this make any sense?" */
END
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @109 /*"In theory, I do. Tell me more, please." */ DO~SetGlobal("G-knowaestory","GLOBAL",1)~ + g-bbD066.aestory3
IF~CheckStatLT(Protagonist,18,INT)~THEN REPLY @110 /*"Unfortunately, it's beyond my ability to comprehend." */ DO~~ + g-bbD066.aestory2
IF~CheckStatLT(Protagonist,10,INT)~THEN REPLY @111 /*"Erm..." */ DO~~ + g-bbD066.aestory2
IF~~THEN REPLY @112 /*"Maybe I'll ask some less metaphysical question." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @113 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aestory2
@115 /*"Don't worry, I'm sure that by the time I finish speaking, my story will trigger synapses you didn't even know you had. I mean..." Æ pauses and looks up toward the theater ceiling. "Hmm. How else to put it? That word isn't known in this reality..." She turns back to you. "Your *brain* will work *better*." */
END
IF~CheckStatGT(Protagonist,9,INT)~THEN REPLY @117 /*"All right. Tell me more..." */ DO~SetGlobal("G-knowaestory","GLOBAL",1) SetGlobal("G-understandcosmology","GLOBAL",1)~ + g-bbD066.aestory3
IF~~THEN REPLY @118 /*"I don't want to touch such difficult topics. I have other questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @119 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aestory3
@121 /*"You already know that you exist in a multiverse. You've been to many different planes, some of them so recently that they're still fresh in your memory. Perhaps you've also heard about crystal spheres on the Prime Material plane, Transitive Planes, Planar Pathways, and all that... it might seem strange, confusing. Let me tell you, step by step, how it all works. You should soon understand how everything is connected and where, in all this mess, I come from..." */
END
IF~~THEN REPLY @123 /*Listen. */ DO~PermanentStatChange(Protagonist,INT,RAISE,1) AddexperienceParty(100000)~ + g-bbD066.aestory4
CHAIN IF~~THEN g-bbD066 g-bbD066.aestory4
@125 /*Æ explains a vast number of things to you. It seems like her lecture goes on for hours, so that you can take all this information in. Diagrams appear in your mind: interlocking circles, spheres, and discs connected by an infinite number of threads and relationships. And you, floating among these threads, understand just how varied they can be. How infinite this entire system is. Finally, the woman stops talking, and you remember that you are still in the theater. It does not seem like much time has passed. */
=@126 /*"So, in all of this, *my* torment is that even though I can perceive my various loved ones, they cannot always perceive me. Our separation lies in their simultaneous existence and non-existence. And this has been going on for... eons. Your anguish is also significant, which is why I wanted to *get to know* you." */
END
IF~~THEN REPLY @128 /*"You wanted to meet me?" */ DO~~ + g-bbD066.aetalk
IF~~THEN REPLY @129 /*"I don't want to touch such difficult topics. I have other questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @130 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aetalk
@132 /*"Yes, I wanted to meet you to see if your torment, your extraordinary role in this multiverse, would make our conversation interesting." Æ sighs. "The problem with existing outside of time is that I know every conversation as if I had written the words myself. Because of this, sometimes I feel as if people are merely puppets I can manipulate. I *long* for a conversation with someone on my level. However.... I see that even you, an immortal destroyer, are not destined to escape these patterns. Though in the end...  at the end of your journey, there is a possibility that you might, for a moment, attain something akin to omnipotence. Perhaps we should talk then." */
END
IF~Global("Regret","GLOBAL",0)~THEN REPLY @134 /*"I don't know what you're talking about but I'm not interested in power." */ DO~~ + g-bbD066.aepower1
IF~Global("Regret","GLOBAL",0)~THEN REPLY @135 /*"I don't know what you're talking about but I want to know how to gain that power." */ DO~~ + g-bbD066.aepower2
IF~GlobalGT("Regret","GLOBAL",0) CheckStatGT(Protagonist,18,INT)~THEN REPLY @136 /*"You're talking about meeting the guardian of the Fortress of Regrets." */ DO~~ + g-bbD066.aeregret2
IF~~THEN REPLY @137 /*"I don't want to touch such difficult topics. I have other questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @138 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aepower1
@140 /*Æ smiles. "It's better that you don't know. Once you learn something, there's no un-learning it. Your case, as someone with amnesia, seems to almost contradict this thesis, but... after all, you are gradually regaining your memories. They are coming back to you, and you will never completely escape them. Even when everyone who holds the secret of how to reach your destined place is gone... Others will appear. Or I will appear. As an eternal being, I will *never* disappear. Your story is doomed to be cyclical." */
END
IF~~THEN REPLY @142 /*"You are eternal? It sounds like divine power. Are you a goddess? Here, in Sigil?" */ DO~~ + g-bbD066.aegod
IF~GlobalGT("Regret","GLOBAL",0) CheckStatGT(Protagonist,12,INT)~THEN REPLY @143 /*"You're talking about meeting the guardian of the Fortress of Regrets." */ DO~~ + g-bbD066.aeregret2
IF~~THEN REPLY @144 /*"I don't want to touch such difficult topics. I have other questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @145 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aepower2
@147 /*Æ laughs. "If you really must know, when you're faced with a choice... choose *merging*. I won't tell you more. It's better that you don't know. Once you learn something, there's no un-learning it. Your case, as someone with amnesia, seems to almost contradict this thesis, but... after all, you are gradually regaining your memories. They are coming back to you, and you will never completely escape them. Even when everyone who holds the secret of how to reach your destined place is gone... Others will appear. Or I will appear. As an eternal being, I will *never* disappear. Your story is doomed to be cyclical." */
END
IF~~THEN REPLY @149 /*"You are eternal? It sounds like divine power. Are you a goddess? Here?! In Sigil?!" */ DO~~ + g-bbD066.aegod
IF~GlobalGT("Regret","GLOBAL",0) CheckStatGT(Protagonist,12,INT)~THEN REPLY @150 /*"You're talking about meeting the guardian of the Fortress of Regrets." */ DO~~ + g-bbD066.aeregret2
IF~~THEN REPLY @151 /*"I don't want to touch such difficult topics. I have other questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @152 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegod
@154 /*"And what is a god? Lady of Pain forbids worship of her, but that does not diminish her power. I also know artists and leaders, perfectly mortal, who have unquestioning followers among other mortals. The nature of divinity defies simple definitions. I, of course, know its true definition, but I will let you draw your own conclusions." */
=@155 /*"Is my presence here a problem? Maybe I'm just an ordinary mortal who doesn't trouble the Lady of Pain... Or maybe I'm powerful enough that even she fears me? Or maybe I've just given myself away, and you'll find me tomorrow in the Ditch, flayed. I've been flayed before, when I crossed paths with... something akin to powerful fiends." Æ sighs. "I don't recommend such games. Thankfully, I was able to forget that sensation. But when I look back at another moment in time, I can still see the pain." */
=@156 /*"You, too, have had that dubious pleasure. Even with your remarkable ability to regenerate, your body was unable to return to the state it was in before... Just as with the body, so it is with the mind that looks beyond the veil of reality. The horror lurking there makes the shadow of Lady of Pain's blades seem like a grain of salt compared to the vastness of the multiverse." */
END
IF~~THEN REPLY @158 /*"I have other questions." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @159 /*"I'll leave now." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel
@161 /*"My answer depends on how much you know. I don't want to give too much away. I've seen how desperately you're searching for a way back to her. I watched your first meeting with her, a long time ago... And your last one. Not long ago..." */
END
IF~~THEN REPLY @163 /*"Yes. Ravel is dead. She was killed in the Maze." */ DO~~ + g-bbD066.aeravel3
IF~Global("BD_UNITYRINGS","GLOBAL",1)~THEN REPLY @164 /*"Yes. I bid her farewell and the Unity of Rings was served." */ DO~~ + g-bbD066.aeravel2
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel2
@166 /*"It's a beautiful moment, and I often think back on it. The emotions that accompany it will forever remain beyond the reach of most beings." The woman sighs. "To understand a hag's longing and an immortal's grief..." */
END
IF~Global("G-aehorror","GLOBAL",0)~THEN REPLY @168 /*"I don't know what to think about your words..." */ DO~~ + g-bbD066.aeravel3
IF~Global("G-aehorror","GLOBAL",1)~THEN REPLY @169 /*"I have other questions." */ DO~~ + g-bbD066.questions
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel3
@171 /*"What can change the nature of a man? I think you already know, but I don't expect you to answer. I just want to hear you say those words." */
END
IF~~THEN REPLY @173 /*Repeat in a confident voice: "What can change the nature of a man?" */ DO~~ + g-bbD066.aeravel5
IF~~THEN REPLY @174 /*Repeat in a low voice: "What can change the nature of a man?" */ DO~~ + g-bbD066.aeravel6
IF~~THEN REPLY @175 /*"I don't want to repeat these words. You treat me like a puppet." */ DO~~ + g-bbD066.aeravel4
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel4
@177 /*"Oh? Maybe I pushed you too much. Let's forget about it." */
END
IF~~THEN REPLY @179 /*"I still have questions. In spite of everything." */ DO~SetGlobal("G-aenope","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @180 /*"I'll leave now." */ DO~SetGlobal("G-aenope","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel5
@182 /*You repeat Ravel's question and Æ seems to be pleased. [NAM210B] */
END
IF~~THEN REPLY @184 /*Continue. */ DO~~ + g-bbD066.aeravelend
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravel6
@186 /*You repeat Ravel's question and Æ seems to be pleased. [NAM211C] */
END
IF~~THEN REPLY @188 /*Continue. */ DO~~ + g-bbD066.aeravelend
CHAIN IF~~THEN g-bbD066 g-bbD066.aeravelend
@190 /*"I'm sorry if you felt uncomfortable. I didn't mean any harm, I just like... stories. I also like to interact with their characters. Sometimes my actions go beyond the spectrum of good and evil, or order and chaos, as people know it." You suddenly realize that your hands are clutching scrolls of paper that were not there a moment ago. "Take this as my apology. It's a small memento of Ravel, if you miss her... An echo of her magic." */
END
IF~~THEN REPLY @192 /*"I still have questions. In spite of everything." */ DO~SetGlobal("G-aehorror","GLOBAL",1) GiveItemCreate("SPWI203",Protagonist,0,0,0) GiveItemCreate("SPWI401",Protagonist,0,0,0) AddexperienceParty(33333)~ + g-bbD066.questions
IF~~THEN REPLY @193 /*"I'll leave now." */ DO~SetGlobal("G-aehorror","GLOBAL",1) GiveItemCreate("SPWI203",Protagonist,0,0,0) GiveItemCreate("SPWI401",Protagonist,0,0,0) AddexperienceParty(33333)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeregret
@195 /*"Yes. I'm watching you walk through those impressive mechanical doors right now. I can also see every possible scenario that might unfold inside. What a fascinating chapter in your story, Nameless One, though not without a bitter aftertaste." */
END
IF~~THEN REPLY @197 /*"I've got some questions..." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @198 /*"I'll leave now." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeo
@200 /*"I'm not a part of the Divine Alphabet, if that's what you mean. Even if my name might suggest it." */
END
IF~~THEN REPLY @202 /*"So what does your name mean?" */ DO~~ + g-bbD066.aenames
IF~~THEN REPLY @203 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @204 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aenames
@206 /*"It's a collection of aspects of me. In other words, the three people I'm *caused* by." */
END
IF~~THEN REPLY @208 /*"I'm curious. Could you tell me about those people?" */ DO~~ + g-bbD066.aeaspects
IF~~THEN REPLY @209 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @210 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeaspects
@212 /*"The first of them was the superconscious. An impressive warrior who fought with two long spears. She was somewhat like you... Her skin was adorned with protective runic tattoos. Except that she could move freely through time. Thanks to this, she could inflict wounds on enemies in the past or know the outcome of a battle before it even took place. She wanted that plane to be reborn, and make it so that its people could draw on their past experiences to transform into... something more." */
=@213 /*"The second was the subconscious. A mage specializing in elemental magic and necromancy. She had led a difficult life filled with suffering. Her goal, aside from fighting the monsters of her world, was to put an end to human suffering on a conceptual level. She wanted to achieve this by bringing the entire multiverse to an end." */
=@214 /*"Finally, the third was consciousness itself. An ordinary girl from the Prime Material plane who, over time, began to realize the true nature of reality and learn to influence it. I am based primarily on her. Time passed and she grew increasingly powerful, until she was even capable of killing gods. However, it wasn't about her power at all, she just wanted to protect her family and friends. Unfortunately, the more she interfered with reality, the more that reality began to crumble, and her situation grew more complicated." */
END
IF~~THEN REPLY @216 /*"Three. The Rule of Three. Even you are affected by it" */ DO~~ + g-bbD066.aethree
IF~~THEN REPLY @217 /*"I still have questions." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @218 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aethree
@220 /*Æ smiles mysteriously. "Who isn't? But let's change the subject. I can't tell you too much about *those* three." */
END
IF~~THEN REPLY @222 /*"I've got some questions still..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @223 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aealternate
@225 /*"Yes. There are infinite realities in which we never meet. But there are quite a few where you always find me." */
END
IF~~THEN REPLY @227 /*"I've got some questions..." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @228 /*"I'll leave now." */ DO~SetGlobal("G-knowaewhy","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aewitch
@230 /*She laughs. "A witch? It depends on your definition. A witch, mage, sorceress, psionic? Think of me what you want." */
END
IF~~THEN REPLY @232 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @233 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeportal
@235 /*"Of course. But I can't spoil your fun, can I? Sometimes the journey is more important than the destination. However, if you're having serious trouble with the investigation, if I were you, I'd ask someone who knows how to swim." */
END
IF~~THEN REPLY @237 /*"What can I expect on the other side?" */ DO~~ + g-bbD066.aetail
IF~~THEN REPLY @238 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @239 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aetail
@241 /*"You can expect a set of trials, both for yourself and for everyone you bring along with you. Despite the apparent lack of allies in this desolate place, you may cross paths with representatives of various philosophies who have the potential to shape your reality. It will also be up to you to determine whether their journeys stay on the right track or end prematurely, through your own decisions. Use these decisions wisely, Nameless One." */
=@242 /*"You're suffering your own torment, but will you bring it upon others as well? I can't wait to see the consequences of your decisions. She gives you a moment to process her words. "As for the wererat, question him thoroughly. He likes to take whatever he finds for himself. This applies both to objects and to knowledge." */
END
IF~~THEN REPLY @244 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @245 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.seduce
@247 /*"Don't flatter yourself too much. But it's actually a bit funny to see your confusion, you know?" */
END
IF~~THEN REPLY @249 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @250 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeregret2
@252 /*"This version of you is rather quick-witted, isn't it? I can't reveal too much, Nameless One. What kind of a story would that be if the most interesting twists were spoiled before their moment?" */
END
IF~~THEN REPLY @254 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @255 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.companions
@257 /*"Oh? You'd like to know *my* opinion about them, wouldn't you? It's actually quite interesting... Why not?" */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @259 /*"What do you think of Morte?" */ DO~~ + g-bbD066.aemort
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @260 /*"What do you think of Dak'kon?" */ DO~~ + g-bbD066.aedak
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @261 /*"What do you think of Annah?" */ DO~~ + g-bbD066.aeann
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @262 /*"What do you think of Fall-from-Grace?" */ DO~~ + g-bbD066.aegrac
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @263 /*"What do you think of Ignus?" */ DO~~ + g-bbD066.aeign
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @264 /*"What do you think of Vhailor?" */ DO~~ + g-bbD066.aevha
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @265 /*"What do you think of Nordom?" */ DO~~ + g-bbD066.aenor
IF~~THEN REPLY @266 /*"What do you think of me?" */ DO~~ + g-bbD066.aenam
IF~~THEN REPLY @267 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @268 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aemort
@270 /*"What an iconic duo! A nameless immortal and his skull. A relationship revolving around death, tangled by the wound roots of guilt and the past." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @271 /*"Throughout our journey, I dispense advice, abuse, and even hints when asked. I keep track of what this berk's learned and what he's forgotten. I'm a skull, a compass, an encyclopedia, and this berk's best friend." */
==g-bbd066 @272 /*"I'd appreciate if he respected peace of zombie women a little more, though? I think they've heard enough chant like his while they used to be alive." */
END
IF~GlobalGT("GOOD","GLOBAL",10) Global("G-morthank","GLOBAL",0)~THEN REPLY @274 /*"Thank you, Morte." */ DO~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("G-morthank","GLOBAL",1)~ + g-bbD066.aemort1
IF~~THEN REPLY @275 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @276 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @277 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aemort1
~~ ==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @279 /*"It's you and me, berk. We're in this together. Until this thing's over, I stick like your leg." */
==g-bbd066 @280 /*The woman looks at both of you, satisfied. */
END
IF~~THEN REPLY @282 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @283 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @284 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aedak
@286 /*"When I see eyes of Dak'kon, the pariah filled with sadness, I'm moved beyond measure. A tragic figure, constantly hovering around proverbial T'cha's choice." She addresses the githzerai. "Hail, sword-ringer. Zerchai's kin bow to you. I want him to know that I support the cause of your people." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @287 /*"And the traveler is pleased." Dak'kon replies in a calm tone, though he seems very tense. The conversation has clearly put him on alert. */
==g-bbd066 @288 /*"Above all, however, I support the cause of the one you call in your tongue Hra'ka'lothanek." In your mind, you hear the translation of the word - 'he who searches for his heart.' Æ turns to you again. "I had a vision of another version of Dak'kon, from an alternate reality. Instead of Zerthimon, he found solace in the philosophy of the Godsmen." */
END
IF~Global("G-aeknowaltern","GLOBAL",0)~THEN REPLY @290 /*"Can you see alternate versions of events?" */ DO~SetGlobal("G-aeknowaltern","GLOBAL",1)~ + g-bbD066.aealternate
IF~GlobalGT("Join_Godsmen","GLOBAL",0)~THEN REPLY @291 /*"Really? That makes me happy, Dak'kon!" */ DO~~ + g-bbD066.aealtdak2
IF~Global("Join_Godsmen","GLOBAL",0)~THEN REPLY @292 /*"Really? It's hard to imagine." */ DO~~ + g-bbD066.aealtdak1
IF~~THEN REPLY @293 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @294 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @295 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aealtdak2
@297 /*Æ smiles again. "That's right. You perfectly know the Godsmen philosophy so I don't have to help you recall it. I think I should join them, by the way. This other version of Dak'kon was given a special assignment by the faction leaders themselves to investigate the issue of some particular man's constant rebirthing. He wasn't a mage either, though he did use a few interesting magical items." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @298 /*"It's hard for me to imagine a life in which I would escape from my ideals into the embrace of others. Of course, I completely accept your ideological choices, Hra'ka'lothanek." To your surprise, he actually uses the githzerai term that Æ had quoted, though the Dak'kon you know hasn't used it with you all that often if at all. "The Godsmen have their reasons, but I hope you'll forgive me; I will remain unaffiliated." You know, and Æ knows, that Dak'kon would join any faction if *you* told him to. Although he probably wouldn't be very happy about it. */
==g-bbd066 @299 /*"It's hard for most people to imagine. And sometimes all that separates a radically different version of a person from another is a few years of experience," she says. "Take, for example, a teenager and an adult. Raised with the principles of one faction, they might suddenly find themselves wanting to join another or abandon factions altogether. Human beliefs and their development are fascinating subjects to ponder." */
END
IF~~THEN REPLY @301 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @302 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @303 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aealtdak1
@305 /*Æ smiles again. "That's right. If you need to remind you the Godsmen philosophy: everyone has divine potential for ascension. I think I should join them, by the way. But life is a test, and those who pass it well will receive a better form. This other version of Dak'kon was given a special assignment by the faction leaders themselves to investigate the issue of some particular man's constant rebirthing. He wasn't a mage either, though he did use a few interesting magical items." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @306 /*"It's hard for me to imagine a life in which I would escape from my ideals into the embrace of others." */
==g-bbd066 @307 /*"It's hard for most people to imagine. And sometimes all that separates a radically different version of a person from another is a few years of experience," she says. "Take, for example, a teenager and an adult. Raised with the principles of one faction, they might suddenly find themselves wanting to join another or abandon factions altogether. Human beliefs and their development are fascinating subjects to ponder." */
END
IF~~THEN REPLY @309 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @310 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @311 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeann
@313 /*"Ah. I was about her age when... I began to commune with the unknowable. I would have loved to get to know her better if we had the time. But she has her own path to follow." She thinks for a moment. "I'm almost certain I saw her take a different path... On which she used magic. Surprising, I know, but I saw such an alternate reality..." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @314 /*"What?" Annah wonders. "I've never thought of somethin' like that... It ain't my style, is all. I mean it." [ANA567E] */
END
IF~Global("G-aeknowaltern","GLOBAL",0)~THEN REPLY @316 /*"Can you see alternate versions of events?" */ DO~SetGlobal("G-aeknowaltern","GLOBAL",1)~ + g-bbD066.aealternate
IF~~THEN REPLY @317 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @318 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @319 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegrac
@321 /*"I have a lot of respect for Lady Grace. I doubt any of you understand what she must have been through. I dare to say I do, to a great extent. Devils and demons can be more cruel than you can imagine, and you've felt their claws and teeth more than once, and been entangled in more than one devious scheme. What a fitting name. I'm very impressed by the *grace* with which Ms. Grace has dealt with her past. She should be a role model for us." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @322 /*"Thank you very much." Fall-from-Grace bows. "I don't mean to question your understanding of my situation. Something tells me you may actually be telling the truth." */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @324 /*Look at Morte. */ DO~~ + g-bbD066.aegramor
IF~!InParty("Morte")~THEN REPLY @325 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~!InParty("Morte")~THEN REPLY @326 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~!InParty("Morte")~THEN REPLY @327 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegramor
~~ ==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @329 /*"Her eyes are like windows to Hell but she has a body that makes me want to *kick in* the door." */
==g-bbd066 @330 /*"Morte tends to reveal his poetic side, doesn't he? He still has a lot to learn about respect, though." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @331 /*"What respect, huh? This is *how* I show respect!" */
==g-bbd066 @332 /*"That's what I'm talking about." She waves her hand, dismissing any further comments from the skull. "On the other hand, I've seen a much more sinister version of Ms. Grace. There might be some truth to those windows to Hell after all. Shall I tell you about it?" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @333 /*"I do not want that. I think my transformation has already taken place and there is no need to know how differently things could have turned out." [FFG250] */
==g-bbd066 @334 /*"Let us respect your wish. Please forgive me for mentioning such a possibility." */
END
IF~~THEN REPLY @336 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @337 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @338 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeign
@340 /*"On the one hand, he reminds me of the fires of Hell, but on the other, he's a much more pure being than one might think. Many judge him through the prism of who he was and the evil deeds he committed, I'm not afraid to admit, but... Can we perceive an adult from his behavior as a child? Fire is simply fire. It burns all who do not protect themselves from it. Have you already done it? Think about it." */
END
IF~~THEN REPLY @342 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @343 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @344 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aevha
@346 /*"How can I judge justice incarnated? I could even try to expose myself to his punishing gaze, but I think he knows perfectly well that I'm beyond his domain. With guilt and punishment greater than he has ever seen. So I won't risk testing his surprisingly short ties to the world of the living." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @347 /**I have waited millennia to dispense JUSTICE. I will wait another millennia to see the SENTENCES of the condemned carried out.* Vhailor has never described his time in the prison under Curst with such precision. You believe he is not off the mark. It sends shivers down your spine at the thought of what he endured and how it shaped him. */
END
IF~~THEN REPLY @349 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @350 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @351 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aenor
@353 /*"While you're probably used to traveling with people with impressive experience, here you are, facing a blank sheet of paper. Covered with shiny, transparent material, I might add. On which you can see your reflection. Yours and your actions. He alone won't question your decisions, even the most cruel ones. Take that into account." */
END
IF~~THEN REPLY @355 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @356 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @357 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aenam
@359 /*"Oh, but I keep telling you what I think of you, Nameless One. Every sentence I say is an expression of admiration for your story. Or bitter criticism of your actions. Interpret it as you wish." */
END
IF~Global("aesed","GLOBAL",0)~THEN REPLY @361 /*"Actually, I was wondering if you like how I look." */ DO~SetGlobal("aesed","GLOBAL",1)~ + g-bbD066.seduce
IF~~THEN REPLY @362 /*"I want to ask you about someone else." */ DO~~ + g-bbD066.companions
IF~~THEN REPLY @363 /*"I've got more questions..." */ DO~~ + g-bbD066.questions
CHAIN IF~~THEN g-bbD066 g-bbD066.aepower3
@365 /*"Our conversation alone might teach you something. You might learn something not only about me, but also about yourself. You'll probably have all sorts of theories about who I am... Theorize all you want. You won't be able to guess it, but it will be incredibly interesting to watch. However, I won't give you *magical* knowledge without effort. You'll have to navigate a bit between... the possibilities." */
END
IF~~THEN REPLY @367 /*"Are you a human?" */ DO~~ + g-bbD066.aehuman
IF~~THEN REPLY @368 /*"Are you a witch?" */ DO~~ + g-bbD066.aewitch
IF~~THEN REPLY @369 /*"Are you a goddess?" */ DO~~ + g-bbD066.aegod
IF~~THEN REPLY @370 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @371 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aehuman
@373 /*"The people I am composed of were undoubtedly human. Am I human myself? I'll leave that... up to you to decide." */
END
IF~!Dead("g-bb017")~THEN REPLY @375 /*"I think you're a human." */ DO~~ + g-bbD066.aehuman2
IF~~THEN REPLY @376 /*"Are you a witch?" */ DO~~ + g-bbD066.aewitch
IF~~THEN REPLY @377 /*"Are you a goddess?" */ DO~~ + g-bbD066.aegod
IF~~THEN REPLY @378 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @379 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aehuman2
@381 /*"You have every right to interpret it that way. If that's the case, perhaps our conversation will feel more like talking to a human. It's all up to you, Nameless One. Your perception of me determines whether I'm a metaphysical threat to you or just a harmless admirer. Oh, what a wonderful actor you can be sometimes. Maybe I should get you to join Haer'Dalis' troupe?" */
END
IF~Global("G-dissrowan","GLOBAL",0)~THEN REPLY @383 /*"Is it possible? Could I join?" */ DO~~ + g-bbD066.aehuman3a
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @384 /*"Is it possible? Could I join?" */ DO~~ + g-bbD066.aehuman3b
IF~~THEN REPLY @385 /*"I've got some questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @386 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aehuman3a
@388 /*Æ pauses for a moment and stares off into space. "Hmm... no. Not in this universe, Nameless One. Although you're not entirely insignificant to them here... Let me think..." She extends a finger and wags it in your direction. "There's a possibility that you could help with the play that started this whole conflict. You could be the cause of all of it, if you want to be." */
END
IF~~THEN REPLY @390 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @391 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aehuman3b
@393 /*Æ pauses for a moment and stares off into the distance. "Hmm... no. Not in this universe, Nameless One. Although you're not entirely insignificant to them here... Let me think..." She extends a finger and wags it at you. "You've already done it. You helped with the play that started this whole conflict. You are the cause of it." */
END
IF~~THEN REPLY @395 /*"Maybe. I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @396 /*"Maybe but I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aekabatum
@398 /*"Yes, that residence belongs to Kabatum. He's a powerful concordant killer. You should be careful when you go there. I just want to tell you to take a very close look inside the house. I'm sure you'll notice something interesting there! I can't wait to... Ah, I see what you did. I've always trusted your perspicacity." */
END
IF~~THEN REPLY @400 /*"Do you have any tips if I would like to fight him?" */ DO~~ + g-bbD066.aekabatum1
IF~~THEN REPLY @401 /*"What can I find there?" */ DO~~ + g-bbD066.aekabatum2
IF~~THEN REPLY @402 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @403 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aekabatum1
@405 /*Æ laughs. "You see a powerful opponent and you're already thinking about how to test your murderous skills on him? Ah, you're so predictable. I *could* give you a hint..." She runs her finger across your chest. "You'd probably like to do this without anyone dying in the process. Not you, or others you might drag into this conflict." The woman falls silent for a moment. "Use his power against him. Think about whether you can make him feel what you feel? And... And above all, search his estate. Isn't it obvious that such people love to keep the tools of their own destruction close at hand?" */
END
IF~~THEN REPLY @407 /*"What can I find there?" */ DO~~ + g-bbD066.aekabatum2
IF~~THEN REPLY @408 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @409 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aekabatum2
@411 /*"Have you already mentioned that you want me to grant you some secret power, or are you just about to? Or maybe it was another version of you..." Æ frowns for a moment. "Never mind." She dismisses the thought and returns to the question at hand. "There's a door there leading to a place where you can find immense power: forbidden spells and powerful objects. Remember, though, not to underestimate your opponents... opponent," she corrects herself after a moment and smiles with feigned innocence. */
END
IF~~THEN REPLY @413 /*"Do you have any tips if I would like to fight him?" */ DO~~ + g-bbD066.aekabatum1
IF~~THEN REPLY @414 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @415 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aemodron
@417 /*"Of course, though I must admit that finding them will be quite a painstaking task. Some will fall into your hands on their own. You may have already come across a few. For others, you'll need an incredible stroke of luck." */
=@418 /*"Don't forget to check which books are already in the modron's collection. You might not get anything in return for finding them, but they're worth the effort. You should at least read the one about a dancer. What a masterpiece!" */
END
IF~~THEN REPLY @420 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @421 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegift
@423 /*Æ laughs. "Yes, that's quite understandable on your part. You expect that talking to me will bring you some tangible benefits, don't you?" The woman looks you in the eyes. "Don't think I hold it against you. You're used to things working out this way. In fact, I *will* give you something special that will help you on your journey." Æ begins to pull an elongated object from her sleeve. You wonder how long it has been there, but you quickly conclude that its being there was physically impossible in the first place. Æ is holding a full-sized, curved sickle in her hand. "It's sort of a family heirloom." */
END
IF~~THEN REPLY @425 /*"Since it's a family heirloom, are you sure you want to give it up? I wouldn't want you to miss it." */ DO~GiveItemCreate("g-bbi054",Protagonist,0,0,0) AddexperienceParty(33333) SetGlobal("G-aegift","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD066.aegift1
IF~~THEN REPLY @426 /*"You're right. I'm used to it." */ DO~GiveItemCreate("g-bbi054",Protagonist,0,0,0) AddexperienceParty(33333) SetGlobal("G-aegift","GLOBAL",1)~ + g-bbD066.aegift2
IF~~THEN REPLY @427 /*"Thank you. I've got some other questions..." */ DO~GiveItemCreate("g-bbi054",Protagonist,0,0,0) AddexperienceParty(33333) SetGlobal("G-aegift","GLOBAL",1)~ + g-bbD066.questions
IF~~THEN REPLY @428 /*"Thanks. I'll leave now." */ DO~GiveItemCreate("g-bbi054",Protagonist,0,0,0) AddexperienceParty(33333) SetGlobal("G-aegift","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegift1
@430 /*"Don't worry. I have it in so many possible realities that I certainly won't run out of copies of it. I must admit, I'm curious to see how useful it will be to you." Æ smiles, but even though the gesture itself seems friendly, you feel a certain unease. "Know that I will be watching your actions. With the sickle... and without it. I will judge which path is more interesting." */
END
IF~~THEN REPLY @432 /*"Thank you. I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @433 /*"Thanks. I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aegift2
@435 /*Æ laughs again. "I told you." You feel a bit uneasy. "Know that I will be watching your actions. With... and without the sickle. And I will see which path is more interesting." */
END
IF~~THEN REPLY @437 /*"Thank you. I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @438 /*"Thanks. I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport
@440 /*Æ approaches you and listens carefully. */
END
IF~GlobalGT("G-BBMain","GLOBAL",5)
~THEN REPLY @442 /*"I found Prod the imp. A gang of local thugs were holding him hostage at a local tavern, the Rivergate. I managed to free him." */ DO~~ + g-bbD066.aeraport1
IF~GlobalGT("G-BBMain","GLOBAL",7)
~THEN REPLY @443 /*"A marraenoloth named Wotyrxil had been attacked by some wererats and they had stolen his flute. He sent me to their tavern to track them." */ DO~~ + g-bbD066.aeraport2
IF~Global("G-awareportal","GLOBAL",1)~THEN REPLY @444 /*"I now know where and when the hopping portal that I seek appears: at midnight in that ruined clocktower in the flooded area." */ DO~~ + g-bbD066.aeraport4
IF~GlobalGT("G-keyquest","GLOBAL",0) !PartyHasItem("g-bbi045")~THEN REPLY @445 /*"I need to find a key to the portal to Cania." */ DO~~ + g-bbD066.aeraport5a
IF~GlobalGT("G-keyquest","GLOBAL",0) PartyHasItem("g-bbi045")~THEN REPLY @446 /*"I found the key to the portal to Cania." */ DO~~ + g-bbD066.aeraport5b
IF~Global("g-ysgmov","GLOBAL",1)~THEN REPLY @447 /*"My search has led me all the way to Ysgard. This is not what I was expecting while going to the Nine Hells." */ DO~~ + g-bbD066.aeraport6
IF~OR(2) GlobalGT("G-ulfbrandlostraid","GLOBAL",0)
GlobalGT("G-ulfbrandlostambush","GLOBAL",0)~THEN REPLY @448 /*"Ulfbrand has met his end. Was that what you were expecting?" */ DO~~ + g-bbD066.aeraport7
IF~GlobalGT("G-doomvsfatevsKEY","GLOBAL",0) Dead("g-bb017")~THEN REPLY @449 /*"Haer'Dalis is dead. Are you still willing to talk to me?" */ DO~~ + g-bbD066.aeraport8
IF~Dead("g-bb091")~THEN REPLY @450 /*"After a hard fight, I killed Kabatum." */ DO~~ + g-bbD066.aeraport9
IF~Dead("g-bb159") Global("G-aeaanswer","GLOBAL",0) ~THEN REPLY @451 /*"I killed the word archon over the Glass Tarn." */ DO~~ + g-bbD066.aeraport10
IF~Global("g-knowarchon","GLOBAL",1) !Dead("g-bb159") ~THEN REPLY @452 /*"Over the Glass Tarn I met a word archon. We've talked a bit." */ DO~~ + g-bbD066.aeraport11
IF~GlobalGT("G-agravalquest","GLOBAL",0)~THEN REPLY @453 /*"The baernaloth from a tavern sent me on a curious quest to find his pet modron." */ DO~~ + g-bbD066.aeraport12
IF~GlobalGT("G-modlib1","GLOBAL",0)~THEN REPLY @454 /*"I agreed to find books for the modron librarian. Do you know where to find them?" */ DO~~ + g-bbD066.aemodron
IF~~THEN REPLY @455 /*"I've got some other questions..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @456 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport1
@458 /*"An imp held captive by bandits? Usually it's mages who concern themselves with such creatures. Wizards, sorcerers, cultists... There was that one fanatic of Talona and his Druzil a few years back... But rough-and-tumble types born under an unlucky star? I'm sure you can't wait to explain to me what secrets this imp is hiding." */
END
IF~~THEN REPLY @460 /*"Prod has found a clue for locating the portal. I must seek out the renegade wererat that the yugoloths are looking for. Prod also let slip that Fury, who we are also looking for, is a consort of Levistus, one of the Lords of the Nine. The devils seem to have omitted that information. I don't think I need to clarify which devils I mean, do I?" */ DO~~ + g-bbD066.aeraport1a
IF~~THEN REPLY @461 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @462 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport1a
@464 /*"Of course not. Aethelgrin, Tegar'in, Tergush'tekhn... I know all about them. But I won't tell you that information, because where would the fun be?" */
END
IF~~THEN REPLY @466 /*"Let me think about other things..." */ DO~~ + g-bbD066.aeraport
IF~~THEN REPLY @467 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @468 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport2
@470 /*"Have you gone there yet or do you need help finding the tavern?" */
END
IF~GlobalLT("G-BBMain","GLOBAL",10)
~THEN REPLY @472 /*"I need a hint." */ DO~~ + g-bbD066.aeraport2a
IF~~THEN REPLY @473 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @474 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport2a
@476 /*"Return to the residential area. Look for a gate leading beneath the Zaddfum Trestle." */
END
IF~~THEN REPLY @478 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @479 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport4
@481 /*"In that case, I suppose you don't need any more directions? You should know exactly where everything is. You should remember to go back to the fiends for the protection they promised. Without it, you're doomed. I can see you freezing into a block of ice and falling into the snow just a few steps from the portal. Anything else?" */
END
IF~~THEN REPLY @483 /*"Let me think..." */ DO~~ + g-bbD066.aeraport
IF~~THEN REPLY @484 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @485 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport5a
@487 /*"Since you're here, you're on the right track. Even here, in this theater, you'll find clues as to where to go to find the key." */
END
IF~GlobalGT("G-BBmain","GLOBAL",0) Global("G-Know_DitchPortal","GLOBAL",0)~THEN REPLY @489 /*"I need a hint about where the portal is." */ DO~~ + g-bbD066.aeportal
IF~~THEN REPLY @490 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @491 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport5b
@493 /*"Fantastic. This is a big step forward." */
END
IF~GlobalGT("G-BBmain","GLOBAL",0) Global("G-Know_DitchPortal","GLOBAL",0)~THEN REPLY @495 /*"I need a hint about where the portal is." */ DO~~ + g-bbD066.aeportal
IF~~THEN REPLY @496 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @497 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport6
@499 /*"The Fated Earthberg? A wonderful place, unless you're a fiend. The feasts, the battles... the sauna. You might want to consider giving it a try. It could really strengthen your body... or someone else's." */
END
IF~~THEN REPLY @501 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @502 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport7
@504 /*"Indeed. It wasn't easy to bring things to this point, was it? Consider the implications of this turn of events. Was it necessary? Was Ulfbrand a bad person? Once you reach the Nine Hells, I will continue to watch your every move. I look forward to your future decisions. Though for now, the decisions made during the conflict between these two factions were probably the most serious, changing the most details. Perhaps it would be worth going back in time and seeing what would have happened if you had sided with the opposing faction? Maybe I'll do just that..." */
END
IF~GlobalGT("G-keyquest","GLOBAL",0) PartyHasItem("g-bbi045")~THEN REPLY @506 /*"Thanks to that, I found the key to the portal." */ DO~~ + g-bbD066.aeraport5b
IF~~THEN REPLY @507 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @508 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport8
@510 /*"I'm just watching. I won't judge you. Once you reach the Nine Hells, I'll keep watching. I get the feeling you've changed the course of events in this version of the multiverse, and I'm very curious to see where this will lead. I can't wait to see what decisions you make next. Although, for now, the decisions made during the conflict between these two factions were probably the most significant, changing the most details. Maybe it would be worth going back in time and seeing what would have happened if you had sided with the opposing faction? Maybe I'll do that..." */
END
IF~GlobalGT("G-keyquest","GLOBAL",0) PartyHasItem("g-bbi045")~THEN REPLY @512 /*"Thanks to that, I gained the key to the portal." */ DO~~ + g-bbD066.aeraport5b
IF~~THEN REPLY @513 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @514 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport9
@516 /*"I understand. Have you thoroughly inspected his residence, though?" */
END
IF~Global("g-knowarchon","GLOBAL",1) !Dead("g-bb159") ~THEN REPLY @518 /*"Yes. I found a portal to Mt. Celestia. Over the Glass Tarn, I met a word archon. We've talked a bit." */ DO~~ + g-bbD066.aeraport11
IF~Dead("g-bb159") Global("G-aeaanswer","GLOBAL",0) ~THEN REPLY @519 /*"Yes. I found a portal to Mt. Celestia. And I killed a word archon over the Glass Tarn too." */ DO~~ + g-bbD066.aeraport10
IF~~THEN REPLY @520 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @521 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport10
@523 /*"I won't judge you morally, but I wonder what motivated you?" */
END
IF~~THEN REPLY @525 /*"Necessity. Circumstances forced me to do it." */ DO~SetGlobal("G-aeaanswer","GLOBAL",1) ~ + g-bbD066.aeraport10a
IF~~THEN REPLY @526 /*"Greed. The archon had something that could help me fight more powerful opponents." */ DO~SetGlobal("G-aeaanswer","GLOBAL",1)~ + g-bbD066.aeraport10a
IF~~THEN REPLY @527 /*"Bloodlust. I wanted a good fight." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-aeaanswer","GLOBAL",1)~ + g-bbD066.aeraport10a
IF~~THEN REPLY @528 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @529 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport10a
@531 /*"I see... This will have serious consequences down the road. I won't tell you why, you'll just have to live with the uncertainty." */
END
IF~PartyHasItem("g-bbi044")~THEN REPLY @533 /*"I have her ring. I have a feeling you know what it says." */ DO~~ + g-bbD066.aering
IF~~THEN REPLY @534 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @535 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport11
@537 /*"That must have been a very fruitful conversation. Wonderful! I'm glad you managed to uncover the secret I wanted to lead you to." Æ pauses for a moment. "Which one of you... I think *you* you, but correct me if I'm wrong." */
END
IF~PartyHasItem("g-bbi044")~THEN REPLY @539 /*"I have her ring. I have a feeling you know what it says." */ DO~~ + g-bbD066.aering
IF~~THEN REPLY @540 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @541 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aeraport12
@543 /*"A fiend and his friend! So adorable. And how are you supposed to find the right one? Do you expect me to look through millions of realities and pick out three more options?" She scoffs. "I guess I already gave you a hint so you wouldn't have to search too long." */
END
IF~~THEN REPLY @545 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @546 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aering
@548 /*"This is an excerpt from the Metatext. I don't think you can understand it, and if you do, you'll probably lose your sanity... for eternity... and then you'd never find your mortality. That would be a disaster!" Æ clutches her collarbone. "Nameless One, you're the perfect actor when you *don't know* the script. If you did, learning your story wouldn't be half as fascinating. Still, this is a valuable artifact. Even without studying the text, it will give you power you need to continue on your path. But it won't be easy." */
END
IF~Global("G-knowaestory","GLOBAL",0)~THEN REPLY @550 /*"So what's your story? How did you get here? If you do understand the Metatext, you probably lived through a lot." */ DO~~ + g-bbD066.aestory1
IF~~THEN REPLY @551 /*"I've got some other questions not related to that..." */ DO~~ + g-bbD066.questions
IF~~THEN REPLY @552 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.aepostpost2
@554 /*"I know your reasons. It would be courtesy towards you. Which doesn't mean I don't want to hear them from you." */
END
IF~GlobalGT("G-FWRAID","GLOBAL",0)~THEN REPLY @556 /*"I supported Ulfbrand in his raid because..." */ DO~~ + g-bbD066.reasons
IF~GlobalGT("G-FWAMBUSH","GLOBAL",0)~THEN REPLY @557 /*"I supported Haer'Dalis' ambush because..." */ DO~~ + g-bbD066.reasons
IF~~THEN REPLY @558 /*"I did what I did because..." */ DO~~ + g-bbD066.reasons
IF~~THEN REPLY @559 /*"I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons
@561 /*Æ is looking at you expectantly. You are not sure if you formulated your own words or if she helped you. "Yes?" */
END
IF~~THEN REPLY @563 /*"...my beliefs were most important to me. I chose allies who aligned with them more closely." */ DO~~ + g-bbD066.reasons1a
IF~GlobalLT("g-knowarchon","GLOBAL",1)~THEN REPLY @564 /*"...I was guided by what seemed morally better. My motivation was good." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD066.reasons1a
IF~GlobalGT("g-knowarchon","GLOBAL",0)~THEN REPLY @565 /*"...I was guided by what seemed morally better. My motivation was good." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD066.reasons1b
IF~~THEN REPLY @566 /*"...I was guided by personal gain. I chose the side that I expected to reward me better. I took economic factors into account." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD066.reasons1c
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @567 /*"...this seemed more fun. Chaos reigns." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD066.reasons1d
IF~~THEN REPLY @568 /*"...this seemed to be the solution that would restore order to Sigil." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD066.reasons1e
IF~~THEN REPLY @569 /*"I really don't know why." */ DO~~ + g-bbD066.reasons1f
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1a
@571 /*Æ smiles and gazes off into the distance. "I'm not going to question your reasons. But..." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @573 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1b
@575 /*Æ smiles. "Did your conversation with the word archon give you pause? As you can see, goodness can be perceived in many different ways. Are they all equally true? Or perhaps equally false? Who knows?" Then, she gazes off into the distance. "I'm not going to question your reasons. But..." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @577 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1c
@579 /*Æ laughs. "Personal gain? From your relatively immortal perspective? I don't know what riches you were expecting, but if you acted this way in your previous lives... The pitiful contents of your pockets when you woke up in the Mortuary are quite ironic." Then, she gazes off into the distance. "I'm not going to question your reasons. But..." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @581 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1d
@583 /*Æ laughs. "So you appreciate the spectacle of chance, too. It's undeniably exciting... But does it really matter?" Then, she gazes off into the distance. "I'm not going to question your reasons. But..." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @585 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1e
@587 /*Æ smiles and looks off somewhere else. "Was there ever any order in Sigil? I'm not going to question your reasons. But..." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @589 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.reasons1f
@591 /*Æ smiles and gazes off into the distance. "You don't have to answer, Nameless One." She begins to walk around you. "I think I've seen everything I wanted to see here. Other places and other times await." */
END
IF~~THEN REPLY @593 /*"Are you leaving?" */ DO~~ + g-bbD066.goodbye1
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye1
@595 /*"We leave, we come back, you and me. Our stories are forever intertwined with this city. Right now... it's time to accept the way things are and move on." */
END
IF~~THEN REPLY @597 /*"So it's time to say goodbye." */ DO~~ + g-bbD066.goodbye2
IF~~THEN REPLY @598 /*"I don't want to accept this state of affairs. It was wrong. I wanted something different." */ DO~~ + g-bbD066.goodbye1b
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye1b
@600 /*"This isn't the first... or the last time you'll feel this way. Every version of your story is worth exploring. There are so many versions of it that, even though I have all of time at my disposal, I could study it over and over again." */
END
IF~~THEN REPLY @602 /*"So it's time to say goodbye." */ DO~~ + g-bbD066.goodbye2
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2
@604 /*"This incarnation of you is very inquisitive, and though you probably wouldn't admit it, it's clear to me that you *want* to know more. And *have* more. Before I go, let me ask you just one more question... Which of the stories from around the Ditch did you like best?" */
END
IF~~THEN REPLY @606 /*"I'm only interested in my main mission: returning to Baator and finding Fury." */ DO~~ + g-bbD066.goodbye2a
IF~OR(2) GlobalGT("G-FWRAID","GLOBAL",0)
GlobalGT("G-FWAMBUSH","GLOBAL",0)~THEN REPLY @607 /*"The conflict between Haer'Dalis and Ulfbrand. It made me realize how sometimes small, insignificant things influence large conflicts and grow into something that determines someone's life." */ DO~~ + g-bbD066.goodbye2b
IF~Global("g-knowarchon","GLOBAL",1)~THEN REPLY @608 /*"I was hoping to visit the Upper Planes for a change. I was impressed by discovering the secret of Kabatum's residence and talking to the word archon, as well as the vast expanse of Ysgard." */ DO~~ + g-bbD066.goodbye2c
IF~OR(2) GlobalGT("G-yangobetray","GLOBAL",0) GlobalGT("G-ratalarm","GLOBAL",0) ~THEN REPLY @609 /*"I'm glad I got to know the surface wererats community better." */ DO~~ + g-bbD066.goodbye2d
IF~GlobalGT("G-kuotoacutscenen","GLOBAL",0)~THEN REPLY @610 /*"If anything, I didn't expect to explore the kuo-toa habitat in Sigil." */ DO~~ + g-bbD066.goodbye2e
IF~GlobalGT("G-agravalquest","GLOBAL",0)~THEN REPLY @611 /*"Hanging out with the tavern fiends was quite a refreshing experience. Searching for a pet modron for one of them even more so." */ DO~~ + g-bbD066.goodbye2f
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2a
@613 /*"Oh, I see. Very sensible." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @615 /*"Farewell, Æ." */ DO~GiveItemCreate("SPWI113",Protagonist,1,1,0) GiveItemCreate("SPWI705",Protagonist,1,1,0) GiveItemCreate("g-bbi061",Protagonist,5,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2b
@617 /*"Oh, I see. The conflict." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @619 /*"Farewell, Æ." */ DO~GiveItemCreate("BUTCHER",Protagonist,1,1,0) GiveItemCreate("GINGOT",Protagonist,2,1,0) GiveItemCreate("g-bbi061",Protagonist,5,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)
~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2c
@621 /*"Oh, I see. The Upper Planes." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @623 /*"Farewell, Æ." */ DO~GiveItemCreate("g-bbi061",Protagonist,5,1,0) GiveItemCreate("SPWI905",Protagonist,1,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2d
@625 /*"Oh, I see. The wererats." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @627 /*"Farewell, Æ." */ DO~GiveItemCreate("DRATCHRM",Protagonist,20,1,0) GiveItemCreate("SPWI909",Protagonist,1,1,0) GiveItemCreate("g-bbi061",Protagonist,5,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2e
@629 /*"Oh, I see. The kuo-toa." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @631 /*"Farewell, Æ." */ DO~GiveItemCreate("WIDMKR",Protagonist,1,1,0) GiveItemCreate("SPWI701",Protagonist,1,1,0) GiveItemCreate("g-bbi061",Protagonist,5,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)
~ EXIT
CHAIN IF~~THEN g-bbD066 g-bbD066.goodbye2f
@633 /*"Oh, I see. The fiends..." She turns and heads toward the theater exit. She turns back for a moment, giving you a mysterious look. Your pack suddenly feels a bit heavier. "We'll meet again someday, Nameless One. In another place and time." */
END
IF~~THEN REPLY @635 /*"Farewell, Æ." */ DO~GiveItemCreate("SPWI912",Protagonist,1,1,0) GiveItemCreate("CLUB2",Protagonist,1,1,0) GiveItemCreate("g-bbi061",Protagonist,5,1,0) EscapeArea() SetGlobal("G-aeexit","GLOBAL",1)~ EXIT