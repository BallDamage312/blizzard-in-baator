BEGIN g-bbD209
CHAIN IF~NumTimesTalkedTo(0) Global("G-skppsloc","GLOBAL",0) ~THEN g-bbD209 g-bbD209.start
@0 /*Next to a small makeshift pier on a heap of garbage, under a rocky overhang, sits a boat. Next to the boat, on an old chair, sits a man with a large mustache. He is dressed in a dirty blue uniform. He is smoking a pipe and staring solemnly into the slow-moving, thick waters of the Ditch. When he sees you approaching, he sighs deeply and stands up to greet you. */
=@1 /*"Ahoy. Welcome to Skppr skipping services. What can I do you for today?" His words sound like they should be uttered with enthusiasm, but they are deprived of it completely. */
END
IF~~THEN REPLY @3 /*"Greetings. I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @4 /*"Greetings. I have some questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @5 /*"Greetings and goodbye." */ DO~~ EXIT
IF~~THEN REPLY @6 /*"Greetings and goodbye, garbage sailor." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
CHAIN IF~Global("G-skppsloc","GLOBAL",1) ~THEN g-bbD209 g-bbD209.start3
@8 /*"What? Are you satisfied? Do you want to go back now?" */
END
IF~~THEN REPLY @10 /*"No, I'm not done here." */ DO~~ EXIT
IF~NumInParty(1)~THEN REPLY @11 /*"Can you stay here and watch me rest?" */ DO~~ + g-bbD209.rest
IF~!NumInParty(1)~THEN REPLY @12 /*"Can you stay here and watch us rest?" */ DO~~ + g-bbD209.rest
IF~NumInParty(1)~THEN REPLY @13 /*"Can you wake me up just before anti-peak?" */ DO~~ + g-bbD209.restX
IF~!NumInParty(1)~THEN REPLY @14 /*"Can you wake us up just before anti-peak?" */ DO~~ + g-bbD209.restX
IF~~THEN REPLY @15 /*"Yes, let's travel back to the shore." */ DO~SetGlobal("G-skppsloc","GLOBAL",0) TeleportParty("ARG-FF",[3516.1627],7) PlaySound("g-boat")~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-skppsloc","GLOBAL",0) ~THEN g-bbD209 g-bbD209.start2
@17 /*The strange skipper is still sitting in the shade of the rocky overhang above. */
=@18 /*"Ahoy. Welcome to Skppr... Ah, it's you again. What do you want?" */
END
IF~~THEN REPLY @20 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @21 /*"I have some questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @22 /*"Nothing. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.rest
@24 /*The man looks at you suspiciously. The whole 'take me to a remote location and watch me while I sleep' scenario is definitely raising red flags. */
=@25 /*"Right, cutter. Not to offend you or anything..."  */
END
IF~!PartyGoldLT(50)~THEN REPLY @27 /*"I'll pay another 50 coppers." */ DO~TakePartyGold(50)~ + g-bbD209.rest2
IF~~THEN REPLY @28 /*"Never mind, let's just travel back." */ DO~SetGlobal("G-skppsloc","GLOBAL",0) TeleportParty("ARG-FF",[3516.1627],7) PlaySound("g-boat")~ EXIT
IF~~THEN REPLY @29 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.rest2
@31 /*The man sighs. "Alright. But if you asked *me* to go to sleep and you wanted to watch me, it would cost you way more." */
END
IF~~THEN REPLY @33 /*Take a rest. */ DO~RestPartyEx(0, 0, true)~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.q
@35 /*"I'm not here to answer questions, basher." */
END
IF~Global("G-skppq1","GLOBAL",0)~THEN REPLY @37 /*"But it's about your business. You said it's called Skppr, right? How do you even say that without any vowels?" */ DO~SetGlobal("G-skppq1","GLOBAL",1)~ + g-bbD209.skppr
IF~Global("G-skppq2","GLOBAL",0)~THEN REPLY @38 /*"Are boat services popular... in this part of the Ditch?" */ DO~SetGlobal("G-skppq2","GLOBAL",1)~ + g-bbD209.popular
IF~Global("G-skppq3","GLOBAL",0) OR(2) Global("G-adamkuotoa","GLOBAL",1) Global("ARG-KK_visited","GLOBAL",1)~THEN REPLY @39 /*"Have you never been bothered by the kuo-toa?" */ DO~SetGlobal("G-skppq3","GLOBAL",1)~ + g-bbD209.kuo
IF~Global("G-skppq4","GLOBAL",0)~THEN REPLY @40 /*"Why are you down here, with all the garbage?" */ DO~SetGlobal("G-skppq4","GLOBAL",1)~ + g-bbD209.trash
IF~CheckStatGT(Protagonist,17,INT) Global("G-skppq5","GLOBAL",0) Global("G-skpps1","GLOBAL",1)
Global("G-skpps2","GLOBAL",1)
Global("G-skpps3","GLOBAL",1)
Global("G-skpps4","GLOBAL",1)
Global("G-skpps5","GLOBAL",1)~THEN REPLY @41 /*"You aren't here to offer boat services, are you? You're a smuggler." */ DO~SetGlobal("G-skppq5","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD209.smuggler
IF~~THEN REPLY @42 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @43 /*"In that case, there's nothing more to discuss. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.serv
@45 /*"Would you, now?" The skipper sighs. "What do you want?" */
END
IF~CheckStatGT(Protagonist,17,INT) Global("G-skppq5","GLOBAL",0) Global("G-skpps1","GLOBAL",1)
Global("G-skpps2","GLOBAL",1)
Global("G-skpps3","GLOBAL",1)
Global("G-skpps4","GLOBAL",1)
Global("G-skpps5","GLOBAL",1)~THEN REPLY @47 /*"You aren't here to offer boat services, are you? You're a smuggler." */ DO~SetGlobal("G-skppq5","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD209.smuggler
IF~Global("G-awareportal","GLOBAL",1)~THEN REPLY @48 /*"Can you just give me a ride to the old clock tower over there?" */ DO~SetGlobal("G-skpps_tower","GLOBAL",1)~ + g-bbD209.clocktower
IF~Global("G-skpps1","GLOBAL",0)~THEN REPLY @49 /*"Can you take me to the Suicide Falls?" */ DO~SetGlobal("G-skpps1","GLOBAL",1)~ + g-bbD209.falls
IF~Global("G-skpps2","GLOBAL",0)~THEN REPLY @50 /*"Can you take me under the Zaddfum Trestle?" */ DO~SetGlobal("G-skpps2","GLOBAL",1)~ + g-bbD209.trestle
IF~Global("G-skpps3","GLOBAL",0)~THEN REPLY @51 /*"Can you take me to the beach?" */ DO~SetGlobal("G-skpps3","GLOBAL",1)~ + g-bbD209.beach
IF~Global("G-skpps4","GLOBAL",0)~THEN REPLY @52 /*"Can you take me to the other side of the Ditch?" */ DO~SetGlobal("G-skpps4","GLOBAL",1)~ + g-bbD209.other
IF~Global("G-skpps5","GLOBAL",0)~THEN REPLY @53 /*"Can you take me to the Seafarer's Arch?" */ DO~SetGlobal("G-skpps5","GLOBAL",1)~ + g-bbD209.arch
IF~Global("g-knowknifeintheriver","GLOBAL",1)~THEN REPLY @54 /*"Can you take me to the Knife in the River?" */ DO~~ + g-bbD209.knife
IF~Global("G-skpps1","GLOBAL",1)~THEN REPLY @55 /*"Can you take me to the Suicide Falls?" */ DO~~ + g-bbD209.falls2
IF~Global("G-skpps2","GLOBAL",1)~THEN REPLY @56 /*"Can you take me under the Zaddfum Trestle?" */ DO~~ + g-bbD209.trestle2
IF~Global("G-skpps3","GLOBAL",1)~THEN REPLY @57 /*"Can you take me to the beach?" */ DO~~ + g-bbD209.beach2
IF~Global("G-skpps4","GLOBAL",1)~THEN REPLY @58 /*"Can you take me to the other side of the Ditch?" */ DO~~ + g-bbD209.other2
IF~Global("G-skpps5","GLOBAL",1)~THEN REPLY @59 /*"Can you take me to the Seafarer's Arch?" */ DO~~ + g-bbD209.arch2
IF~~THEN REPLY @60 /*"I guess I'd rather you answered some questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @61 /*"Nothing. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.falls
@63 /*"What? The falls? No, you can't get there by boat. The current is too strong and it could just yank the boat off the edge. No way." */
END
IF~~THEN REPLY @65 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @66 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @67 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.knife
@69 /*"The Knife? The rocks and debris there are too dangerous. Can't get there without a perfect navigator." */
END
IF~~THEN REPLY @71 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @72 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @73 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.falls2
@75 /*"No! I already told you. They're called Suicide Falls for a reason. I'm not going there!" */
END
IF~~THEN REPLY @77 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @78 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @79 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.trestle
@81 /*"I can't take you to the Trestle, it's wererat territory." */
END
IF~~THEN REPLY @83 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @84 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @85 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.trestle2
@87 /*"No! It's like I said. The rats would sink my boat if I went there. It's not an option!" */
END
IF~~THEN REPLY @89 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @90 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @91 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.other
@93 /*"The other side? No, the Hardhead patrols always stop all vessels going towards the Lower. I don't go there in case you have contraband. It's not on the menu." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @94 /*"Do they, now?" */
END
IF~~THEN REPLY @96 /*"I promise I don't have any contraband." */ DO~~ + g-bbD209.other2
IF~~THEN REPLY @97 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @98 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @99 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.other2
@101 /*"No! I don't trust you and I won't be fed to the wyrm on your account. End of discussion." */
END
IF~~THEN REPLY @103 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @104 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @105 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.beach
@107 /*"Nope. Can't go to the beach. We'd have to go by the port and they don't like non-commercial boats there. Also, the ladies at the beach hate the smell I bring. Or so I'm told." */
END
IF~~THEN REPLY @109 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @110 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @111 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.beach2
@113 /*"Are you not listening? The beach is not a possible destination!" */
END
IF~~THEN REPLY @115 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @116 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @117 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.arch
@119 /*"And get sucked through one of the gates, never to be seen again? Are you barmy? I don't go anywhere near it without a portal navigator." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @120 /*"That sounds like a reasonable concern." */
END
IF~~THEN REPLY @122 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @123 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @124 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.arch2
@126 /*"I explained already. It's far too dangerous. I will not go there." */
END
IF~~THEN REPLY @128 /*"I'd like to go somewhere else, then." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @129 /*"I have some questions instead." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @130 /*"Then I don't want anything. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.clocktower
@132 /*The skipper opens his mouth as if to possibly explain why he cannot go there, but... there simply is no explanation. It is so close that he could literally toss a stone and hit it. */
=@133 /*"Sooo..." he begins. "Will you pay 100 coppers for that?" */
END
IF~!CheckStatGT(Protagonist,17,CHR) !PartyGoldLT(100)~THEN REPLY @135 /*"Sure, I'll pay 100 coppers. Let's go." */ DO~TakePartyGold(100) SetGlobal("G-skppsloc","GLOBAL",1)  TeleportParty("ARG-FF",[1808.3423],3) PlaySound("g-boat")~ EXIT
IF~CheckStatGT(Protagonist,17,CHR) !PartyGoldLT(100)~THEN REPLY @136 /*"I'll pay you 50 coppers. Let's go." */ DO~TakePartyGold(50) SetGlobal("G-skppsloc","GLOBAL",1) TeleportParty("ARG-FF",[1808.3423],3) PlaySound("g-boat")~ EXIT
IF~!PartyGoldLT(100)~THEN REPLY @137 /*"Actually, I'm not ready to go yet. I want to ask some questions." */ DO~~ + g-bbD209.q
IF~!PartyGoldLT(100)~THEN REPLY @138 /*"I'm not ready to go yet. Goodbye." */ DO~~ EXIT
IF~PartyGoldLT(100)~THEN REPLY @139 /*"I don't have that kind of money, but I do have some questions." */ DO~~ + g-bbD209.q
IF~PartyGoldLT(100)~THEN REPLY @140 /*"I don't have that kind of money. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.skppr
@142 /*"Well, you just said it yourself." The man looks befuddled. */
END
IF~~THEN REPLY @144 /*"Wait, did I? 'Skppr'." */ DO~~ + g-bbD209.skppr2
IF~~THEN REPLY @145 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @146 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @147 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.skppr2
@149 /*"You just did it again. How is it confusing to you?" */
END
IF~~THEN REPLY @151 /*"Because you shouldn't be able to say it. 'Skppr'." */ DO~~ + g-bbD209.skppr3
IF~~THEN REPLY @152 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @153 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @154 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.skppr3
@156 /*The man laughs and coughs for a bit, then laughs again. "Clearly you *are* able to say it. I can hear you saying it." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @157 /*"Chief, I have a bad feeling about this." */
END
IF~CheckStatGT(Protagonist,18,WIS)~THEN REPLY @159 /*"Impossible... 'SKPPR'." */ DO~FadeToColor([0.0],1)~ + g-bbD209.skppr4
IF~~THEN REPLY @160 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @161 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @162 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.skppr4
@164 /*The multiverse slows down. The smug, mustachioed face of the skipper known as Skppr warps into a morbid parody, a tormented grimace. The sound of the awful water under your feet ceases and the distant noise of the bustling city at the center of the multiverse comes to a stop. You questioned reality one time too many and now it is coming to settle the score.  [ST_0508] */
=@165 /*Then, time starts again, slowly. You can see the reality-shattering man who is wasting his precious life away on a garbage heap. He opens his mouth to say the name of his business and, presumably, his own name, yet again. */
=@166 /*He begins by saying *SK*, which makes perfect sense. Then you watch as what would take a fraction of a second under any other circumstances gets stretched out to feel like an hour. An *I* is slowly forming in a supposed subspace of possibility, but before it can become flesh, it is ripped out of reality... by something. A reality-warping, vowel-eating aberration that does not exist visually, yet you can sense its presence. The skipper then utters his *P*. Twice, which really is just an illusion in its own right. Then, it is time for an *E*, but here it is again. A *snatch*. There was going to be a vowel here, but it never arrived at its destination. As the *R* replaces it, the name reaches its impossible conclusion. */
=@167 /*The name stops and the vowel-eating monster is gone. The multiverse is back to how it was. */
END
IF~~THEN REPLY @169 /*"What was *THAT*?" */ DO~SetGlobal("G-vowels","GLOBAL",1) FadeFromColor([20.0],0) AddexperienceParty(50000)~ + g-bbD209.skppr5
CHAIN IF~~THEN g-bbD209 g-bbD209.skppr5
@171 /*"What?" Skppr seems oblivious to the revelation that befell you. */
END
IF~~THEN REPLY @173 /*"Never mind... I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @174 /*"Never mind... I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @175 /*"Never mind... I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.popular
@177 /*"No." */
END
IF~~THEN REPLY @179 /*"Why are you providing it, then?" */ DO~~ + g-bbD209.popular2
IF~~THEN REPLY @180 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @181 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @182 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.popular2
@184 /*The man shrugs. Clearly, he will not talk about it. */
END
IF~~THEN REPLY @186 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @187 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @188 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.kuo
@190 /*"No. I am a man of the sea, we get each other." The man gives you a hapless smile. */
END
IF~Global("G-kuotoagone","GLOBAL",0) ~THEN REPLY @192 /*"You are aware that they are killing people?" */ DO~~ + g-bbD209.kuo1
IF~Global("G-kuotoagone","GLOBAL",1) ~THEN REPLY @193 /*"You are aware that they were killing people?" */ DO~~ + g-bbD209.kuo1
IF~~THEN REPLY @194 /*"I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @195 /*"I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @196 /*"I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.kuo1
@198 /*"Killing isn't my business. Boating is my business..." He points to his boat, docked at the pier behind him. "And business is good." */
END
IF~~THEN REPLY @200 /*"Right, I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @201 /*"Right, I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @202 /*"Right, I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.trash
@204 /*"I like it here. It's... quiet." Skppr looks around and puts on a huge smile. */
END
IF~~THEN REPLY @206 /*"Right, I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @207 /*"Right, I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @208 /*"Right, I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.smuggler
@210 /*"Hey, shut it! How can you accuse an honest blood of such a thing?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @211 /*"It's bloomin' obvious, mate." */
END
IF~~THEN REPLY @213 /*"You're sitting here, hidden away, with a perfect excuse for a business and a boat ready to go, and you're aware of the Harmonium inspections. Everything points to it." */ DO~~ + g-bbD209.smuggler2
IF~~THEN REPLY @214 /*"Right, I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @215 /*"Right, I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @216 /*"Right, I should go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.smuggler2
@218 /*"Listen here. I'm *NOT* admitting guilt here, and you can't walk around the Cage slandering me like this. It could ruin my reputation. You must never speak of this to anyone." */
END
IF~~THEN REPLY @220 /*"Pay me." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD209.smuggler3
IF~~THEN REPLY @221 /*"Sure, I have some other questions." */ DO~~ + g-bbD209.q
IF~~THEN REPLY @222 /*"Sure, I would like to use your services." */ DO~~ + g-bbD209.serv
IF~~THEN REPLY @223 /*"Sure, I should go, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.smuggler3
@225 /*The man reaches into his pocket in complete silence, glances at the nearby Collectors and then pulls out a satchel. He deposits it neatly into your hand. */
END
IF~~THEN REPLY @227 /*"Right, I have some other questions." */ DO~GiveGoldForce(500) ~ + g-bbD209.q
IF~~THEN REPLY @228 /*"Right, I would like to use your services." */ DO~GiveGoldForce(500) ~ + g-bbD209.serv
IF~~THEN REPLY @229 /*"Right, I should go. Goodbye." */ DO~GiveGoldForce(500) ~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.restX
@231 /*The man looks at you suspiciously. The whole 'take me to a remote location and watch me while I sleep' scenario is definitely raising red flags. */
=@232 /*"Right, cutter. Not to offend you or anything..."  */
END
IF~!PartyGoldLT(50)~THEN REPLY @234 /*"I will pay another 50 coppers." */ DO~TakePartyGold(50)~ + g-bbD209.rest2X
IF~~THEN REPLY @235 /*"Never mind. Let's just travel back." */ DO~SetGlobal("G-skppsloc","GLOBAL",0) TeleportParty("ARG-FF",[3516.1627],7) PlaySound("g-boat")~ EXIT
IF~~THEN REPLY @236 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD209 g-bbD209.rest2X
@238 /*The man sighs. "Alright. But if you asked *me* to go to sleep and you wanted to watch me, it would cost you way more." */
END
IF~~THEN REPLY @240 /*Take a break. */ DO~FadeToColor([20.0],0) DayNight(MIDNIGHT) ~ + g-bbD209.dusk
CHAIN IF~~THEN g-bbD209 g-bbD209.dusk
@242 /*Skppr shakes you awake, quite violently. "Hey, blood, get up! I don't know what time it is, but it's late." */
END
IF~~THEN REPLY @244 /*"Thanks." */ DO~~ EXIT