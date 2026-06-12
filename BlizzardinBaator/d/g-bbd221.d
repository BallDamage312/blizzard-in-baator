BEGIN g-bbD221
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD221 g-bbD221.start1
@0 /*You see a black-haired man dressed in a black suit with red details. He is entranced with his book, intensely concentrating as he leafs through the pages. When you block the light, he slowly turns his head to you and smiles. It is not an innocent smile. */
=@1 /*"Scholar Krauss Schneider, specialist in madness." He suddenly twists his lips and blinks uncontrollably. "Can I help you?" */
END
IF~~THEN REPLY @3 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @4 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~~THEN REPLY @5 /*Leave. */ DO~~ EXIT
CHAIN IF~Global("G-krausfinal","GLOBAL",1)~THEN g-bbD221 g-bbD221.start2postalt
@7 /*He shakes his head. "Welcome back! Can... Can I help you?" */
END
IF~~THEN REPLY @9 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @10 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-triplerquest","GLOBAL",7) Global("G-krauswitness","GLOBAL",1)~THEN g-bbD221 g-bbD221.start2postalt
@12 /*"You! You are alive. A-a-and you talk!" */
END
IF~~THEN REPLY @14 /*"And I kept my sanity... to an extent." */ DO~~ + g-bbD221.triplerpost
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-triplerquest","GLOBAL",7) Global("G-krauswitness","GLOBAL",0)~THEN g-bbD221 g-bbD221.start2post
@16 /*"You! You are alive. A-a-and you talk! Did you actually use the stone?" */
END
IF~~THEN REPLY @18 /*"I did. And it cost me a bit, but I am alive and sane... for the most part." */ DO~~ + g-bbD221.triplerpost
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD221 g-bbD221.start2
@20 /*He shakes his head. "Can... Can I help you? I am really busy." */
END
IF~~THEN REPLY @22 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @23 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~Global("G-triplerquest","GLOBAL",6)~THEN REPLY @24 /*"Remember me? We talked about a sensory stone. Can I see it?" */ DO~~ + g-bbD221.tripler5fall
IF~~THEN REPLY @25 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.questions
@27 /*"Ye-yes?" */
END
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @29 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~!CheckStatGT(Protagonist,17,INT) Global("G-kraussforeign","GLOBAL",0)~THEN REPLY @30 /*"You a specialist in... 'madness'?" */ DO~SetGlobal("G-kraussforeign","GLOBAL",1)~ + g-bbD221.madness1a
IF~CheckStatGT(Protagonist,17,INT) Global("G-kraussforeign","GLOBAL",0)~THEN REPLY @31 /*"You a specialist in... 'madness'?" */ DO~SetGlobal("G-kraussforeign","GLOBAL",1)~ + g-bbD221.madness1b
IF~GlobalGT("G-kraussforeign","GLOBAL",0)~THEN REPLY @32 /*"You're not from around here, are you?" */ DO~~ + g-bbD221.foreign
IF~~THEN REPLY @33 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.madness1a
@35 /*He scratches his neck. "Wha-what can I say? The planes are full of things that can drive you mad. The planes of Chaos are especially rich in such attractions. The Abyss, Carceri, and above all, Pandemonium... and Limbo... They have no shortage of sources of Wahnsinn.... er... madness. But even in the planes of Law, reading the wrong book can cost you... ve-very much. Zusammenfassend, madness can find you everywhere in the planes and beyond." You are not sure why he is interjecting words in another language. */
=@36 /*"How does it manifest? You see something that is not there. You hear sounds, footsteps, words. You feel like you are being watched. You notice strange smells without seeing anything that could have caused them. You feel worms crawling under your skin. And then lying there helplessly, with no control over your body, is not the worst option. It could end with you trusting no one and trying to murder everyone. Or, unable to withstand the whispers, you end your own life. Either way, the threat is very real." */
END
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @38 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~~THEN REPLY @39 /*"Does your research affect you?" */ DO~~ + g-bbD221.madness2a
IF~~THEN REPLY @40 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.madness1b
@42 /*He scratches his neck. "Wha-what can I say? The planes are full of things that can drive you mad. The planes of Chaos are especially rich in such attractions. The Abyss, Carceri, and above all, Pandemonium... and Limbo... They have no shortage of sources of Wahnsinn.... er... madness. But even in the planes of Law, reading the wrong book can cost you... ve-very much. Zusammenfassend, madness can find you everywhere in the planes and beyond." You infer the strange word he used means 'to sum up'. Perhaps this is also a symptom of his affliction. */
=@43 /*"How does it manifest? You see something that is not there. You hear sounds, footsteps, words. You feel like you are being watched. You notice strange smells without seeing anything that could have caused them. You feel worms crawling under your skin. And then lying there helplessly, with no control over your body, is not the worst option. It could end with you trusting no one and trying to murder everyone. Or, unable to withstand the whispers, you end your own life. Either way, the threat is very real." */
END
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @45 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~~THEN REPLY @46 /*"Does your research affect you?" */ DO~~ + g-bbD221.madness2a
IF~~THEN REPLY @47 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.madness2a
@49 /*"It's hard for me to express m-myself as coherently as I used to. Because of my uncontrollable tics, I don't feel comfortable in public places. And yet I consider myself remarkably resilient to such things, which is why I'm able to study them at all. But yes, my mind has suffered a bit." He blinks so hard it looks as if he is trying to blink his eyeballs right out of their sockets. "My b-body, too." */
END
IF~Global("G-triplerquest","GLOBAL",5)~THEN REPLY @51 /*"Do you know Tripler? The skeleton obsessed with the number three?" */ DO~~ + g-bbD221.tripler1fall
IF~~THEN REPLY @52 /*"Farewell, I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.madness2b
@54 /*"Be-because of my contact with maddening items, it's hard for me to express m-myself as coherently as I used to. Because of my uncontrollable tics, I don't feel comfortable in public places. And yet I consider myself remarkably resilient to these kinds of things, which is why I'm able to study them at all. But yes, my mind has suffered a bit." He blinks so hard it looks as if he is trying to blink his eyeballs right out of their sockets. "My b-body, too." */
END
IF~~THEN REPLY @56 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @57 /*"Farewell, I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler1fall
@59 /*"Yes. A fa-fascinating creature. I came across it by accident while studying a forbidden sensory stone. Unfortunately, I was unable to communicate with it." */
END
IF~~THEN REPLY @61 /*"What did this stone have to do with Tripler?" */ DO~~ + g-bbD221.tripler2fall
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler2fall
@63 /*"Ah. Let's start from the beginning. Carrion crawler! The Society of Sensation gave me this stone they found in the Ditch. It turned out that several Sensates had tried to read the memory contained within it, and each one fell into a terrible madness, screaming something about threes. Some poor soul even died as a result. As a specialist in madness, I was tasked with finding out why, but the only thing I managed to determine was that whatever is on this stone comes from that skeleton."
 */
