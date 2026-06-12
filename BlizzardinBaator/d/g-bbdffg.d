BEGIN g-bbDFFG
CHAIN IF~Global("g-fakeffgdialogue","GLOBAL",0)~THEN g-bbDFFG g-bbDFFG.q
@0 /*"Yes?" [FFG003] */
END
IF~~THEN REPLY @2 /*"I just want to know how you're feeling." */ DO~~ + g-bbDFFG.q1
IF~~THEN REPLY @3 /*"What do you think we should do now?" */ DO~~ + g-bbDFFG.q2
IF~~THEN REPLY @4 /*"Wait for me here. I'll come back for you." */ DO~~ + g-bbDFFG.dropoff
IF~~THEN REPLY @5 /*"Nothing. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.dropoff
@7 /*"I will not stay here. I have spent enough time in this place." */
EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.q1
@10 /*Grace breathes in. */
==g-bbdffg IF~AreaCheck("arg-10")~THEN @11 /*"I am fine, as long as I am with you." */
END
IF~~THEN REPLY @13 /*"I wish to speak about other matters." */ DO~~ + g-bbDFFG.q
IF~~THEN REPLY @14 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.q2
@16 /*The woman smiles in amazement. "Is your memory failing you again?" */
==g-bbdffg IF~Global("G-BBmain","GLOBAL",21)~THEN @17 /*"We should find Gemariel, our guide through this cursed layer." */
==g-bbdffg IF~Global("G-BBmain","GLOBAL",22)~THEN @18 /*"We should find Gemariel, our guide through this cursed layer, and hope that Akershus and his devils haven't found him already..." */
END
IF~~THEN REPLY @20 /*"I wish to speak about other matters." */ DO~~ + g-bbDFFG.q
IF~~THEN REPLY @21 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakeffgdialogue","GLOBAL",1)~THEN g-bbDFFG g-bbDFFG.d001start
@24 /*The moment you step into the Civic Festhall, Fall-from-Grace gently takes your hand and pulls you aside. */
=@25 /*"I would speak to you a moment." She seems a little nervous, which is a stark contrast to her usual stoicism. [FFG245] */
END
IF~~THEN REPLY @27 /*Allow her to pull you. "Of course, what is it?" */ DO~~ + g-bbDFFG.d001A
IF~~THEN REPLY @28 /*Allow her to pull you. "All right, but make it quick. We have a professor to find." */ DO~~ + g-bbDFFG.d001B
IF~~THEN REPLY @29 /*"Not now, succubus. We have a professor to find." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d001A
@31 /*"Maybe I should have mentioned this right away, but I didn't want to reveal it in public..." She looks around, making sure no one is eavesdropping. "As you know... a long time ago, I spent some time in the Hells. I never mentioned the exact place where I was staying, but... in fact, it was Mephistar... in Cania." */
=@32 /*"You may think it's fate or some divine coincidence, but truth be told it is one of the biggest and most... well... intellectually developed cities in all of Baator, so I would argue it is simply a... *common* coincidence," Grace's voice trails off and she looks at the beautiful frescoes adorning the walls of the lobby. "I hope," she adds in a whisper. */
END
IF~Global("g-d001q1","GLOBAL",0)~THEN REPLY @34 /*"Oh, excellent. You will be my guide then; we don't need another." */ DO~SetGlobal("g-d001q1","GLOBAL",1)~ + g-bbDFFG.d001guide
IF~Global("g-d001q2","GLOBAL",0)~THEN REPLY @35 /*"Then you have some potential allies in the city?" */ DO~SetGlobal("g-d001q2","GLOBAL",1)~ + g-bbDFFG.d001allies
IF~Global("g-d001q3","GLOBAL",0)~THEN REPLY @36 /*"I see. Do you not wish to return there?"  */ DO~SetGlobal("g-d001q3","GLOBAL",1)~ + g-bbDFFG.d001concern
IF~OR(3) Global("g-d001q1","GLOBAL",0) Global("g-d001q2","GLOBAL",0) Global("g-d001q3","GLOBAL",0)~THEN REPLY @37 /*"All right, great, but we don't have time for this. We *must* find the professor." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d001B
@39 /*Grace scolds you with her penetrating gaze for the lack of patience. She does not need to frown or wince, as there is something in her eyes that serves well enough to convey it all. */
=@40 /*"It's important, my friend. Maybe I should have mentioned this right away, but I didn't want to reveal it in public..." She looks around, making sure no one is eavesdropping. "As you know... a long time ago, I spent some time in the Hells. I never mentioned the exact place where I was staying, but... in fact, it was Mephistar... in Cania." */
=@41 /*"You may think it's fate or some divine coincidence, but truth be told it is one of the biggest and most... well... intellectually developed cities in all of Baator, so I would argue it is simply a... *common* coincidence," Grace's voice trails off and she looks at the beautiful frescoes adorning the walls of the lobby. "I hope," she adds in a whisper. */
END
IF~Global("g-d001q1","GLOBAL",0)~THEN REPLY @43 /*"Oh, excellent. You will be my guide then, we don't need another." */ DO~SetGlobal("g-d001q1","GLOBAL",1)~ + g-bbDFFG.d001guide
IF~Global("g-d001q2","GLOBAL",0)~THEN REPLY @44 /*"Then you have some potential allies in the city?" */ DO~SetGlobal("g-d001q2","GLOBAL",1)~ + g-bbDFFG.d001allies
IF~Global("g-d001q3","GLOBAL",0)~THEN REPLY @45 /*"I see. Do you not wish to return there?" */ DO~SetGlobal("g-d001q3","GLOBAL",1)~ + g-bbDFFG.d001concern
IF~OR(3) Global("g-d001q1","GLOBAL",0) Global("g-d001q2","GLOBAL",0) Global("g-d001q3","GLOBAL",0)~THEN REPLY @46 /*"All right, great, but we don't have time for this. We *must* find the professor." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d001guide
@48 /*She looks mildly troubled by the assumption. "If we end up in the mountainous wilderness, which I hear is the plan, then I'm afraid I won't be of much help. I spent some time in a prison at the bottom of a deep valley, and eventually was moved, through a portal, to the city itself. I was never truly outside." */
END
IF~Global("g-d001q2","GLOBAL",0)~THEN REPLY @50 /*"Do you have some potential allies in the city?" */ DO~SetGlobal("g-d001q2","GLOBAL",1)~ + g-bbDFFG.d001allies
IF~Global("g-d001q3","GLOBAL",0)~THEN REPLY @51 /*"Do you not wish to return there?" */ DO~SetGlobal("g-d001q3","GLOBAL",1)~ + g-bbDFFG.d001concern
IF~Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @52 /*"Thank you for confiding in me, Grace. I will consider what you've told me." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~Global("g-d001q1","GLOBAL",1) Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @53 /*"Can we find the professor now?" */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~OR(3) Global("g-d001q1","GLOBAL",0) Global("g-d001q2","GLOBAL",0) Global("g-d001q3","GLOBAL",0)~THEN REPLY @54 /*"We don't have time for this. We *must* find the professor." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d001allies
@56 /*"I... gained a modicum of respect among the local fiends, unusual for a tanar'ri among the baatezu, but I would never call any of them... allies..." She pauses and considers her next words very carefully. "Perhaps there are some who will remember me, but I will still be in enemy territory." */
END
IF~Global("g-d001q1","GLOBAL",0)~THEN REPLY @58 /*"You will be my guide then, we don't need another." */ DO~SetGlobal("g-d001q1","GLOBAL",1)~ + g-bbDFFG.d001guide
IF~Global("g-d001q3","GLOBAL",0)~THEN REPLY @59 /*"I see. Do you not wish to return there?" */ DO~SetGlobal("g-d001q3","GLOBAL",1)~ + g-bbDFFG.d001concern
IF~Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @60 /*"Thank you for confiding in me, Grace. I will consider what you've told me." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~Global("g-d001q1","GLOBAL",1) Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @61 /*"Can we find the professor now?" */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~OR(3) Global("g-d001q1","GLOBAL",0) Global("g-d001q2","GLOBAL",0) Global("g-d001q3","GLOBAL",0)~THEN REPLY @62 /*"We don't have time for this. We *must* find the professor." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d001concern
@64 /*"If the frozen wastelands of Cania is where my path by your side takes me, so be it. It is not a place I would visit on my own free will but we are bound to travel together and, I'm sure, we will protect each other when the need arises." */
END
IF~Global("g-d001q1","GLOBAL",0)~THEN REPLY @66 /*"Oh, excellent. You will be my guide then, we don't need another." */ DO~SetGlobal("g-d001q1","GLOBAL",1)~ + g-bbDFFG.d001guide
IF~Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @68 /*"Thank you for confiding in me, Grace. I will consider what you've told me." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~Global("g-d001q1","GLOBAL",1) Global("g-d001q2","GLOBAL",1) Global("g-d001q3","GLOBAL",1)~THEN REPLY @69 /*"That's great. Can we find the professor now?" */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~OR(3) Global("g-d001q1","GLOBAL",0) Global("g-d001q2","GLOBAL",0) Global("g-d001q3","GLOBAL",0)~THEN REPLY @70 /*"All right, great, but we don't have time for this. We *must* find the professor." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~Global("g-fakeffgdialogue","GLOBAL",2)~THEN g-bbDFFG g-bbDFFG.d002start
@73 /*As you traverse the deep snow, Grace flies over to you, the flapping of her wings barely audible amid the howling wind. */
=@74 /*"So. Here we are." */
END
IF~~THEN REPLY @76 /*"Indeed. Any familiar sights?" */ DO~SetGlobal("g-d002q1","GLOBAL",1)~ + g-bbDFFG.d002A
IF~~THEN REPLY @77 /*"Are you alright?" */ DO~SetGlobal("g-d002q2","GLOBAL",1)~ + g-bbDFFG.d002B
IF~~THEN REPLY @78 /*"Not now, succubus. We have a long way to go. We can talk more when we reach a safer place." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d002A
@80 /*Her facial expression grows stern. "Well. We can already see the bright lights of Mephistar in the distance, but I must admit I only ever saw these walls from the inside. Therefore I wouldn't call the *sight* familiar... perhaps just the fear. The *fear* is familiar." */
=@81 /*She brightens up a little. "But of course I was alone back then." */
END
IF~Global("g-d002q2","GLOBAL",0)~THEN REPLY @83 /*"Are you alright?" */ DO~SetGlobal("g-d002q2","GLOBAL",1)~ + g-bbDFFG.d002B
IF~~THEN REPLY @84 /*"Indeed. Stay close, Grace. I will look out for you, but we have a long way to go. We can talk more when we reach a safer place." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.d002B
@86 /*"I am not cold, thanks to the devils' robe. I am not lost as I see where we're going. And I am not alone as I have *you* by my side. I am... all right, for now." */
=@87 /*"We can revisit this notion when we meet our first denizens..." */
END
IF~Global("g-d002q1","GLOBAL",0)~THEN REPLY @89 /*"Indeed. Any familiar sights?" */ DO~SetGlobal("g-d002q1","GLOBAL",1)~ + g-bbDFFG.d002A
IF~~THEN REPLY @90 /*"Indeed. Stay close, Grace. I will look out for you, but we have a long way to go. We can talk more when we reach a safer place." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~Global("g-fakeffgdialogue","GLOBAL",3)~THEN g-bbDFFG g-bbDFFG.sauffg2
@93 /*Fall-from-Grace awaits outside the sauna. */
=@94 /*"At last. Are you all right? Please forgive me for not joining you. Nevertheless, I am very curious to hear how you liked it. How do you feel?" [FFG298] */
END
IF~~THEN REPLY @96 /*"I really liked it. I'd love to come back." */ DO~~ + g-bbDFFG.sauffg3
IF~~THEN REPLY @97 /*"I'm not sure what to think of this experience." */ DO~~ + g-bbDFFG.sauffg4
IF~~THEN REPLY @98 /*"I don't think it's for me. I didn't like it." */ DO~~ + g-bbDFFG.sauffg5
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.sauffg3
@100 /*"I'm glad that it was a valuable experience for you." */
END
IF~~THEN REPLY @102 /*"I hope you will accompany me next time?" */ DO~~ + g-bbDFFG.sauffg6
IF~~THEN REPLY @103 /*"Time to go." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.sauffg4
@105 /*"Underwhelming experiences are still valuable. Without a featureless gray background, even the most radiant of gems can lose their sparkle." */
END
IF~~THEN REPLY @107 /*"It's not the same without you." */ DO~~ + g-bbDFFG.sauffg6
IF~~THEN REPLY @108 /*"Time to go." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.sauffg5
@110 /*Fall-from-Grace shrugs in silence, a hapless smile pulling on her face. */
END
IF~~THEN REPLY @112 /*"It's not the same without you." */ DO~~ + g-bbDFFG.sauffg6
IF~~THEN REPLY @113 /*"Time to go." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.sauffg6
@115 /*"I am sorry. I think you will need to be really patient. I am afraid if I went in there with you... it could end badly." */
END
IF~GlobalLT("g-sauffg1","GLOBAL",1)~THEN REPLY @117 /*"Why? Do you want to tell me about it?" */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) SetGlobal("g-sauffg1","GLOBAL",1) ~ + g-bbDFFG.sauffg7
IF~~THEN REPLY @118 /*"Time to go." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDFFG g-bbDFFG.sauffg7
@120 /*"It's my succubus physiology... I wear a chastity bodice not without a reason. This is a way to protect against... accidents. Removing it in front of you could be... harmful or distressing. I hope you understand." */
END
IF~~THEN REPLY @122 /*"Thank you for honesty. Time to go." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT
IF~~THEN REPLY @123 /*"That's horrible. Time to go, then." */ DO~DestroySelf() SetGlobal("g-fakeffgdialogue","GLOBAL",0)~ EXIT