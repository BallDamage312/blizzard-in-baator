BEGIN g-bbD088
CHAIN IF~!Global("G-STeffemSick","GLOBAL",2) Dead("g-bb087")~THEN g-bbD088 g-bbD088.override3
@0 /*"You monster! Get away from me." */
EXIT
CHAIN IF~!Global("G-STeffemSick","GLOBAL",2) GlobalGT("G-alviroquest","GLOBAL",5)~THEN g-bbD088 g-bbD088.override2
@3 /*"What did you do? The deva just left? Who is going to take care of my insides now?" */
EXIT
CHAIN IF~!Global("G-STeffemSick","GLOBAL",2) NumTimesTalkedToGT(0) Global("G-WasRude","GLOBAL",1) ~THEN g-bbD088 g-bbD088.override
@11 /*The old man ignores you. He is still bobbing up and down. */
EXIT
CHAIN IF~!Global("G-STeffemSick","GLOBAL",2) NumTimesTalkedTo(0)~THEN g-bbD088 g-bbD088.start
@14 /*You see an elderly man, waiting patiently in line to meet the celestial. His posture betrays his weakness and he is holding his left side. His face is scarred with a grimace of pain. He is bobbing up and down slightly. He sees you approaching. "You ain't cutting in line, leech!" */
END
IF~Global("G-KnowAlviro","GLOBAL",0)~THEN REPLY @16 /*"What line?" */ DO~SetGlobal("G-KnowAlviro","GLOBAL",1)~ + g-bbD088.line
IF~Global("G-KnowAlviro","GLOBAL",1)~THEN REPLY @17 /*"I didn't come here for healing." */ DO~~ + g-bbD088.tno
IF~Global("G-WasRude","GLOBAL",0)~THEN REPLY @18 /*Get in the line. "Try and stop me." */ DO~SetGlobal("G-WasRude","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD088.rude
IF~~THEN REPLY @19 /*"I have some questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @20 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~!Global("G-STeffemSick","GLOBAL",2) NumTimesTalkedToGT(0)~THEN g-bbD088 g-bbD088.start2
@22 /*You see an elderly man, still waiting patiently in line to meet the celestial. He stops his rhythmic bobbing and sighs. "You still want to bother me?" */
END
IF~~THEN REPLY @24 /*"I have some questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @25 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.line
@27 /*The man looks annoyed and gestures nervously in the general direction of the other petitioners waiting their turn. "The healer-angel cutter." */
END
IF~Global("G-KnowAlviro","GLOBAL",0)~THEN REPLY @29 /*"Tell me about the angel." */ DO~~ + g-bbD088.deva
IF~~THEN REPLY @30 /*"I have some questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @31 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.rude
@33 /*The man's grimace of pain is replaced by shock as you step right in front of him. He looks as if he is about to say something but he keeps his mouth shut and reverts to his default miserable state. */
EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.deva
@36 /*"This kind, beautiful, winged man comes here to the Ditch port from time to time and heals those in need. I was lucky to finally meet him. Now I wait for my miracle." */
END
IF~~THEN REPLY @38 /*"I see... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @39 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.tno
@41 /*The man looks you up and down. "Really? You look like you could use a lot of healing, stranger." */
END
IF~~THEN REPLY @43 /*"I have some questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @44 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.q
@46 /*The man's grimace of pain grows ever more prominent. He sighs. "Whaddya want?" */
END
IF~~THEN REPLY @48 /*"So what's this about a deva?" */ DO~~ + g-bbD088.deva
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @49 /*"Do you know anything about people disappearing around here?" */ DO~~ + g-bbD088.disap
IF~~THEN REPLY @50 /*"Who are you?" */ DO~SetGlobal("G-KnowSteffen","GLOBAL",1)~ + g-bbD088.who
IF~Global("G-STeffemSick","GLOBAL",0)~THEN REPLY @51 /*"What's wrong with you?" */ DO~SetGlobal("G-STeffemSick","GLOBAL",1)~ + g-bbD088.sick
IF~Global("G-STeffemSick","GLOBAL",1) InParty("grace") !StateCheck("grace",CD_STATE_NOTVALID) NearbyDialog("Dgrace")~THEN REPLY @52 /*Turn to Fall-from-Grace. "Grace, can you help this man with his problem?" */ DO~SetGlobal("G-STeffemSick","GLOBAL",2) StartCutScene("g-heal") ~ EXIT
IF~~THEN REPLY @53 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.disap
@55 /*"No. I do not live here." */
END
IF~CheckStatGT(Protagonist,15,CHR) Global("G-AskTorch","GLOBAL",0)~THEN REPLY @57 /*"Oh. Where do you live, then?" */ DO~SetGlobal("G-AskTorch","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD088.liveok
IF~!CheckStatGT(Protagonist,15,CHR) Global("G-AskTorch","GLOBAL",0)~THEN REPLY @58 /*"Oh. Where do you live, then?" */ DO~SetGlobal("G-AskTorch","GLOBAL",1)~ + g-bbD088.livefail
IF~~THEN REPLY @59 /*"I see... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @60 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.liveok
@62 /*The man laughs through the pain. "Torch. I am here on business, selling sulfur." */
END
IF~~THEN REPLY @64 /*"What is... Torch?" */ DO~~ + g-bbD088.torch
IF~~THEN REPLY @65 /*"I see... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @66 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.livefail
@68 /*The man stiffens. "Far away." */
END
IF~~THEN REPLY @70 /*"I see... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @71 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.torch
@73 /*"Torch is a large, beautiful gate-town that never sleeps, built on the slopes of many volcanic spires, and towering over swampy slums. It is a sight to behold." The elderly man manages to squeeze out a wicked smile through his expression of anguish. */
END
IF~~THEN REPLY @75 /*"Sounds like it... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @76 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.who
@78 /*The man looks at you suspiciously. "Call me Sulfur Stefan if you like, I come here to sell sulfur to alchemists." */
END
IF~~THEN REPLY @80 /*"I... have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @81 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.sick
@83 /*The man straightens a little and releases his left side from the grip. "Nothing, berk. Well... soon to be nothing. The water where I come from is... not so drinkable." */
END
IF~Global("G-STeffemSick","GLOBAL",1) InParty("grace") !StateCheck("grace",CD_STATE_NOTVALID) NearbyDialog("Dgrace")~THEN REPLY @86 /*Turn to Fall-from-Grace. "Grace, can you help this man with his problem?" */ DO~SetGlobal("G-STeffemSick","GLOBAL",2) StartCutScene("g-heal") ~ EXIT
IF~CheckStatGT(Protagonist,15,CHR) Global("G-AskTorch","GLOBAL",0)~THEN REPLY @87 /*"Oh. Where do you live?" */ DO~SetGlobal("G-AskTorch","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD088.liveok
IF~!CheckStatGT(Protagonist,15,CHR) Global("G-AskTorch","GLOBAL",0)~THEN REPLY @88 /*"Oh. Where do you live?" */ DO~SetGlobal("G-AskTorch","GLOBAL",1)~ + g-bbD088.livefail
IF~~THEN REPLY @89 /*"I see... I have other questions." */ DO~~ + g-bbD088.q
IF~~THEN REPLY @90 /*"I need to go now." */ DO~~ EXIT
CHAIN IF~Global("G-STeffemSick","GLOBAL",2)~THEN g-bbD088 g-bbD088.sickheal
@92 /*The man's posture immediately changes, as if a great pain was lifted. "It's... gone. All gone! Thanks, lady. I appreciate it. I really do!" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @93 /*"It would be wise for you to move from where you live. The water there is killing you." */
==g-bbd088 @94 /*"I think I will go home for now, but I will think about it." */
END
IF~~THEN REPLY @96 /*"You should probably listen to her. Go on and enjoy the day without pain." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",2) IncrementGlobal("G-alviroprequest","GLOBAL",2) AddexperienceParty(10000) ActionOverride("g-bb088",EscapeArea()) SetGlobal("G-STeffemSick","GLOBAL",3)~ EXIT
IF~~THEN REPLY @97 /*"Now would be the time to pay up for our service." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-STeffemSick","GLOBAL",3)~ + g-bbD088.sickheal2
CHAIN IF~~THEN g-bbD088 g-bbD088.sickheal2
@99 /*"What?" The man immediately changes his tone. "I was waiting in line for a *free* service and did not ask you for help. You just *did* it. It's not right to ask for payment. In fact, what you did could be considered assault. Casting spells on me without my consent." */
END
IF~~THEN REPLY @101 /*"You're right. Go on and enjoy the day without pain." */ DO~~ + g-bbD088.nono
IF~~THEN REPLY @102 /*"We healed you. You should have expected that it was a service. It's not my fault you aren't too... quick-witted." */ DO~~ + g-bbD088.nono
CHAIN IF~~THEN g-bbD088 g-bbD088.nono
@104 /*The man seems to be ignoring everything you say. "In fact, I *do* feel violated by this. How do I know you did not *curse* me? Who gave you the right to cast spells on me? I don't even know who you are! I demand to know your details." */
END
IF~TimeOfDay(DAY)~THEN REPLY @106 /*Lie: "I am Adahn." */ DO~SetGlobal("G-stefVARa","GLOBAL",1) IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD088.nono2
IF~TimeOfDay(DAY)~THEN REPLY @107 /*"I... don't know my name." */ DO~SetGlobal("G-stefVARa","GLOBAL",2)~ + g-bbD088.nono2
IF~TimeOfDay(DAY)~THEN REPLY @108 /*"I am *not* telling you anything, old man." */ DO~SetGlobal("G-stefVARa","GLOBAL",3)~ + g-bbD088.nono2
IF~!TimeOfDay(DAY)~THEN REPLY @109 /*Lie: "I... am Adahn." */ DO~SetGlobal("G-stefVARa","GLOBAL",4) IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD088.nono2
IF~!TimeOfDay(DAY)~THEN REPLY @110 /*"I... don't know my name." */ DO~SetGlobal("G-stefVARa","GLOBAL",5)~ + g-bbD088.nono2
IF~!TimeOfDay(DAY)~THEN REPLY @111 /*"I am *not* telling you anything, old man." */ DO~SetGlobal("G-stefVARa","GLOBAL",6)~ + g-bbD088.nono2
CHAIN IF~~THEN g-bbD088 g-bbD088.nono2
@113 /*The man breathes in deep. */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",1)~THEN @114 /*"Right, Adahn, I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. IN BROAD DAYLIGHT! With witnesses! You are in a world of trouble. Unless... you compensate me, right now." */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",2)~THEN @115 /*"Right, very convenient, isn't it? Luckily, you stand out like a sore thumb, so you will be easily identified. I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. IN BROAD DAYLIGHT! With witnesses! You are in a world of trouble. Unless... you compensate me, right now." */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",3)~THEN @116 /*"Luckily, you stand out like a sore thumb, so you will be easily identified. I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. IN BROAD DAYLIGHT! With witnesses! You are in a world of trouble. Unless... you compensate me, right now." */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",4)~THEN @117 /*"Right, Adahn, I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. With witnesses! You are in a world of trouble. Unless... you compensate me, right now." */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",5)~THEN @118 /*"Right, very convenient, isn't it? Luckily, you stand out like a sore thumb, so you will be easily identified. I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. With witnesses! You are in a world of trouble. Unless... you compensate me, right now." */
==g-bbd088 IF~Global("G-stefVARa","GLOBAL",6)~THEN @119 /*"Luckily, you stand out like a sore thumb, so you will be easily identified. I am willing to go to the Harmonium and report you for assault using magic through a demon apprentice. With witnesses! You are in a world of trouble. Unless... you compensate me for the damage, right now." */
END
IF~Global("G-stefVARa","GLOBAL",1)~THEN REPLY @121 /*"Fine. I will pay you. How much do you want?" */ DO~~ + g-bbD088.pay
IF~Global("G-stefowe","GLOBAL",0)~THEN REPLY @122 /*"You are insane, I will not pay you. You owe *ME*." */ DO~SetGlobal("G-stefowe","GLOBAL",1)~ + g-bbD088.owe
IF~CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @123 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @124 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.owe
IF~~THEN REPLY @125 /*"Fine. Go and report me." */ DO~SetGlobal("G-wanted","GLOBAL",1) ActionOverride("g-bb088",EscapeArea()) ~ EXIT
IF~CheckStatGT(Protagonist,18,STR)~THEN REPLY @126 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,18,STR) !CheckStatLT(Protagonist,14,STR)~THEN REPLY @127 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.intimF
IF~CheckStatLT(Protagonist,14,STR)~THEN REPLY @128 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.intimMF
CHAIN IF~~THEN g-bbD088 g-bbD088.pay
@130 /*"Three hundred copper coins, please." */
END
IF~!PartyGoldLT(300)~THEN REPLY @132 /*"Fine, take it and get out of here." */ DO~TakePartyGold(500) ActionOverride("g-bb088",EscapeArea())  IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1)~ EXIT
IF~PartyGoldLT(300)~THEN REPLY @133 /*"I... actually don't have that much money." */ DO~~ + g-bbD088.pay2
IF~Global("G-stefowe","GLOBAL",0)~THEN REPLY @134 /*"You are insane, I will not pay you. You owe *ME*." */ DO~SetGlobal("G-stefowe","GLOBAL",1)~ + g-bbD088.owe
IF~CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @135 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @136 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.owe
IF~~THEN REPLY @137 /*"You know what... fine. Go and report me." */ DO~SetGlobal("G-wanted","GLOBAL",1) ActionOverride("g-bb088",EscapeArea()) IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1)~ EXIT
IF~CheckStatGT(Protagonist,18,STR)~THEN REPLY @138 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,18,STR) !CheckStatLT(Protagonist,14,STR)~THEN REPLY @139 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.intimF
IF~CheckStatLT(Protagonist,14,STR)~THEN REPLY @140 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.intimMF
CHAIN IF~~THEN g-bbD088 g-bbD088.pay2
@142 /*"Ha! When it's time to pay up, everyone's suddenly poor as an umbral. You think you can weasel out of settling your bill and escape justice? Consider yourself reported!" */
END
IF~~THEN REPLY @144 /*"Fine. Go and report me." */ DO~SetGlobal("G-wanted","GLOBAL",1) IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) ActionOverride("g-bb088",EscapeArea()) ~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.owe
@146 /*"You are going down, scarred man. I am leaving to report you." */
END
IF~~THEN REPLY @148 /*"You know what... fine. Go and report me." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) SetGlobal("G-wanted","GLOBAL",1) ActionOverride("g-bb088",EscapeArea()) ~ EXIT
IF~Global("G-stefVARa","GLOBAL",1)~THEN REPLY @149 /*"Fine. I will pay you. How much do you want?" */ DO~~ + g-bbD088.pay
IF~CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @150 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,17,CHR) Global("G-stefcharm","GLOBAL",0)~THEN REPLY @151 /*"You are insane, I will not pay you. Let's just walk our separate ways and forget about it." */ DO~SetGlobal("G-stefcharm","GLOBAL",1)~ + g-bbD088.owe
IF~CheckStatGT(Protagonist,18,STR)~THEN REPLY @152 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.forgetS
IF~!CheckStatGT(Protagonist,18,STR)~THEN REPLY @153 /*"I will break your neck. old man. In five... four... three..." */ DO~~ + g-bbD088.intimF
CHAIN IF~~THEN g-bbD088 g-bbD088.forgetS
@156 /*The man sighs. "You know what, it's your lucky day. My kidneys forgive you. I am heading back home, and you better not try anything like that ever again." */
END
IF~~THEN REPLY @158 /*"I will consider your advice." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) ActionOverride("g-bb088",EscapeArea())  IncrementGlobal("G-alviroprequest","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.intimF
@160 /*He instantly opens his mouth wide and a voice so loud comes out that it takes you aback. "HELP! HELP! I AM BEING KILLED HERE!" */
END
IF~~THEN REPLY @162 /*"Oh, damn it." */ DO~SetGlobal("G-wanted","GLOBAL",1) ActionOverride("g-bb088",Help()) ActionOverride("g-bb088",Enemy()) ActionOverride("g-bb088",EscapeArea()) SetGlobal("G-alviroban","GLOBAL",1) ~ EXIT
CHAIN IF~~THEN g-bbD088 g-bbD088.intimMF
@164 /*"You? Threaten me?" The disbelief on the man's face is palpable, and it borders amusement. "Fine. BRING IT!" */
END
IF~~THEN REPLY @166 /*"Oh, damn it." */ DO~~ EXIT