=@64 /*"Tripler though, as I mentioned, wasn't particularly helpful. I even tried to identify who the skeleton belonged to based on its teeth, but that didn't work either." */
END
IF~Global("G-krausscontent","GLOBAL",0)~THEN REPLY @66 /*"Do you know the contents of that stone?" */ DO~SetGlobal("G-krausscontent","GLOBAL",1)~ + g-bbD221.tripler3fall
IF~Global("G-kraussthrees","GLOBAL",0)~THEN REPLY @67 /*"Does this have anything to do with the plague of threes?" */ DO~SetGlobal("G-kraussthrees","GLOBAL",1)~ + g-bbD221.tripler4fall
IF~~THEN REPLY @68 /*"Can I use that stone?" */ DO~~ + g-bbD221.tripler5fall
IF~~THEN REPLY @69 /*"Well, that stone seems too dangerous to play with. I will look for answers elsewhere." */ DO~SetGlobal("G-triplerquest","GLOBAL",6)~ SOLVED_JOURNAL @20233 EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler3fall
@71 /*"I ha-have suspicions, the mere act of expressing them would worsen my condition. That is enough for me to presume that even *my* mind might not survive this. The mind is very fragile. People cursed with madness do not recover easily..." */
END
IF~Global("G-kraussthrees","GLOBAL",0)~THEN REPLY @73 /*"Does this have anything to do with the plague of threes?" */ DO~SetGlobal("G-kraussthrees","GLOBAL",1)~ + g-bbD221.tripler4fall
IF~~THEN REPLY @74 /*"Can I use that stone?" */ DO~~ + g-bbD221.tripler5fall
IF~~THEN REPLY @75 /*"Well, that stone seems too dangerous to play with. I will look for answers elsewhere." */ DO~SetGlobal("G-triplerquest","GLOBAL",6)~ SOLVED_JOURNAL @20233 EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler4fall
@77 /*"Definitely. I remember that plague, though I used to call it the 'madness of threes.' Its sudden end probably coincided with the moment that stone was thrown into the Ditch." */
END
IF~Global("G-krausscontent","GLOBAL",0)~THEN REPLY @79 /*"Do you know the contents of that stone?" */ DO~SetGlobal("G-krausscontent","GLOBAL",1)~ + g-bbD221.tripler3fall
IF~~THEN REPLY @80 /*"Can I use that stone?" */ DO~~ + g-bbD221.tripler5fall
IF~~THEN REPLY @81 /*"Well, that stone seems too dangerous to play with. I will look for answers elsewhere." */ DO~SetGlobal("G-triplerquest","GLOBAL",6)~ SOLVED_JOURNAL @20233 EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler5fall
@83 /*"Ab-absolutely not! Didn't you hear what I said? No one who used that stone came out of it unscathed, according to the Sensates. And the Harmonium!" */
END
IF~~THEN REPLY @85 /*"Wait. You mean *you've* never seen it happen?" */ DO~~ + g-bbD221.tripler6fall
IF~~THEN REPLY @86 /*"Well, that stone seems too dangerous to play with. I will look for answers elsewhere." */ DO~SetGlobal("G-triplerquest","GLOBAL",6)~ SOLVED_JOURNAL @20233 EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler6fall
@88 /*"Well... no. It would be unethical to experiment on humans in this way. And there aren't that many volunteers willing to face certain death. Even the Dustmen have enough sense. E-even the Xaositects!" */
END
IF~~THEN REPLY @90 /*"I volunteer. I'm sure you'd like to see what happens. As a scientist and all that." */ DO~SetGlobal("G-triplerquest","GLOBAL",7)~ SOLVED_JOURNAL @20234 + g-bbD221.tripler7fall
IF~~THEN REPLY @91 /*"Well, that stone seems too dangerous to play with. I will look for answers elsewhere." */ DO~SetGlobal("G-triplerquest","GLOBAL",6)~ SOLVED_JOURNAL @20233 EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler7fall
@93 /*The researcher freezes, considering your words. "Ve-verdammt. Well, I can't deny that's true. Are you sure you want to do this?" */
END
IF~~THEN REPLY @95 /*"I know what I'm doing. Give me the stone." */ DO~GiveItemCreate("g-bbi090",Protagonist,1,1,0) DestroyItemObject("g-bbi090","g-bb221",1) ~ + g-bbD221.tripler8fall
CHAIN IF~~THEN g-bbD221 g-bbD221.tripler8fall
@97 /*"You are going to use it at your own risk. Bu-but I cannot say I am not curious how it will affect you. I would like to ob-observe..." He turns around and spits out a string of words: "Damn! Sod! Lady of Pain!" */
END
IF~~THEN REPLY @99 /*"Wait for me here... I'll use the sensory stone and come back." */ DO~~ EXIT
IF~Global("G-krausgood","GLOBAL",0)~THEN REPLY @100 /*"Before I go... are you okay?" */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("G-krausgood","GLOBAL",1)~ + g-bbD221.madness2b
IF~~THEN REPLY @101 /*"I'd like to ask something else before I go." */ DO~~ + g-bbD221.questions
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpost
@103 /*"That is utterly fascinating! Maybe the stone is now safe to use? What did it show you?" */
END
IF~~THEN REPLY @105 /*"It showed me the suffering that Tripler went through. The grief and loss of this man were so strong that they broke the minds that accessed it and kept his body suspended through the sheer power of his emotions. I would not use this stone, it's still dangerous." */ DO~AddexperienceParty(60000) SetGlobal("G-krauswitness","GLOBAL",1) SetGlobal("G-krausfinal","GLOBAL",1)~ + g-bbD221.triplerpostgood
IF~~THEN REPLY @106 /*"What it showed me is my business. But I wouldn't use it if I were you. You would not survive it." */ DO~AddexperienceParty(30000) SetGlobal("G-krauswitness","GLOBAL",1)  SetGlobal("G-krausfinal","GLOBAL",1)~ + g-bbD221.triplerpostneutral
IF~~THEN REPLY @107 /*Lie: "Oh, it is totally safe to use now. Just a bit of a headache. I won't spoil what I have seen, you should just see for yourself. You won't regret it." */ DO~AddexperienceParty(40000) SetGlobal("G-krauswitness","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) TakePartyItem("g-bbi090")  SetGlobal("G-krausfinal","GLOBAL",1)~ + g-bbD221.triplerpostevil
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostgood
@109 /*"Th-that is both fascinating *and* horrifying. Going insane from overbearing grief and loss is known to science. The fact that this stone encapsulated an emotional essence strong enough to break minds is outstanding. That stone should be kept off the streets and in safe hands. Would you return it to me?" */
END
IF~~THEN REPLY @111 /*"Of course. Make sure nobody falls victim to it in the future." */ DO~TakePartyItem("g-bbi090")~ + g-bbD221.triplerpostgood1
IF~~THEN REPLY @112 /*"I will keep it safe, don't you worry." */ DO~~ + g-bbD221.triplerpostgood2
IF~~THEN REPLY @113 /*Shatter the stone into a thousand pieces on the stone floor. */ DO~DestroyPartyItem("g-bbi090",1)~ + g-bbD221.triplerpostgood3
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostgood1
@115 /*"I will, certainly. Th-thank you for this revelation stranger. Your mind must be very strong, indeed." */
END
IF~~THEN REPLY @117 /*"Thank you. I'd like to ask something else." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @118 /*"Thank you, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostgood2
@120 /*"Oh." Krauss seems a bit surprised. "Well if you can handle using it, you can handle protecting it... I hope. Keep it, then. I put my trust in you." */
END
IF~~THEN REPLY @122 /*"Thank you. I'd like to ask something else." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @123 /*"Thank you, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostgood3
@125 /*"Aah!" Krauss yells in surprise. "Well.. it's not the most scientific solution... but it may just be the most rational one. I guess you made that choice so I didn't have to.. Tha-thank you..." */
END
IF~~THEN REPLY @127 /*"Thank you too. I'd like to ask something else." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @128 /*"Thank you too, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostneutral
@130 /*"Ah... fair enough. I guess it must have been very traumatizing. I'm just sorry it amounted to nothing in the end, in terms of research. But, to be fair, I gave up on this stone some time ago anyway." The man sighs. "That stone should be kept off the streets and in safe hands. Would you return it to-to-to me?" */
END
IF~~THEN REPLY @132 /*"Of course. Make sure nobody falls victim to it in the future." */ DO~TakePartyItem("g-bbi090")~ + g-bbD221.triplerpostgood1
IF~~THEN REPLY @133 /*"I will keep it safe, don't you worry." */ DO~~ + g-bbD221.triplerpostgood2
IF~~THEN REPLY @134 /*Shatter the stone into a thousand pieces on the stone floor. */ DO~DestroyPartyItem("g-bbi090",1)~ + g-bbD221.triplerpostgood3
CHAIN IF~~THEN g-bbD221 g-bbD221.triplerpostevil
@136 /*"Oh! That is great news. Gi-give it here, I shall waste no time. Let me see what this vessel of memory held hostage for such a long time." He takes the stone from your hands and closes his eyes, allowing the memories to flood his mind. */
=@137 /*It does not take long for his face to contort and his body to start shaking. You see his nails rip into the stone hard enough to pop off of his fingers and scatter on the floor. */
=@138 /*Eventually, the blood starts flowing from the scientists eyes and ears and he starts laughing. Louder and louder, his maniacal cackle echoes through the library. And then... silence. He falls to the floor, dead. */
==g-bbD030 @139 /*The modron librarian does not react in any emphatic way. It slowly turns towards the incident and announces with alarming calm: "Please temporarily leave the library building. Unsanitary items must be disposed of and the affected floor area must be disinfected." */
END
IF~~THEN REPLY @141 /*Leave. */ DO~Kill("g-bb221") SetAnimState("g-bb221",ANIM_MIMEDIE)~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.foreign
@143 /*"Well, since you asked, I am a military scholar from Rigus. This is the gate-town leading to Acheron. Understanding the nature of madness has become an obsession of mine, which fortunately has allowed me to explore the planes. And cha-change a bit." */
END
IF~Global("G-AkRigus","GLOBAL",0)~THEN REPLY @145 /*"What is your town like?" */ DO~~ + g-bbD221.rigus
IF~Global("G-AkRigus","GLOBAL",1)~THEN REPLY @146 /*"I have some vague memories of your town but... what is it like?" */ DO~~ + g-bbD221.rigus
IF~~THEN REPLY @147 /*"What is Acheron like from your perspective?" */ DO~~ + g-bbD221.acheron
IF~~THEN REPLY @148 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @149 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.acheron
@151 /*"So-some deva said once that Acheron is the home of dreams gone wrong. I ask then, what is wrong with that? But perhaps rather than travel, I would encourage you to look for a good book about it." */
END
IF~Global("G-AkRigus","GLOBAL",0)~THEN REPLY @153 /*"What is Rigus like?" */ DO~~ + g-bbD221.rigus
IF~Global("G-AkRigus","GLOBAL",1)~THEN REPLY @154 /*"I have some vague memories of Rigus but... what is it like?" */ DO~~ + g-bbD221.rigus
IF~~THEN REPLY @155 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @156 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.rigus
@158 /*"There is... Ordnung. Order. Mostly, it is inhabited by humans and tieflings. I, too, used to live there with my family, I was the eldest of my siblings... and the smartest, so instead of fighting in the Blood War, I devoted myself to research. We respect our superiors, and above all, the Great Generals. This is one of the values ​​that is constantly being challenged in planes closer to Limbo, or, as some say, soupwards... Perhaps it is thanks to such an organized mind that I was able to survive my many exposures to places that cause madness... and the cursed items..." */
END
IF~GlobalLT("knowrigus","GLOBAL",1)~THEN REPLY @160 /*"Sounds perfect. This is how the planes should be organized." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("knowrigus","GLOBAL",1)~ + g-bbD221.riguslaw
IF~GlobalLT("knowrigus","GLOBAL",1)~THEN REPLY @161 /*"Sounds awful. I don't like hierarchy and order." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("knowrigus","GLOBAL",1)~ + g-bbD221.riguschaos
IF~~THEN REPLY @162 /*"What is Acheron like from your perspective?" */ DO~~ + g-bbD221.acheron
IF~~THEN REPLY @163 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @164 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.riguslaw
@166 /*He smiles and then suddenly grimaces. "I am very happy about that. Commonspeech cannot quite put it into words, so I will just say: ausgezeichnet. It is wonderful to meet someone with a similar opinion on order." */
END
IF~~THEN REPLY @168 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @169 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD221 g-bbD221.riguschaos
@171 /*"We-well, we are in Sigil... You are entitled to your own opinion. Holding back is bad for the mind... I know people who have literally lost their minds by hiding their beliefs. It is mo-more serious than you think." */
END
IF~~THEN REPLY @173 /*"I have some questions for you." */ DO~~ + g-bbD221.questions
IF~~THEN REPLY @174 /*Leave. */ DO~~ EXIT