BEGIN g-bbD097
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD097 g-bbD097.start1
@0 /*You see a man with dried yellow skin and a fierce, albeit slightly bored, expression on his face. He doesn't seem to be paying much attention to you. One could think he was meditating or thinking deeply about something. There is nothing demonic about him. He doesn't give the impression of being a native of Hell. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @1 /*You've seen people like him before. So you *know* that before you stands one of the People - Githzerai. A chaotic race from the ever-changing realm of Limbo, where, according to Dak'kon, they shape cities with thought. However, what one of them is doing in Baator remains a mystery - it doesn't look like he's suffering any torment here. You observe the stoic calmness, appropriate for a Githzerai. */
END
IF~~THEN REPLY @3 /*"I have some questions." */ DO~~ + g-bbD097.questions
IF~GlobalGT("Know_Githzerai_Speak","GLOBAL",0)~THEN REPLY @4 /*(Greet him with a reference to the gith culture.) "Zerchai's kin bow to you." */ DO~~ + g-bbD097.githspeak
IF~GlobalLT("Law","GLOBAL",1)~THEN REPLY @5 /*(His stoic calmness irritates you. Attack him.) */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-3) IncrementGlobal("LAW","GLOBAL",-3) ~ EXIT
IF~~THEN REPLY @6 /*(Go away before you're noticed.) */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD097 g-bbD097.start2
@8 /*A man with dried yellow skin and a fierce, slightly bored expression turns to you. "Are there things you want to *know*?" */
END
IF~~THEN REPLY @10 /*"I have some questions." */ DO~~ + g-bbD097.questions
IF~GlobalGT("Know_Githzerai_Speak","GLOBAL",0)~THEN REPLY @11 /*(Greet him with a reference to the gith culture.) "Zerchai's kin bow to you." */ DO~~ + g-bbD097.githspeak
IF~GlobalLT("Law","GLOBAL",1)~THEN REPLY @12 /*(His stoic calmness irritates you. Attack him.) */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-3) IncrementGlobal("LAW","GLOBAL",-3) ~ EXIT
IF~~THEN REPLY @13 /*(Go away before you're noticed.) */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD097 g-bbD097.githspeak
@15 /*"And the traveler is pleased." The Gith bows to you back with full respect. You've made good impression. */
END
IF~~THEN REPLY @17 /*"There are things I wish to *know*." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @18 /*(Having greeted him, go away.) */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.questions
@20 /*"K'atzn'ii by the Gate. I will hear you, traveler. *Know* however that not everything is *known* to me, all the more on this alien land." */
END
IF~~THEN REPLY @22 /*"What are you doing down here?" */ DO~~ + g-bbD097.doing
IF~Global("Know_Gith","GLOBAL",1)~THEN REPLY @23 /*"You're a githzerai, right? What can you tell me about your people?" */ DO~~ + g-bbD097.githzerai
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @24 /*(Point at Dak'kon.) "I'm traveling with your fellow compatriot. Is there any chance you know each other?" */ DO~~ + g-bbD097.suldak
IF~~THEN REPLY @25 /*"What do you know about Cania? Should I be cautious?" */ DO~~ + g-bbD097.cania
IF~GlobalGT("Dakkon_Teach","GLOBAL",0)~THEN REPLY @26 /*"Do you *know* The Unbroken Circle of Zerthimon?" */ DO~~ + g-bbD097.zerthimon
IF~NumInPartyGT(1)~THEN REPLY @27 /*"What do you think of my party?" */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @28 /*"I'd like to talk about my journeys." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @29 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.doing
@31 /*"We are making a pilgrimage from Limbo to the City of Lost Souls in Cania. Sensei Dharvana visited our monastery, preaching the teachings of the Sleeping Man. This journey will test our bodies and strengthen our souls. It was foretold that our pilgrimage would last three more years even though we are almost at the destination." */
END
IF~~THEN REPLY @33 /*"Where's Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @34 /*"City of Lost Souls?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @35 /*"Who's Sensei Dharvana?" */ DO~~ + g-bbD097.dharvana
IF~~THEN REPLY @36 /*"Who's the Sleeping Man?" */ DO~~ + g-bbD097.sleepingman
IF~~THEN REPLY @37 /*"Foretold? What prophecy are you talking about?" */ DO~~ + g-bbD097.prophecy
IF~~THEN REPLY @38 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @39 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.limbo
@41 /*The man's eyes suddenly brighten at the mention of his home. "Limbo is an alienated, anarchic, unpredictable plane on the less lawful side of the Great Wheel. A place of pure chaos, where everything is in a state of constant motion and change - especially the landscape, which can move unexpectedly and change at will like a liquid. There are few places there stable enough for travelers. Limbo is home of slaads and their overlords Ygorl and Ssendam, and the Githzerai. Very few deities call Limbo home, as the plane has no permanent structure. We also have Xaositects from the city of Xaos, every now and then, who are unable to return because they lack the willpower." */
END
IF~~THEN REPLY @43 /*"City of Lost Souls?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @44 /*"Who's Sensei Dharvana?" */ DO~~ + g-bbD097.dharvana
IF~~THEN REPLY @45 /*"Who are slaadi?" */ DO~~ + g-bbD097.slaadi
IF~~THEN REPLY @46 /*"You've mentioned something about a prophecy." */ DO~~ + g-bbD097.prophecy
IF~~THEN REPLY @47 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @48 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.lostsouls
@50 /*"This is the city where the temple of the Sleeping Man is located. Outside of this haven of peace and enlightenment, sinners perform hard labor in the ice quarries for the overseer Gru'ul and other devils. There is the Hellfire Inn for free people, but this place is far from enlightened." */
END
IF~~THEN REPLY @52 /*"Where's Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @53 /*"Who's Sensei Dharvana?" */ DO~~ + g-bbD097.dharvana
IF~~THEN REPLY @54 /*"Who's the Sleeping Man?" */ DO~~ + g-bbD097.sleepingman
IF~~THEN REPLY @55 /*"You've mentioned something about a prophecy." */ DO~~ + g-bbD097.prophecy
IF~~THEN REPLY @56 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @57 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.dharvana
@59 /*"Sensei, that is: a teacher. Her name is Dharvana. Apart from being a priestess and a guardian of the Sleeping Man, she is a psionicist - she reads people's minds. She devoted her whole life to this." */
END
IF~~THEN REPLY @61 /*"Where's Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @62 /*"City of Lost Souls?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @63 /*"Who's the Sleeping Man?" */ DO~~ + g-bbD097.sleepingman
IF~~THEN REPLY @64 /*"You've mentioned something about a prophecy." */ DO~~ + g-bbD097.prophecy
IF~~THEN REPLY @65 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @66 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sleepingman
@68 /*"The Sleeping Man is a celestial planetar, a creature of good. And a planeswalker. Rarely one can meet a celestial descending willingfuly to the Nine Hells. Maybe save for Trias. They descend to the Prime Material Plane more often like Dame Aylin. This is one thing that celestials have in common with fiends. They love breeding offspring with mortals. They would be much better off practicing asceticism and abstinence. Although it must be admitted that it is the fiends that are not hypocrites in this matter." He looks around conspiratorially. You get the impression that he allowed himself to be too honest. */
END
IF~GlobalLT("Trias","GLOBAL",1)~THEN REPLY @70 /*"Another name? Who's Trias?" */ DO~~ + g-bbD097.trias
IF~GlobalGT("Trias","GLOBAL",0)~THEN REPLY @71 /*"I've met Trias before. What do you know about him?" */ DO~~ + g-bbD097.trias
IF~Dead("Trias")~THEN REPLY @72 /*"I've met Trias the Betrayer. And I caused his demise." */ DO~~ + g-bbD097.trias
IF~~THEN REPLY @73 /*"Yet another name? Who's Aylin?" */ DO~~ + g-bbD097.aylin
IF~~THEN REPLY @74 /*"You've mentioned City of Lost Souls, haven't you?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @75 /*"Where's Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @76 /*"You've mentioned something about a prophecy." */ DO~~ + g-bbD097.prophecy
IF~~THEN REPLY @77 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @78 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.prophecy
@80 /*"Sensei Dharvana claims that in three years, a dead man from Toril, who's be able to solve the mystery of the True Names and awaken the Dreaming Man, will come to Cania." The pilgrim looks at you carefully for a moment, as if wondering if it was you he was talking about. "But you come too early. This is not your prophecy." You could have sworn he was smirking, but you saw the same tired look on his face again. */
END
IF~~THEN REPLY @82 /*"Where's Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @83 /*"City of Lost Souls?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @84 /*"Who's Sensei Dharvana?" */ DO~~ + g-bbD097.dharvana
IF~~THEN REPLY @85 /*"Who's the Sleeping Man?" */ DO~~ + g-bbD097.sleepingman
IF~~THEN REPLY @86 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @87 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.trias
@89 /*The Pilgrim shrugs. "Ach'ali-Drowning.... I don't know much about him. I just heard about a deva talking to devils. It's not normal even when you get used to the unpredictability of Limbo. Good and evil in such an extreme form... They are irreconcilable. I'm indifferent towards his fate, though." */
END
IF~~THEN REPLY @91 /*"Limbo?" */ DO~~ + g-bbD097.limbo
IF~~THEN REPLY @92 /*"City of Lost Souls?" */ DO~~ + g-bbD097.lostsouls
IF~~THEN REPLY @93 /*"Who's Sensei Dharvana?" */ DO~~ + g-bbD097.dharvana
IF~~THEN REPLY @94 /*"Who's the Sleeping Man?" */ DO~~ + g-bbD097.sleepingman
IF~~THEN REPLY @95 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @96 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.zerthimon
@98 /*"Some of the Circles are *known* to me." */
END
IF~~THEN REPLY @100 /*"I want to ask you about particular Circles." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @101 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @102 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.companions
@104 /*The man is kind of confused. He glances at your companions. "Speak your questions clearly." */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @106 /*"What do you think of Morte?" */ DO~~ + g-bbD097.sulmort
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @107 /*"What do you think of Dak'kon?" */ DO~~ + g-bbD097.suldak
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @108 /*"What do you think of Annah?" */ DO~~ + g-bbD097.sulann
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @109 /*"What do you think of Fall-from-Grace?" */ DO~~ + g-bbD097.sullgrac
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @110 /*"What do you think of Ignus?" */ DO~~ + g-bbD097.sullign
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @111 /*"What do you think of Vhailor?" */ DO~~ + g-bbD097.sullvha
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @112 /*"What do you think of Nordom?" */ DO~~ + g-bbD097.sullnor
IF~InParty("g-bbgem") !StateCheck("g-bbgem",CD_STATE_NOTVALID)~THEN REPLY @113 /*"What do you think of Gemariel?" */ DO~~ + g-bbD097.sullgem
IF~InParty("g-bbfur") !StateCheck("g-bbfur",CD_STATE_NOTVALID)~THEN REPLY @114 /*"What do you think of the Fury?" */ DO~~ + g-bbD097.sullery
IF~~THEN REPLY @115 /*"What do you think of me?" */ DO~~ + g-bbD097.sullnam
IF~~THEN REPLY @116 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @117 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sulmort
@119 /*"Isn't this an aboriginal dweller of Baator? I'm feeling it. A few layers above there's the Pillar of Skulls. It always hurts to see there members of the People. No race is free of lies, though. Even celestials prevaricate sometimes." */
END
IF~~THEN REPLY @121 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @122 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @123 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.suldak
@125 /*"His name is *known* to me. But he is *not* one of the People. However, this matter is as twisted as Fri'hi's roots. We do not have time to talk about its nuances." */
END
IF~~THEN REPLY @127 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @128 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @129 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sulann
@131 /*"You do not lack courage, bringing someone with Tanar'ri blood to Baator. I recognize thanks to the tail." Having noticed Annah's death stare, he looks away. His gaze, as befits a monk, is missing lust, though. He's simply observing the reality. "But this fiend blood can help her survive the cold here. If we can ever talk about advantages of fiend blood, that is." */
END
IF~~THEN REPLY @133 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @134 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @135 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullgrac
@137 /*"I'm afraid that by bringing a Tanar'ri to Baator, you sentence your companion to death." There's no despect in his words but it's hard to notice sincere sympathy. "If you did that though, surely you're prepared enough to defend her." */
END
IF~~THEN REPLY @139 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @140 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @141 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullign
@143 /*"Taking with you a man burning with an inextinguishable flame to an icy hell was a strategic move, traveler. Perhaps here his flaming passion will bring benefits instead of harm." */
END
IF~~THEN REPLY @145 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @146 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @147 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullvha
@149 /*"Law incarnated. I wish *not* to be judged by him." He answers, ignoring the fierce gaze of Vhailor. */
END
IF~~THEN REPLY @151 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @152 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @153 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullnor
@155 /*"A rogue modron? Isn't he one of the group that got lost on Cania during the Great Modron March? You might find them somewhere nearby. How ironic. Beings from all sides of the Great Wheel are drawn to the bottom of Hell. Githzerai from the planes of Chaos, modrons from the planes of Law, Dreaming Man the planetar from the planes of Good... And now even you, a Sigilian, I presume. Although I suspect you have seen many more planes than I have during your pilgrimage. Encountering a rogue modron is like finding a minor flaw in a system, a legal bug that allows for the existence of a being that is the denial of its own nature. This is an evidence of the ultimate, growingly chaotic nature of the multiverse." */
END
IF~~THEN REPLY @157 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @158 /*"Modrons? Here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @159 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullgem
@161 /*"Is this your guide? It's hard to find a better guide for Baator than Baatezu. And a worse. Make sure your agreement with him foresees all the unforseeable scenarios. Otherwise, you may wake up finding yourself with a chain on your neck and shackles on your wrists, shoveling nupperibo's shit." */
END
IF~~THEN REPLY @163 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @164 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @165 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullery
@167 /*"Normally, seeing you with an erinyes, I'd say your case is lost. But something tells me you know what you're doing. At least to some extent." */
END
IF~~THEN REPLY @169 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @170 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @171 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sullnam
@173 /*"I see a man who does not *know* himself. Thus, so many questions." */
END
IF~Global("g-sulchao","GLOBAL",0)~THEN REPLY @175 /*"Actually, I was wondering if you like how I look." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("g-sulchao","GLOBAL",1)~ + g-bbD097.seduce
IF~~THEN REPLY @176 /*"I want to ask you about someone else." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @177 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @178 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.seduce
@180 /*The monk stares at you with his coal-black eyes. "It is good to be restrained in body. It is good to be restrained in speech. It is good to be restrained in mind. It is good to be restrained in everything. The renunciate who is restrained in every way will realize freedom from suffering." You're pretty sure it's a quote of some noble saint. */
END
IF~~THEN REPLY @182 /*"Alright, I want to ask you about someone else..." */ DO~~ + g-bbD097.companions
IF~~THEN REPLY @183 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @184 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circles
@186 /*"Which Circle do you mean, traveler?" */
END
IF~CheckStatGT(Protagonist,11,WIS) Global("Dakkon_Teach","GLOBAL",2) Global("G-sulze1","GLOBAL",0)~THEN REPLY @188 /*"First Circle of Zerthimon. The power lies in knowing yourself. I've learned that when someone doesn't *know* themselves, they are lost. They become a tool in the hands of others. Do you agree with this?" */ DO~AddexperienceParty(1000) SetGlobal("G-sulze1","GLOBAL",1)~ + g-bbD097.circle1
IF~CheckStatGT(Protagonist,11,WIS) Global("Dakkon_Teach","GLOBAL",4) Global("G-sulze2","GLOBAL",0)~THEN REPLY @189 /*"Second Circle of Zerthimon. Not *knowing* something can be a tool, like flesh or steel, if you make an attempt to *know* its nature and how it came into being. What do you think?" */ DO~AddexperienceParty(2000) SetGlobal("G-sulze2","GLOBAL",1)~ + g-bbD097.circle2
IF~CheckStatGT(Protagonist,13,WIS) Global("Dakkon_Teach","GLOBAL",6) Global("G-sulze3","GLOBAL",0)~THEN REPLY @190 /*"Third Circle of Zerthimon. Endure. In enduring grow strong." */ DO~AddexperienceParty(3000) SetGlobal("G-sulze3","GLOBAL",1)~ + g-bbD097.circle3
IF~CheckStatGT(Protagonist,14,WIS) Global("Dakkon_Teach","GLOBAL",8) Global("G-sulze4","GLOBAL",0)~THEN REPLY @191 /*"Fourth Circle of Zerthimon. Vilquar's Eye. When one makes the choice to see only what is in front of him, he sees only a part of the whole." */ DO~AddexperienceParty(4000) SetGlobal("G-sulze4","GLOBAL",1)~ + g-bbD097.circle4
IF~CheckStatGT(Protagonist,15,WIS) Global("Dakkon_Teach","GLOBAL",10) Global("G-sulze5","GLOBAL",0)~THEN REPLY @192 /*"Fifth Circle of Zerthimon. The power of One lies in *knowing*." */ DO~AddexperienceParty(5000) SetGlobal("G-sulze5","GLOBAL",1)~ + g-bbD097.circle5
IF~CheckStatGT(Protagonist,17,WIS) Global("Dakkon_Teach","GLOBAL",12) Global("G-sulze6","GLOBAL",0)~THEN REPLY @193 /*"Sixth Circle of Zerthimon. Balance in all things. Thus the teachings of Zerthimon from this Circle can be summarized." */ DO~AddexperienceParty(6000) SetGlobal("G-sulze6","GLOBAL",1)~ + g-bbD097.circle6
IF~CheckStatGT(Protagonist,18,WIS) Global("Dakkon_Teach","GLOBAL",16) Global("G-sulze7","GLOBAL",0)~THEN REPLY @194 /*"Seventh Circle of Zerthimon. Time is not an enemy, but an ally. It is the most powerful weapon that can exist. If we survive our enemies, we will be victorious. This is how slaves can win against their masters." */ DO~AddexperienceParty(7000) SetGlobal("G-sulze7","GLOBAL",1)~ + g-bbD097.circle7
IF~CheckStatGT(Protagonist,18,WIS) Global("Dakkon_Teach","GLOBAL",19) Global("G-sulze8","GLOBAL",0)~THEN REPLY @195 /*"Eight Circle of Zerthimon, the final one. Not only should you *know* yourself and draw strength from it, but also through concentration you can reveal the weak points of your enemy. Zerthimon's focus comes from true *knowing*." */ DO~AddexperienceParty(8000) SetGlobal("G-sulze8","GLOBAL",1)~ + g-bbD097.circle8
IF~~THEN REPLY @196 /*"Enough of the Unbroken Circle. I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @197 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle1
@199 /*"I hear your words. O poor ye who do not *know* themselves. For they will drown in the immeasurable chaos of Limbo." */
END
IF~~THEN REPLY @201 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @202 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @203 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle2
@205 /*"Naturally, *knowing* does not exist without its root. So you are right, there must be a recognized state *before* knowing. And it belongs to the user, by shaping his own. Be wary though: there is no return to the state without knowing." */
END
IF~~THEN REPLY @207 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @208 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @209 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle3
@211 /*"I hear your words. I feel how I am growing stronger thanks to the very sound of your voice." */
END
IF~~THEN REPLY @213 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @214 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @215 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle4
@217 /*"It is true. Unfortunately, so many people seem to be content with seeing what is convenient for them. They do not try to reach further. They do not develop. They do not give themselves such an opportunity. They only see food, reproduction and the will of those stronger than themselves fighting against those representing contrary beliefs. This is true slavery - the arbitrary abandonment of will in the name of depriving yourself of suffering. There is no greater enemy of freedom than happy slaves." */
END
IF~~THEN REPLY @219 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @220 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @221 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle5
@223 /*"I hear your words." */
END
IF~~THEN REPLY @225 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @226 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @227 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle6
@229 /*"You see it. Don't you, comer? Like chaos with law. Like good with evil. Disturbing this balance does not lead to a favorable solution. I think you already see this seemingly invisible third axis of the effects of your decisions. The one you cannot measure, but only see real consequences in an aging multiverse. */
END
IF~~THEN REPLY @231 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @232 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @233 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle7
@235 /*"And so the masters can oppress an entire nation for millennia, just like the *illithids* did. You're right, it's a valid observation." */
END
IF~~THEN REPLY @237 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @238 /*"Could you tell me more about illithids?" */ DO~~ + g-bbD097.illithid
IF~~THEN REPLY @239 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.circle8
@241 /*"It's intuitive knowledge, but only when you understand the whole process of focus that you'll be able to get the most out of it. It seems like you've learned the entire Circle. This is unusual for someone who isn't a Githzerai. For one to understand what the Circles are like is... something that was previously incomprehensible to me. But after talking to you, I see that you are worthy. Go and live. Discover your true nature, planeswalker." */
END
IF~~THEN REPLY @243 /*"I want to ask about a different circle." */ DO~~ + g-bbD097.circles
IF~~THEN REPLY @244 /*"I've got more questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @245 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.aylin
@247 /*"Dame Aylin is an aasimar, daughter of the goddess Selûne, the Moonmaiden. Aylin was imprisoned in the Plane of Shadow. The modrons stranded here in Cania have calculated that she will remain there for another two centuries. A terrible fate. The long-lived races will know torments unknown to mortals." */
END
IF~Global("g-knowtyche","GLOBAL",1) Global("G-knowselune","GLOBAL",1)~THEN REPLY @249 /*"I heard that Selûne killed Tyche who, instead of disappearing, divided into good Tymora and evil Beshaba." */ DO~~ + g-bbD097.tyche
IF~~THEN REPLY @250 /*"Whose deity is Selûne?" */ DO~SetGlobal("G-knowselune","GLOBAL",1)~ + g-bbD097.selune
IF~~THEN REPLY @251 /*"Modrons? Here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @252 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @253 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin
IF~~THEN REPLY @254 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @255 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.selune
@257 /*"Selûne is a chaotic good goddess of Ysgard. Followers call her their Lady of Silver, and she is also known as the Moonmaiden and the Night White Lady. If you are noticing a pattern here, you are right - she is a goddess especially important to women, as she rules over the Moon and menstruation. Her domains also include protection and travel, so if you are looking for a patron deity of your little odyssey, she may be the right one. On the other hand, she is also responsible for lycanthropes and madness. As you can see, even good has many shades, especially when combined with chaos. What a visit to Cania can teach you is that the people you meet are more than just the axis of good against evil and the axis of law against chaos. Life is much more complicated." */
END
IF~~THEN REPLY @259 /*"And she's Aylin's mother? What happened to her?" */ DO~~ + g-bbD097.aylin
IF~~THEN REPLY @260 /*"Modrons? Here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @261 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @262 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @263 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @264 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.modrons
@266 /*"A pinion has broken away from Mechanus. As you probably know, modrons and githzerai stand on opposite sides of the Great Wheel. Lawful beings subordinate to the unanimous will of order on the one hand, and spiritual individualists bending chaos with *their* will on the other. When the number of pinions was not right, they did everything they could to get it back. They paid for it by losing their freedom, ending up in hell. If they ever had that freedom. We are not on the wrong foot, do not think so. Maybe they treat the world differently but after all, they are living beings." */
END
IF~~THEN REPLY @268 /*"Whose deity is Selûne?" */ DO~SetGlobal("G-knowselune","GLOBAL",1)~ + g-bbD097.selune
IF~~THEN REPLY @269 /*"Modrons? Here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @270 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @271 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @272 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @273 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.shadows
@275 /*"The Plane of Shadow, also called Shadowfell, is a colourless, transitive plane being an echo of the Prime Material Plane. The domain of the goddess Shar, Selûne's evil sister. Some creatures and mages can use the plane to travel. It can be a powerful prison too. There were some cases of transforming planeswalkers into so called dark creatures, changing their nature. At least physically. Mentally, I do not think it has been sufficiently researched yet." */
END
IF~~THEN REPLY @277 /*"So there are two twin deities, Selûne and Shar?" */ DO~SetGlobal("G-knowselune","GLOBAL",1) SetGlobal("G-knowshar","GLOBAL",1)~ + g-bbD097.shar
IF~~THEN REPLY @278 /*"Modrons? Here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @279 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @280 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @281 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @282 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.aylin2
@284 /*"Dame Aylin, Nightsong. Her heavenly inheritance is wings. She served her mother Selûne as a paladin. She fell in love with Isobel Thorm, a half-elf who unfortunately died. Her father and his advisor Balthazar kidnapped Aylin and imprisoned her in a soul cage in Shadowfell for Shar." */
END
IF~~THEN REPLY @286 /*"Whose deity is Selûne?" */ DO~SetGlobal("G-knowselune","GLOBAL",1)~ + g-bbD097.selune
IF~~THEN REPLY @287 /*"Whose deity is Shar?" */ DO~SetGlobal("G-knowshar","GLOBAL",1)~ + g-bbD097.shar
IF~~THEN REPLY @288 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @289 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @290 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @291 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.shar
@293 /*"Mistress of the Night, the Lady of Loss, Dark Goddess, Dark Lady. Shar's very name means 'evil'. She is a neutral evil deity who represents primordial darkness in opposition to the light reflected in the Moon of Selûne. She destroys, allures and plots. She hides endless secrets. Her followers selfishly seek a sense of revenge and feed resentment." */
END
IF~~THEN REPLY @295 /*"What about Selûne?" */ DO~SetGlobal("G-knowselune","GLOBAL",1)~ + g-bbD097.selune
IF~~THEN REPLY @296 /*"You seem to know a lot about things from various planes. Is it thanks to your pilgrimages?" */ DO~~ + g-bbD097.know
IF~~THEN REPLY @297 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @298 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @299 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @300 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.know
@302 /*"It is true. The more details we learn about the multiverse, seemingly unrelated, the better we understand the world. And we do not have to catalog them like those hellwrecked modrons. We have to get to *know* them, but I mean seriously *know* them. Their essence, their nature." */
END
IF~Global("Know_Gith","GLOBAL",1)~THEN REPLY @304 /*"It fits that you're talking about *knowing* things. You're a Githzerai, right? What can you tell me about your people?" */ DO~~ + g-bbD097.githzerai
IF~~THEN REPLY @305 /*"You seem to know a lot about things from various planes. Is it thanks to your pilgrimages?" */ DO~~ + g-bbD097.know
IF~~THEN REPLY @306 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @307 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin2
IF~~THEN REPLY @308 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @309 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.githzerai
@311 /*"We are the People. We have suffered slavery to the *illithids*, we have waged war against the githyanki - those whose rule was merely an extension of their erstwhile masters. They settled in the Astral Plane, we did so in Limbo, learning the difficult coexistence with the slaads in the ever-changing chaos." */
END
IF~~THEN REPLY @313 /*"So what the hell are you doing in... hell?" */ DO~~ + g-bbD097.doing
IF~~THEN REPLY @314 /*"Who are illithids?" */ DO~~ + g-bbD097.illithid
IF~~THEN REPLY @315 /*"Who are slaads?" */ DO~~ + g-bbD097.slaadi
IF~~THEN REPLY @316 /*"What's Limbo like?" */ DO~~ + g-bbD097.limbo
IF~GlobalGT("Dakkon_Teach","GLOBAL",0)~THEN REPLY @317 /*"Do you *know* The Unbroken Circle of Zerthimon?" */ DO~~ + g-bbD097.zerthimon
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @318 /*(Point at Dak'kon.) "I'm traveling with your fellow compatriot. Is there any chance you know each other?" */ DO~~ + g-bbD097.suldak
IF~~THEN REPLY @319 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.illithid
@321 /*"Mind flayers, ghaik, sadistic invaders from Penumbra. They quite literally devour the brains of their victims, expanding the borders of their interplanar empire. This included not only the Astral or Ethereal Planes, but countless planets of the Prime Material Plane, including the famous base in the Underdark, and even the outskirts The Outer Planes. It has lasted inconceivably long before history began to be recorded. They used to travel on ships called nautiloids. To give you an idea of the scale of the threat they once posed, imagine that the archdevils of the Nine Hells were once forced to suspend their Blood War campaign, to respond to *illithids* expansion." */
=@322 /*"However, the larger the empire, the greater the risk of rebellion. The masters suppressed them with their psionic powers, but over the millennia the slaves began to transform, evolve and develop resistance. Before the division, Gith and Vlaakith, who would later lead the Githyanki traitors, stood alongside Zerthimon and his successor Zaerith Menya-Ag-Gith in fighting against their oppressor. So great was this threat that the two heavens were then as one. Today, the ghaik are only a fraction of their former power. This does not mean, however, that there is no threat. As long as at least one *illithid* lives, he will try to enslave and instill his tadpoles, remembering the vastness of the empire from years ago." */
END
IF~~THEN REPLY @324 /*"So what the hell are you doing in... hell?" */ DO~~ + g-bbD097.doing
IF~~THEN REPLY @325 /*"Who are githzerai?" */ DO~~ + g-bbD097.githzerai
IF~~THEN REPLY @326 /*"Who are slaadi?" */ DO~~ + g-bbD097.slaadi
IF~~THEN REPLY @327 /*"What do you know about Cania? Should I be cautious?" */ DO~~ + g-bbD097.cania
IF~GlobalGT("Dakkon_Teach","GLOBAL",0)~THEN REPLY @328 /*"The Unbroken Circle of Zerthimon tells the story of this slavery. Do you *know* it?" */ DO~~ + g-bbD097.zerthimon
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @329 /*(Point at Dak'kon.) "I'm traveling with your fellow compatriot. Is there any chance you know each other?" */ DO~~ + g-bbD097.suldak
IF~~THEN REPLY @330 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.slaadi
@332 /*"Slaadi are the chaotic frog-like inhabitants of Limbo. If you need this knowledge, their color determines their position in the hierarchy, similar to the abishai. For slaads it looks like this: mud, red, blue, green, gray, death, white, and if they survive several hundred years, they can become black slaads - a toad-shaped abyss. A power to be reckoned with. An interesting fact are the gormeel, the slaadi dissenters, whose nature is the opposite of theirs of them are even hidden as githzerai because, being pariahs among their people, the slaadi hunt them for fun. Here's the lesson: chaos is so unpredictable that even in the midst of it, law can arise. Just don't say it of this to the modrons. They will say the exact opposite." */
END
IF~~THEN REPLY @334 /*"The modrons? You mean here in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @335 /*"Who are illithids?" */ DO~~ + g-bbD097.illithid
IF~~THEN REPLY @336 /*"Who are githzerai?" */ DO~~ + g-bbD097.githzerai
IF~~THEN REPLY @337 /*"What's Limbo like?" */ DO~~ + g-bbD097.limbo
IF~GlobalGT("Dakkon_Teach","GLOBAL",0)~THEN REPLY @338 /*"Do you *know* The Unbroken Circle of Zerthimon?" */ DO~~ + g-bbD097.zerthimon
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @339 /*(Point at Dak'kon.) "I'm traveling with your fellow compatriot. Is there any chance you know each other?" */ DO~~ + g-bbD097.suldak
IF~~THEN REPLY @340 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.cania
@342 /*"Apart from the obvious, which is protection against the cold, first of all watch out for baatezu. You will certainly encounter cornugons and gelugons with their lesser fiends. However, since you got here, I suspect that you're not afraid of lemures." */
END
IF~Global("AR1000_Visited","GLOBAL",1)~THEN REPLY @344 /*"I visited Avernus. How is it possible Cania is so different? Aren't we still in Baator?" */ DO~~ + g-bbD097.avernus
IF~~THEN REPLY @345 /*"Despite everything, I'm still more frightened by the shapeless yet still somehow human mass of a lemure than by some oversized lizards." */ DO~~ + g-bbD097.lemures
IF~Global("G-knowicewind","GLOBAL",1)~THEN REPLY @346 /*"Is Cania similar to Icewind Dale?" */ DO~~ + g-bbD097.icewind
IF~~THEN REPLY @347 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @348 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.icewind
@350 /*"This place is not *known* to me. If I recall correctly, it's somewhere in the Prime Material Plane. I have not ventured beyond the Outer Planes. I make the pilgrimages on foot as often as possible. I avoid conduit riding. I mean, an astral conduit may be necessary to get there. Whatever the case may be, the conditions here are certainly much more severe. Winters in the Prime are nothing like the conditions found in the Outer Planes. And I suspect this is also the case with the comparison you ask for." */
END
IF~~THEN REPLY @352 /*"Let's talk about the planes. I visited many places." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @353 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @354 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.travels
@356 /*"Tell me where your journeys have led you and I will tell you who you are." */
END
IF~Global("G-location1","GLOBAL",0)~THEN REPLY @358 /*"I've been in Sigil, the City of Doors." */ DO~SetGlobal("G-location1","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.sigil
IF~Global("AR1900_Visited","GLOBAL",1) Global("G-location2","GLOBAL",0)~THEN REPLY @359 /*"I've been in one of the Lady of Pain's mazes but I managed to get out." */ DO~SetGlobal("G-location2","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.lmaze
IF~Global("AR13EN_Visited","GLOBAL",1) Global("G-location3","GLOBAL",0)~THEN REPLY @360 /*"I've been in Limbo but in a fragment that was organized like Mechanus by modrons." */ DO~SetGlobal("G-location3","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.mmaze
IF~Global("AR0610_Visited","GLOBAL",1) Global("G-location4","GLOBAL",0)~THEN REPLY @361 /*"I've been in Ravel's Black-Barbed Maze." */ DO~SetGlobal("G-location4","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.rmaze
IF~Global("AR0700_Visited","GLOBAL",1) Global("G-location5","GLOBAL",0)~THEN REPLY @362 /*"I've been in the Carceri's gate-town, Curst." */ DO~SetGlobal("G-location5","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.curst
IF~Global("AR1100_Visited","GLOBAL",1) Global("G-location6","GLOBAL",0)~THEN REPLY @363 /*"I've been in Outlands. I've seen the great skeleton very closely." */ DO~SetGlobal("G-location6","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.outlands
IF~Global("AR1000_Visited","GLOBAL",1) Global("G-location7","GLOBAL",0)~THEN REPLY @364 /*"I've been in Avernus. How is it possible Cania is so different? Aren't we still in Baator?" */ DO~SetGlobal("G-location7","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.avernus
IF~Global("AR0900_Visited","GLOBAL",1) Global("G-location8","GLOBAL",0)~THEN REPLY @365 /*"I've been in Carceri and I managed to get out." */ DO~SetGlobal("G-location8","GLOBAL",1) AddexperienceParty(1000)~ + g-bbD097.carceri
IF~~THEN REPLY @366 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @367 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.sigil
@369 /*"Who was not, traveller. In Sigil numerous paths cross. Some claim it may be the centre of the multiverse." */
END
IF~~THEN REPLY @371 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @372 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @373 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.lmaze
@375 /*"Supposedly, there is a hidden exit in every maze. Many believe it is a mere gossip to give false hope. But ultimately maybe there is some grain of truth to that." */
END
IF~~THEN REPLY @377 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @378 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @379 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.mmaze
@381 /*"A contradiction of contradictions. An ordered chaos. You should see Limbo in its natural state when you will train your will power enough." */
END
IF~~THEN REPLY @383 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @384 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @385 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.rmaze
@387 /*"The Night Hag? She was said to origin from the Gray Wastes. If you ever hoped she would make your wishes come true, I wish you never tried to asked her." */
END
IF~~THEN REPLY @389 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @390 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @391 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.curst
@393 /*"A treacherous place. A pit full of snakes. You know what I am talking about. There is a great prison underground but in reality the city is its first level but its dwellers do not realize that." */
END
IF~~THEN REPLY @395 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @396 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @397 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.outlands
@399 /*"I travelled there too. But this place is so big I cannot even consociate the skeleton you are talking about with anything." */
END
IF~~THEN REPLY @401 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @402 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @403 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.avernus
@405 /*"Planes are extraordinary, traveler. Sometimes even adjacent layers are very different from each other. And within Baator itself are both Cania and Stygia, two icy lands." */
END
IF~~THEN REPLY @407 /*"Let's talk about the planes. I visited many places." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @408 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @409 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.carceri
@411 /*"You are lucky, traveller. The Planes of Chaos are much harder to escape from." */
END
IF~~THEN REPLY @413 /*"There are other places I visited." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @414 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @415 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.lemures
@417 /*"No wonder, traveller. We are most terrified by what lies somewhere between things resembling us and things awaiting us after death. Other baatezu, though indeed terrifying, are hard to imagine as our future selves. Lemures, or nupperibo, not to mention larvae... That's a more distant potential future. I *understand* what you mean." */
END
IF~~THEN REPLY @419 /*"Let's talk about the planes. I visited many places." */ DO~~ + g-bbD097.travels
IF~~THEN REPLY @420 /*"I've got other questions." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @421 /*"Nevermind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD097 g-bbD097.tyche
@423 /*"A terrifying prospect, to lose *knowledge* of oneself so completely that one becomes two new, extremely contrastive entities. What do you think? That is my interpretation. I do not think it was divine intervention. It must have been something more sinister that changed her nature. Sometimes I wonder what, but ultimately, maybe it is an aspect of the multiverse that is better left unexplored unless absolutely necessary." */
END
IF~~THEN REPLY @425 /*"Whose deity is Selûne?" */ DO~~ + g-bbD097.selune
IF~~THEN REPLY @426 /*"What do you know about modrons in Cania?" */ DO~~ + g-bbD097.modrons
IF~~THEN REPLY @427 /*"What do you know about the Plane of Shadow?" */ DO~~ + g-bbD097.shadows
IF~~THEN REPLY @428 /*"Tell me more about this Aylin." */ DO~~ + g-bbD097.aylin
IF~~THEN REPLY @429 /*"Let's return to other questions..." */ DO~~ + g-bbD097.questions
IF~~THEN REPLY @430 /*"Nevermind, goodbye." */ DO~~ EXIT