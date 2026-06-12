BEGIN g-bbD049
CHAIN IF~Global("G-adoniswait","GLOBAL",1)~THEN g-bbD049 g-bbD049.override
@0 /*The newly sobered up Harmonium officer, Adonis sees you come back and immediately raises his finger in a manner a concerned, polite person would, trying to ask a pressing question. "Citizen, a moment, please? What did you MEAN earlier, what DID you mean?" */
END
IF~~THEN REPLY @2 /*"I wasn't serious. But you clearly do care about something. Why pretend you don't?" */ DO~~ + g-bbD049.care
IF~~THEN REPLY @3 /*Leave the man alone. */ DO~~ EXIT
CHAIN IF~Global("G-adonistherapy","GLOBAL",1)~THEN g-bbD049 g-bbD049.override2
@5 /*Adonis leans against the counter, apathetic. Not really in a mood to talk. He mutters something as you approach. */
END
IF~~THEN REPLY @7 /*"Hey, officer. I am back." */ DO~~ + g-bbD049.apathy
IF~~THEN REPLY @8 /*Leave the man alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD049 g-bbD049.start1
@10 /*A Harmonium guard is leaning against the tavern counter. He is swaying left to right, muttering something to himself, and is engaged with a large mug of something likely alcoholic. He pays no attention to you. */
END
IF~~THEN REPLY @12 /*"Good day, officer." */ DO~~ + g-bbD049.talk
IF~~THEN REPLY @13 /*Leave the man alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD049 g-bbD049.start2
@15 /*Adonis has not moved since you last saw him. He is still leaning hopelessly, a collection of empty mugs on the counter around him only grew in numbers. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @16 /*"Why are we back to the Hardhead? I cannae be 'round'em." */
END
IF~~THEN REPLY @19 /*"Good day again, officer." */ DO~~ + g-bbD049.talk
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @20 /*"Sorry, Annah, you're right, We're leaving." */ DO~~ EXIT
IF~~THEN REPLY @21 /*Leave the man alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.talk
@23 /*Startled by the formality of the expression, the guard straightens up violently, throwing a nearby chair the dirty floor of the tavern, and salutes. "Sergeant Adonis, reporting for... *hic* ...dew-tee." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @24 /**He claims to represent JUSTICE. Shameful.* Vhailor's resonant voice carries a note of sad disappointment. */
END
IF~~THEN REPLY @26 /*"I have some questions." */ DO~~ + g-bbD049.q
IF~~THEN REPLY @27 /*"I have a crime to report." */ DO~~ + g-bbD049.crime
IF~~THEN REPLY @28 /*"Aren't you... drunk on duty?" */ DO~~ + g-bbD049.drunk
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @29 /*Bluff: Impersonate his superior. "At ease, officer!" */ DO~~ + g-bbD049.bluff
IF~~THEN REPLY @30 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.q
@32 /*"Ahh, yeah?" Adonis visibly relaxes and leans back. "Pike you and your questions." */
END
IF~~THEN REPLY @35 /*"But I really do have some important questions." */ DO~~ + g-bbD049.q2
IF~~THEN REPLY @36 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.crime
@38 /*"Ah, yeah?" Adonis does not seem very interested in what you have to say. */
END
IF~Global("G-Adonis1","GLOBAL",0) GlobalGT("G-brill_quest","GLOBAL",0) GlobalLT("G-brill_quest","GLOBAL",10)~THEN REPLY @40 /*"The barman here had his possessions stolen by his previous worker, Ikss'odes. You should capture him and retrieve the stolen goods." */ DO~SetGlobal("G-Adonis1","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",1)~ + g-bbD049.ha
IF~Global("G-Adonis2","GLOBAL",0) GlobalGT("G-BBMain","GLOBAL",10) GlobalLT("G-BBMain","GLOBAL",14)~THEN REPLY @41 /*"I know who is responsible for the disappearances. It's the kuo-toa, and I know where their lair is." */ DO~SetGlobal("G-Adonis2","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",1)~ + g-bbD049.ha
IF~Global("G-Adonis3","GLOBAL",0) GlobalGT("G-BBMain","GLOBAL",9) !Dead("g-bb019") !Global("G-YagnoRat","GLOBAL",1)~THEN REPLY @42 /*"I know where the thieves responsible for the robbery of that yugoloth are." */ DO~SetGlobal("G-Adonis3","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",1)~ + g-bbD049.ha
IF~Global("G-Adonis4","GLOBAL",0) GlobalGT("G-adamquest","GLOBAL",0) GlobalLT("G-adamquest","GLOBAL",4)~THEN REPLY @43 /*"There is a thief, robbing and conning people by the statue of Athena." */ DO~SetGlobal("G-Adonis4","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",1)~ + g-bbD049.ha
IF~Global("G-Adonis5","GLOBAL",0) Global("G-killedsinker","GLOBAL",1)~THEN REPLY @44 /*"I accidentally killed a woman on the cliff. I came to turn myself in." */ DO~SetGlobal("G-Adonis5","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD049.ha
IF~Global("G-Adonis6","GLOBAL",0) Global("G-ActualCannibal","GLOBAL",1)~THEN REPLY @45 /*"I tasted human flesh, I'm an abomination. I came to surrender my meaningless life to the law." */ DO~SetGlobal("G-Adonis6","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("G-AdonisCombo","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",3)~ + g-bbD049.ha
IF~GlobalGT("G-AdonisCombo","GLOBAL",4)~THEN REPLY @46 /*"I am going to destroy all of the planes and everyone who lives here. You are the only person who can stop me, but only if you arrest me right now." */ DO~AddexperienceParty(10000)~ + g-bbD049.ha1
IF~~THEN REPLY @47 /*"Actually, I have some questions." */ DO~~ + g-bbD049.q
IF~~THEN REPLY @48 /*"Actually, I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.ha
@50 /*"Yeaah. No. I don't care... about any of it." He burps and looks away in an attempt to finish the conversation. */
END
IF~~THEN REPLY @52 /*"But I have some questions." */ DO~~ + g-bbD049.q
IF~~THEN REPLY @53 /*"Why are you like this?" */ DO~~ + g-bbD049.why
IF~~THEN REPLY @54 /*"I have another crime to report." */ DO~~ + g-bbD049.crime
IF~~THEN REPLY @55 /*"Aren't you... drunk on duty?" */ DO~~ + g-bbD049.drunk
IF~~THEN REPLY @56 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.q2
@58 /*"Important my *asshole*. Pike off, citizen, and do not disturb me again." Adonis burps violently, to which half of the establishment echoes with a cheer. */
END
IF~~THEN REPLY @60 /*"Why are you like this?" */ DO~~ + g-bbD049.why
IF~~THEN REPLY @61 /*"I have a crime to report." */ DO~~ + g-bbD049.crime
IF~~THEN REPLY @62 /*"Aren't you... drunk on duty?" */ DO~~ + g-bbD049.drunk
IF~~THEN REPLY @63 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.why
@65 /*"Why? WHY? So that berks like you leave me alone. *hic* Clearly it ain't working right. Stand down, citizen, or I will have to use force." */
END
IF~~THEN REPLY @67 /*"Force? But I haven't done anything." */ DO~~ + g-bbD049.warning
IF~~THEN REPLY @68 /*"Fine. Let's dance." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
IF~~THEN REPLY @69 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.warning
@71 /*"Last warning, berk." */
END
IF~~THEN REPLY @73 /*"Fine. Let's dance." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
IF~~THEN REPLY @74 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.drunk
@76 /*"What do you care? Leave me alone, berk." */
END
IF~Global("G-AdonisScold","GLOBAL",0)~THEN REPLY @78 /*"I do care. You are in public service, you are representing this city. You should be ashamed." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-AdonisScold","GLOBAL",1)~ + g-bbD049.scold
IF~~THEN REPLY @79 /*"But I have some questions." */ DO~~ + g-bbD049.q
IF~~THEN REPLY @80 /*"Why are you like this?" */ DO~~ + g-bbD049.why
IF~~THEN REPLY @81 /*"I have a crime to report." */ DO~~ + g-bbD049.crime
IF~~THEN REPLY @82 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.scold
@84 /*The man gets very silent, and you can hear a faint growl, as if a tiny bear was hiding under all those red steel plates. "You have exactly five seconds to leave here or I will have to use force." */
END
IF~~THEN REPLY @86 /*"Force? But I haven't done anything." */ DO~~ + g-bbD049.warning
IF~~THEN REPLY @87 /*"Fine. Let's dance." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
IF~~THEN REPLY @88 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.bluff
@90 /*"Sir, yes, sir..." You see Adonis trying to take a better look at you, but the lights in this room are quite low, and it is entirely possible that he can see at least two of you, if not more. */
END
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @92 /*Bluff: "Report back to your station. There has been a change of schedule." */ DO~~ + g-bbD049.bluff2
IF~CheckStatLT(Protagonist,18,CHR)~THEN REPLY @93 /*Bluff: "Full report, Sergeant. NOW!" */ DO~~ + g-bbD049.bluff3f
IF~CheckStatGT(Protagonist,17,CHR)~THEN REPLY @94 /*Bluff: "Full report, Sergeant. NOW!" */ DO~~ + g-bbD049.bluff3s
CHAIN IF~~THEN g-bbD049 g-bbD049.bluff2
@96 /*"Sir, yes, sir..." Adonis gathers his weapons and heads out, stumbling on the way. */
END
IF~~THEN REPLY @98 /*Watch him leave. */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.bluff3f
@100 /*It may be the sudden reflection of light which shines onto your face, or maybe the physical act of standing up somehow causes the guard to sober up a bit. In an instance, he sees right through you and reaches for his halberd. "Hey! You're not an officer. This is a crime!" */
END
IF~GlobalGT("G-AdonisCombo","GLOBAL",0)~THEN REPLY @102 /*"Oh, so now crime bothers you?" */ DO~~ + g-bbD049.warning
IF~~THEN REPLY @103 /*"Fine. Let's dance." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.bluff3s
@105 /*"Oh... well. Nothing of note to report, I don't think. Day as any other day in the Ditch..." */
END
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @107 /*Bluff: "Report back to your station. There has been a change of schedule." */ DO~~ + g-bbD049.bluff2
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @108 /*Bluff: "Then stand down. Continue your duties." */ DO~~ EXIT
IF~Global("G-BBmain","GLOBAL",5)~THEN REPLY @109 /*Bluff: "How about the illegal detaining of an imp, over there, by these men?" */ DO~~ + g-bbD049.prod
IF~Global("G-BBmain","GLOBAL",5)~THEN REPLY @110 /*"I'm not actually a Hardhead, you should be more careful who you trust." */ DO~~ + g-bbD049.reveal
CHAIN IF~~THEN g-bbD049 g-bbD049.reveal
@112 /*The eyes of sergeant Adonis suddenly increase twice in size and he reaches for his halberd. "Hey! You're not an officer. This is a crime!" */
END
IF~GlobalGT("G-AdonisCombo","GLOBAL",0)~THEN REPLY @114 /*"Oh, so now crime bothers you?" */ DO~~ + g-bbD049.warning
IF~~THEN REPLY @115 /*"Fine. Let's dance." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.prod
@118 /*"Oh. This isn't illegal. This is a legitimate, registered gang and they caught a spy. Nothing illegal about that, sir." */
END
IF~CheckStatGT(Protagonist,20,CHR)~THEN REPLY @120 /*Bluff: "This imp is wanted, and I have come to arrest it. Retrieve it for me, this is a direct order." */ DO~~ + g-bbD049.bluff4s
IF~!CheckStatGT(Protagonist,20,CHR)~THEN REPLY @121 /*Bluff: "This imp is wanted, and I have come to arrest it. Retrieve it for me, this is a direct order." */ DO~~ + g-bbD049.bluff3f
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @122 /*Bluff: "Report back to your station. There has been a change of schedule." */ DO~~ + g-bbD049.bluff2
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @123 /*Bluff: "Then stand down. Continue your duties." */ DO~~ EXIT
IF~Global("G-BBmain","GLOBAL",5)~THEN REPLY @124 /*"I'm not actually a Hardhead, you should be more careful who you trust." */ DO~~ + g-bbD049.reveal
CHAIN IF~~THEN g-bbD049 g-bbD049.bluff4s
@126 /*"Sir, yes, sir!" Adonis moves to approach the men at the far end of the tavern. */
END
IF~~THEN REPLY @128 /*Observe. */ DO~StartCutSceneMode() StartCutScene("g-bbC008")~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.ha1
@130 /*"Yeaah. No. I don't... wait... what?" */
=@131 /*Adonis opens his eyes wider and seems to actually see you for the first time. */
END
IF~~THEN REPLY @133 /*"I... am going to *DESTROY* all of the planes and *EVERYONE* who lives here. *YOU* are the only person who can stop me, but only if you *ARREST* me right now." */ DO~~ + g-bbD049.ha2
IF~~THEN REPLY @134 /*"Actually, I have to go now." */ DO~SetGlobal("G-adoniswait","GLOBAL",1)~ + g-bbD049.wait
CHAIN IF~~THEN g-bbD049 g-bbD049.wait
@136 /*"Wait, wait, wait. What did you say to me?" */
END
IF~~THEN REPLY @138 /*"I... am going to *DESTROY* all of the planes and *EVERYONE* who lives here. *YOU* are the only person who can stop me, but only if you *ARREST* me right now." */ DO~~ + g-bbD049.ha2
IF~~THEN REPLY @139 /*Leave the man be. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.ha2
@141 /*As if all the alcohol in his bloodstream evaporated in an instance, in face of being potentially burdened with something meaningful, the man straightens and his face loses the half-cheerful, half-'I don't give a flying pike' expression.  */
=@142 /*"Are you serious?" */
END
IF~~THEN REPLY @144 /*"No. But you clearly do care about something. Why pretend you don't?" */ DO~~ + g-bbD049.care
IF~~THEN REPLY @145 /*"What if I was?" */ DO~~ + g-bbD049.ha3
IF~~THEN REPLY @146 /*"Actually, I have to go now." */ DO~SetGlobal("G-adoniswait","GLOBAL",1)~ + g-bbD049.wait2
CHAIN IF~~THEN g-bbD049 g-bbD049.wait2
@148 /*"Wait, you're not going anywhere, until you explain!" */
END
IF~~THEN REPLY @150 /*"I am not serious. But you clearly do care about something. Why pretend you don't?" */ DO~~ + g-bbD049.care
IF~~THEN REPLY @151 /*"What if I was serious?" */ DO~~ + g-bbD049.ha3
CHAIN IF~~THEN g-bbD049 g-bbD049.ha3
@153 /*"I... guess... I would have to arrest you?" His voice betrays a great lack of confidence, but somehow, also a desire to act. */
END
IF~~THEN REPLY @155 /*"Well, I am not serious. But you clearly do care about something. Why pretend you don't?" */ DO~~ + g-bbD049.care
IF~~THEN REPLY @156 /*Attack the guard. "You will never take me alive, Hardhead." */ DO~Enemy() Attack(Protagonist) IncrementGlobal("LAW","GLOBAL",-5)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.care
@158 /*"I..." Adonis slouches and sighs audibly. "I don't know if I care. I used to, but that just made my life that much more difficult." */
END
IF~GlobalGT("GOOD","GLOBAL",5)~THEN REPLY @160 /*"Caring shouldn't make life more difficult. Tell me about it." */ DO~~ + g-bbD049.good
IF~GlobalLT("GOOD","GLOBAL",-5)~THEN REPLY @161 /*"So, you're weak. Explain yourself." */ DO~~ + g-bbD049.evil
IF~GlobalLT("GOOD","GLOBAL",10) GlobalGT("GOOD","GLOBAL",-10)~THEN REPLY @162 /*"Doubt is natural. Elaborate." */ DO~~ + g-bbD049.neutral
CHAIN IF~~THEN g-bbD049 g-bbD049.good
@164 /*"You're right, it shouldn't. It's just that I joined the Harmonium to try and make this city a better place. But every time, we either arrive too late, or we're sent to do something I ain't exactly keen on, or proud of. Sometimes, I feel ashamed of what other guards are saying or doing. I joined with a sense of purpose, and yet, I lost all of it and I am now purposeless." */
END
IF~GlobalGT("LAW","GLOBAL",5)~THEN REPLY @166 /*"Sounds like the system failed you. Be the change you want to see. Inspire others to do better. It's no use wasting away, you are in a position to do good, to do justice. Do it." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.lawfulgood
IF~GlobalLT("LAW","GLOBAL",-5)~THEN REPLY @167 /*"Sounds like you are in the wrong faction. Law enforcement isn't for you. If you want to help people, help people on your own terms. Do not let anyone dictate what they are. */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.chaoticgood
IF~GlobalLT("LAW","GLOBAL",10) GlobalGT("LAW","GLOBAL",-10)~THEN REPLY @168 /*"Sounds like you should reevaluate your life. Maybe find your purpose outside of work?" */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.neutralgood
CHAIN IF~~THEN g-bbD049 g-bbD049.evil
@170 /*"You're right, I am weak... I am purposeless. I should just disappear... I joined the Harmonium to try and make this city a better place. But every time, we either arrive too late, or we're sent to do something I ain't exactly keen on, or proud of. Sometimes, I feel ashamed of what other guards are saying or doing. I joined with a sense of purpose, and yet, it's all gone. I am empty." */
END
IF~GlobalGT("LAW","GLOBAL",5)~THEN REPLY @172 /*"Sounds like you are just not doing your job. You should report to the Barracks for disciplinary hearing and accept the punishment. Your current state is a disgrace for the city and the institution you represent." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.lawfulevil
IF~GlobalLT("LAW","GLOBAL",-5)~THEN REPLY @173 /*"You are empty. You are a failure. There is no place for you in the multiverse. There is a lovely cliff a couple minutes away. You should... go check it out if you know what I mean." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)  IncrementGlobal("GOOD","GLOBAL",-3)~ + g-bbD049.chaoticevil
IF~GlobalLT("LAW","GLOBAL",10) GlobalGT("LAW","GLOBAL",-10)~THEN REPLY @174 /*"You suck. Get out of here, before I kick your sorry ass." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.neutralevil
CHAIN IF~~THEN g-bbD049 g-bbD049.neutral
@176 /*"I joined the Harmonium to try and make this city a better place. But every time, we either arrive too late, or we're sent to do something I ain't exactly keen on, or proud of. Sometimes, I feel ashamed of what other guards are saying or doing. I joined with a sense of purpose, and yet, I don't feel much of it right now." */
END
IF~GlobalGT("LAW","GLOBAL",5)~THEN REPLY @178 /*"If you have doubts about your post and duties, you should bring it up with your superiors. Maybe you just need a transfer." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.lawfulneutral
IF~GlobalLT("LAW","GLOBAL",-5)~THEN REPLY @179 /*"I can tell you exactly how to find purpose in your work. Prank people. Prank your fellow officers, prank criminals. Become the agent of chaos." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.chaoticneutral
IF~GlobalLT("LAW","GLOBAL",10) GlobalGT("LAW","GLOBAL",-10)~THEN REPLY @180 /*"Maybe the change will come. Our fate is rarely in our own hands. Just hold on, officer Adonis." */ DO~SetGlobal("G-adoniswait","GLOBAL",0) SetGlobal("G-adonistherapy","GLOBAL",1)~ + g-bbD049.trueneutral
CHAIN IF~~THEN g-bbD049 g-bbD049.lawfulgood
@182 /*"You're... right. I should do that! I can maybe inspire some similar bodies to... Yes! Thank you, stranger. I guess I just needed a push!" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @183 /*"You handled that very well indeed, my friend." */
END
IF~~THEN REPLY @185 /*"Go and get them, officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",2) IncrementGlobal("GOOD","GLOBAL",2) AddexperienceParty(10000) ActionOverride("g-bb049",EscapeArea()) MoraleInc("Grace",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.chaoticgood
@187 /*"You're... right. I should do that! I can travel the planes and rescue people. That's what I was destined to do! Thank you, stranger. I guess I just needed a push!" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @188 /*"You handled that very well indeed, my friend." */
END
IF~~THEN REPLY @190 /*"Go and get them, ex-officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",-2) IncrementGlobal("GOOD","GLOBAL",2) AddexperienceParty(10000) ActionOverride("g-bb049",EscapeArea()) MoraleInc("Grace",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.neutralgood
@192 /*"You're... right. I could get a hobby. Maybe I can volunteer at the Gatehouse... or start collecting wooden carvings of birds... Thank you, stranger. I guess I just needed a push!" */
END
IF~~THEN REPLY @194 /*"Happy hunting, officer Adonis." */ DO~IncrementGlobal("GOOD","GLOBAL",2) AddexperienceParty(10000) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.lawfulevil
@196 /*"You're... right. I failed. I should accept the consequences. I guess I knew that deep inside but... needed a push. Thank you, stranger." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @197 /**Well handled. He deserved discipline.* */
END
IF~~THEN REPLY @199 /*"Go and repent, officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",2) IncrementGlobal("GOOD","GLOBAL",-2) AddexperienceParty(10000) ActionOverride("g-bb049",EscapeArea()) MoraleInc("Vhail",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.chaoticevil
@201 /*"You're... right. I am already gone in all senses but physical. I guess I... just needed a... push." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @202 /**"Youuu send him tooo *WATER*? Where... there is soo.... much FIRE..."* */
END
IF~~THEN REPLY @204 /*"Farewell, officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",-2) AddexperienceParty(10000) ActionOverride("g-bb049",EscapeArea()) MoraleDec("Grace",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.neutralevil
@206 /*"You're... right." Adonis seems saddened and on the verge of crying. */
END
IF~~THEN REPLY @208 /*"I said get out of here." */ DO~IncrementGlobal("GOOD","GLOBAL",-2) AddexperienceParty(10000) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.lawfulneutral
@210 /*"You're... right. I should bring it up. Maybe Lady's Ward has some postings that fit me better. Thank you, stranger." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @211 /*"Re-calibrating people... by other people... is impressive. Method observed." */
END
IF~~THEN REPLY @213 /*"Have a nice day, officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",1) AddexperienceParty(10000) EscapeArea() MoraleInc("Nordom",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.chaoticneutral
@215 /*"You know what... that could work..." Adonis cheers up a bit and even gives a little chuckle. "I already have some ideas. Thank you, stranger, that's some great advice." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @216 /*"Ye may have created the first fun Hardhead. Beamin'." */
END
IF~~THEN REPLY @218 /*"Kick their asses, officer Adonis." */ DO~IncrementGlobal("LAW","GLOBAL",-2) AddexperienceParty(10000) EscapeArea() MoraleInc("Annah",1)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.trueneutral
@220 /*"Ah. Perhaps..." He does not seem too confident. */
END
IF~~THEN REPLY @222 /*"I will leave you to contemplate, officer." */ DO~AddexperienceParty(10000)~ EXIT
CHAIN IF~~THEN g-bbD049 g-bbD049.apathy
@224 /*Adonis stares at you blankly through his hazy eyes. */
END
IF~~THEN REPLY @226 /*"I have some questions." */ DO~~ + g-bbD049.apathy
IF~~THEN REPLY @227 /*"I have a crime to report." */ DO~~ + g-bbD049.apathy
IF~~THEN REPLY @228 /*"I have to go now." */ DO~~ EXIT