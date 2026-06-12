BEGIN g-bbDMRT
CHAIN IF~Global("g-fakemrtdialogue","GLOBAL",0)~THEN g-bbDMRT g-bbDMRT.q
@0 /*"What's the word, chief?" [MRT130] */
END
IF~~THEN REPLY @2 /*"I just want to know how you're feeling." */ DO~~ + g-bbDMRT.q1
IF~~THEN REPLY @3 /*"What do you think we should do now?" */ DO~~ + g-bbDMRT.q2
IF~~THEN REPLY @4 /*"Wait for me here. I'll come back for you." */ DO~~ + g-bbDMRT.dropoff
IF~~THEN REPLY @5 /*"Nothing. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.dropoff
@7 /*"Chief... I'm not staying here in the Hells. Not this time. Let's get moving." */
EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.q1
@10 /*Morte flies in a circle around you. */
==g-bbdmrt IF~AreaCheck("arg-10")~THEN @11 /*"I like it here. Some of these skulls gave me the eye." */
END
IF~~THEN REPLY @13 /*"I wish to speak about other matters." */ DO~~ + g-bbDMRT.q
IF~~THEN REPLY @14 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.q2
@16 /*"What do *you* have to do, chief?" */
==g-bbdmrt IF~Global("G-BBmain","GLOBAL",21)~THEN @17 /*"It would probably be best to find that berk arranged by Tergush'tekhn. He's got to be around." */
==g-bbdmrt IF~Global("G-BBmain","GLOBAL",22)~THEN @18 /*"It would probably be best to find that berk arranged by Tergush'tekhn. He's got to be around. And be quick about it, our location is compromised." */
END
IF~~THEN REPLY @20 /*"I wish to speak about other matters." */ DO~~ + g-bbDMRT.q
IF~~THEN REPLY @21 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakemrtdialogue","GLOBAL",1)~THEN g-bbDMRT g-bbDMRT.d001start
@24 /*When you exit the bar, Morte flies up to you. */
=@25 /*"Hold up, chief, I got something to say to ya." [MRT311B] */
END
IF~~THEN REPLY @27 /*"Yes, Morte?" */ DO~~ + g-bbDMRT.A1
IF~~THEN REPLY @28 /*"What now?" */ DO~~ + g-bbDMRT.A1
IF~~THEN REPLY @29 /*"Not now, Morte." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.A1
@31 /*"Let's talk now that the fiends can't hear us," he starts calmly, then suddenly bursts into a shout: "Chief! BAATOR?! AGAIN?!" */
END
IF~~THEN REPLY @33 /*"Trust me, I know what I'm doing." */ DO~~ + g-bbDMRT.B1
IF~~THEN REPLY @34 /*"What's the problem?" */ DO~~ + g-bbDMRT.B1
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.B1
@36 /*"Maybe this isn't Avernus, praise the powers, and I hope we stay away from it... But still. Why? Why?! I have so many questions, chief." */
END
IF~~THEN REPLY @38 /*"Calm down. What do you want to ask me?" */ DO~~ + g-bbDMRT.C1
IF~~THEN REPLY @39 /*"You keep repeating the same question over and over again. Aren't you exaggerating a little bit?" */ DO~~ + g-bbDMRT.C2
IF~~THEN REPLY @40 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.C1
@42 /*"Chief. Do you trust those devils? Answer me sincerely." */
END
IF~~THEN REPLY @44 /*"Yes." */ DO~~ + g-bbDMRT.D1
IF~~THEN REPLY @45 /*"No." */ DO~~ + g-bbDMRT.D2
IF~~THEN REPLY @46 /*"I don't know, Morte. I really don't know." */ DO~~ + g-bbDMRT.D2
IF~~THEN REPLY @47 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.C2
@49 /*"Exaggerating? Those guys make their living by recruiting squaddies for a war against the demons. The War, actually. Chief. Do you trust those devils? Answer me sincerely." */
END
IF~~THEN REPLY @51 /*"Yes." */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDMRT.D1
IF~~THEN REPLY @52 /*"No." */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDMRT.D2
IF~~THEN REPLY @53 /*"I don't know, Morte. I really don't know." */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDMRT.D2
IF~~THEN REPLY @54 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0) SetGlobal("Know_Blood_War","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.D1
@56 /*"Pike me, we're so dead already..." */
END
IF~~THEN REPLY @58 /*"Morte, we *are* dead. In a way." */ DO~~ + g-bbDMRT.D1A
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.D1A
@60 /*"I think you're already familiar with states worse than death. The Blood War and being a war prisoner of the baatezu or tanar'ri is one of them. Being frozen in the ice of Cania for hundreds or thousands of years is worse. Being tortured and abused by devils is worse. Not to mention the prospect of returning to the Pillar of Skulls..." */
END
IF~~THEN REPLY @62 /*"What are you saying, Morte?" */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDMRT.E1
IF~~THEN REPLY @63 /*"I won't allow it, Morte." */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDMRT.E1
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.D2
@65 /*"At least you have the common sense not to trust them. But if you don't trust them, you must think you can outsmart them. Let me take a look at you..." The skull flies up to your face and closes one eye, then carefully examines you. */
END
IF~CheckStatGT(Protagonist,18,WIS)~THEN REPLY @67 /*"Morte, what are you..." */ DO~~ + g-bbDMRT.F1
IF~CheckStatLT(Protagonist,19,WIS)~THEN REPLY @68 /*"Morte, what are you..." */ DO~~ + g-bbDMRT.F2
IF~~THEN REPLY @69 /*Shove Morte away. "We don't have time for this now. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.E1
@71 /*"I'm scared as Hells, chief. You've been to Avernus. But that's only the first layer. Cania is the eighth. The second to last. This isn't about chasing away cranium rats, chief. That's where the gelugons live, and maybe something worse." */
END
IF~~THEN REPLY @73 /*"Gelugons?" */ DO~~ + g-bbDMRT.G1
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F1
@75 /*"You seem smart enough. I'm even more surprised you agreed, but... Maybe we stand a chance after all." */
END
IF~~THEN REPLY @77 /*"See? So, can we go now?" */ DO~~ + g-bbDMRT.F5
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F2
@79 /*"I have some... concerns... that you don't look like someone who would outwit a fiend. But can you at least withstand such harsh conditions?" He looks at you again. */
END
IF~CheckStatGT(Protagonist,18,CON)~THEN REPLY @81 /*"Morte..." */ DO~~ + g-bbDMRT.F3
IF~CheckStatLT(Protagonist,19,CON)~THEN REPLY @82 /*"Morte..." */ DO~~ + g-bbDMRT.F4
IF~~THEN REPLY @83 /*Shove Morte away. "We don't have time for this now. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F3
@85 /*"Well, you look sturdy enough. Maybe we stand a chance after all." */
END
IF~~THEN REPLY @87 /*"See? So, can we go now?" */ DO~~ + g-bbDMRT.F5
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F4
@89 /*"The first Canian wind that comes along will knock you down. I can't believe it." */
END
IF~~THEN REPLY @91 /*"Is it really so bad?" */ DO~~ + g-bbDMRT.F5
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F5
@93 /*"Don't get me wrong. You may be better built than the average Sigilian, and you've visited a few planes, though only occasionally... and only for short periods of time... and the conditions there weren't even remotely as harsh." */
END
IF~~THEN REPLY @95 /*"I survived Carceri." */ DO~~ + g-bbDMRT.F6
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.F6
@97 /*"Just its surface, and you were in a city pushed from the Outlands. That wasn't the wilderness of Carceri. But that's too soupwards. Let's get back to the main issue: Cania, Baator." */
END
IF~~THEN REPLY @99 /*"I understand your concern, but..." */ DO~~ + g-bbDMRT.E1
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.G1
@101 /*"Ice devils with insect bodies. They tower over most glabrezu and weigh over six, seven hundredweights. Could you defeat something as big and heavy if an ice storm separated us and you didn't have my teeth at hand?" */
END
IF~~THEN REPLY @103 /*"Of course." */ DO~~ + g-bbDMRT.G2
IF~~THEN REPLY @104 /*"Yes." */ DO~~ + g-bbDMRT.G2
IF~~THEN REPLY @105 /*"Not really." */ DO~~ + g-bbDMRT.G3
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.G2
@107 /*"Now, imagine ten thousand devils like that. And that they all know where to find you. Because after you signed that contract, someone higher up *will* find out about it. It's only a matter of time." */
END
IF~~THEN REPLY @109 /*"Do I understand correctly that the gelugons are ranked higher than the abishai with whom I made the deal?" */ DO~~ + g-bbDMRT.G4
IF~~THEN REPLY @110 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.G3
@112 /*"I'm going to pray to the Lady of Pain, I swear," he sighs. "Imagine ten thousand devils like that. And that they all know where to find you. Because after you signed that contract, someone higher up *will* find out about it. It's only a matter of time." */
END
IF~~THEN REPLY @114 /*"Do I understand correctly that gelugons are ranked higher than the abishai with whom I made the deal?" */ DO~~ + g-bbDMRT.G4
IF~~THEN REPLY @115 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.G4
@117 /*"Yes. I'm sure that, through some channels, their superiors will find out about this, and then their superiors, and then the superiors of those... Listen, the gelugons are among the highest-ranking devils. They *despise* those weaker than themselves. The contract gives you no protection against them. Take that into account. Perhaps you'll find a book with a chart of their hierarchy. And look at the difference in rank. Baatezu are not tanar'ri. You've signed into a cruel, brutal bureaucratic machine, only instead of the Guvners, your contract was written by monsters who want your soul, if you have one, and your body, which would be very valuable to them in the Blood War." */
END
IF~~THEN REPLY @119 /*"Gelugons, ice storms, bureaucracy. I've got it. Is there anything else I should know?" */ DO~~ + g-bbDMRT.G5
IF~~THEN REPLY @120 /*"We don't have time for this now, Morte. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.G5
@122 /*"Don't forget that those strange shadows Ravel said you attract are still chasing you... I'm afraid they will able to find you even in Cania. There won't be any inns or abandoned buildings where you can safely rest. You need to prepare really, *really* well." */
END
IF~~THEN REPLY @124 /*"What do you advise?" */ DO~~ + g-bbDMRT.H1
IF~~THEN REPLY @125 /*"I know. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.H1
@127 /*"Well, good that you've asked an expert. Let me think. Factioneers often have some nice treasuries in their thought guilds. UnderSigil under the Clerk's Ward can be a good test of skill, and you might even find some loot. That's one of the most dangerous places around. But I think what you need the most is a large supply of medicine from a trusted healer!" */
END
IF~~THEN REPLY @129 /*"I prefer to focus on the task at hand. But on the way, who knows?" */ DO~~ + g-bbDMRT.H6
IF~GlobalGT("Join_Godsmen","GLOBAL",0)~THEN REPLY @130 /*"Maybe Keldor in the Great Foundry will sell me something useful." */ DO~~ + g-bbDMRT.H2
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @131 /*"Maybe Splinter in the Civic Festhall will sell me something useful." */ DO~~ + g-bbDMRT.H2
IF~GlobalGT("Join_Chaosmen","GLOBAL",0)~THEN REPLY @132 /*"But *I* am the factol of the Chaosmen..." */ DO~~ + g-bbDMRT.H3
IF~GlobalGT("Join_Dustmen","GLOBAL",0)~THEN REPLY @133 /*"Maybe Emoric in the Dustmen's tavern will sell me something useful." */ DO~~ + g-bbDMRT.H2
IF~GlobalGT("Join_Anarchists","GLOBAL",0)~THEN REPLY @134 /*"Maybe I could get something undercover and at the same time deplete the factions' resources. Combining business with pleasure." */ DO~~ + g-bbDMRT.H3
IF~~THEN REPLY @135 /*"UnderSigil? If one of the most dangerous places in the area is merely training for Cania, you're probably not blowing hot air about the danger." */ DO~~ + g-bbDMRT.H4
IF~~THEN REPLY @136 /*"So to a healer, off we go!" */ DO~~ + g-bbDMRT.H2
IF~~THEN REPLY @137 /*"I think I've got another idea... You'll see." */ DO~~ + g-bbDMRT.H6
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.H2
@139 /*"Good plan, chief! Off we go!" */
END
IF~~THEN REPLY @141 /*Leave. */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.H3
@143 /*"In that case, we're doomed already." */
END
IF~~THEN REPLY @145 /*"Let's go then, to our doom." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.H4
@147 /*"Chief, do I ever blow hot air? I don't even have lungs." */
END
IF~~THEN REPLY @149 /*"You're joking which means everything's fine again. Let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.H6
@151 /*"Sure. I'm just suggesting. We can go now." */
END
IF~~THEN REPLY @153 /*"Yeah, let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~Global("g-fakemrtdialogue","GLOBAL",2)~THEN g-bbDMRT g-bbDMRT.d002start
@155 /*As soon as you finish asking the captain about the rope, Morte flies right at your face. */
=@156 /*"Chief, do *not* tell me we have to travel back and forth on this boat and listen to that modron's chirping *twice* as much as necessary." */
=@157 /*"I can grab it, I'll just be a minute. I don't need to avoid any rocks. I will come back sooner than you can say 'PORTAL. KEY. DETECTED. WARNING!' seven times!" */
END
IF~~THEN REPLY @159 /*"Sure, Morte. If you want to be useful, that would be great." */ DO~~ + g-bbDMRT.d002yes
IF~~THEN REPLY @160 /*"No. You will surely be stolen by another wizard. We will travel together." */ DO~~ + g-bbDMRT.d002no
IF~~THEN REPLY @161 /*"Not now, Morte." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.d002no
@163 /*"No, chief. Please." */
END
IF~~THEN REPLY @165 /*"All right, go then." */ DO~~ + g-bbDMRT.d002yes
IF~~THEN REPLY @166 /*"I said what I said. Time to set sail." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.d002yes
@168 /*Morte flies straight up and rotates in celebration. "Yes! Chief, I'll be right back." Before flying off, he stares intently at the monodrone. Something tells you that if Morte had a tongue, he'd be sticking it out right now. */
==g-bbd237 @169 /*"Happy detected." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @170 /*Without further ado, Morte darts off across the water. You could swear that a large shadow tracks the skull under the water for a moment, but soon it disappears. It must have been some trick of the light. The skull also disappears in the fog soon after. */
END
IF~~THEN REPLY @172 /*Continue. */ DO~FadeToColor([20.0],0) AdvanceTime(60) ~ + g-bbDMRT.d002back
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.d002back
@174 /*After some time, you see movement in the mist. The shape that emerges from the shroud of moisture is unmistakable. It is Morte, though he looks different than usual. He is grasping a large coil of rope in his teeth. He slows down gradually and finally comes to a stop in the air before you. */
=@175 /*"Hmmpf wrrr hhrp." */
=@176 /*He spits the rope straight into your hands. */
END
IF~~THEN REPLY @178 /*"Nice work, Morte." */ DO~~ + g-bbDMRT.d002back2
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.d002back2
@180 /*"We hit the jackpot, chief. You won't believe it. I got us a rope for binding snakes, just like the one that cony-catcher over here was trying to sell you. So glad you didn't let him rip you off. The string merchant was literally in tears when I took if off him." */
END
IF~~THEN REPLY @182 /*"Great, that will definitely work. Let's go, then." */ DO~SetGlobal("g-slimequestline","GLOBAL",6) GiveItemCreate("g-bbi130",Protagonist,1,1,0) SetGlobal("g-fakemrtdialogue","GLOBAL",0) DestroySelf() ~ SOLVED_JOURNAL @20300 EXIT
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @183 /*"Wait a minute, how did you pay for it? Do you have any copper on you?" */ DO~SetGlobal("g-slimequestline","GLOBAL",6) GiveItemCreate("g-bbi130",Protagonist,1,1,0) SetGlobal("g-stolerope","GLOBAL",1)~ SOLVED_JOURNAL @20300 + g-bbDMRT.d002back3
CHAIN IF~~THEN g-bbDMRT g-bbDMRT.d002back3
@185 /*"Well, he wasn't crying for no reason. But don't worry, chief. He won't run out of rope. He's got miles of that stuff." */
END
IF~~THEN REPLY @187 /*"We'll stop by later and pay... Now let's go." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT
IF~~THEN REPLY @188 /*"All right, let's go then." */ DO~DestroySelf() SetGlobal("g-fakemrtdialogue","GLOBAL",0)~ EXIT