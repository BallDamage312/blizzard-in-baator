BEGIN g-bbD029
CHAIN IF~Dead("g-bb027")~THEN g-bbD029 g-bbD029.maredead
@0 /*In a tiny, begrimed room, you see a lone githzerai. His flesh, wherever visible, is marked by severe burns. Upon noticing you, he takes in a whiff of the air you brought with you. "Mare... Mare's blood. You are going to pay for this!" */
END
IF~~THEN REPLY @2 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-ikss_violent","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD029 g-bbD029.start
@4 /*In a tiny, begrimed room, you see a lone githzerai. His flesh, wherever visible, is marked by severe burns. Upon noticing you, he quickly hobbles towards the filthy wall opposite to the door and sticks his hunched back against it. His demeanor is a testament to a chaotic and broken mind. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @5 /*"He is shattered. He does not *know* himself." */
==g-bbD029 @6 /*"Wh... who are you, berk? What are you doing in my kip?" */
END
IF~~THEN REPLY @8 /*"Calm down. I just want to talk." */ DO~~ + g-bbD029.kind
IF~~THEN REPLY @9 /*"You have something that does not belong to you, Ikss'odes. Give it back and no harm shall befall you." */ DO~~ + g-bbD029.unkind
IF~~THEN REPLY @10 /*"Die, thief." */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-ikss_violent","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-ikss_redeem","GLOBAL",10)~THEN g-bbD029 g-bbD029.bitterend
@12 /*Ikss'odes still lingers among his measly possessions, though he no longer looks truly miserable. He gives you a cold look as you approach but does not say anything. You sense you should leave. */
EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-ikss-end","GLOBAL",1)~THEN g-bbD029 g-bbD029.goodend
@15 /*"Thank you once again for what you have done for me. May the Lady's shadow pass you by, always." */
EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("g-ikss-end","GLOBAL",1)~THEN g-bbD029 g-bbD029.badend
@18 /*Ikss'odes still lingers with an unbearable joylessness among his measly possessions. His previous state of psychotic agitation has given way to silent resignation. "Why are you here? Not only did you thieve me of my chance to return home, but you come here to remind me of it?" He asks in a sorrowful and angry tone. */
END
IF~GlobalLT("G-ikss_redeem","GLOBAL",10)~THEN REPLY @20 /*"Farewell, Ikss'odes. And I am sorry. I wish it could have gone differently." */ DO~IncrementGlobal("G-ikss_redeem","GLOBAL",1)~ + g-bbD029.redemption
IF~Global("G-ikss_redeem","GLOBAL",10)~THEN REPLY @21 /*"Farewell, Ikss'odes. I wish it could have gone differently. And I will continue to come here and apologize." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("G-ikss_redeem","GLOBAL",1)~ + g-bbD029.redemption2
IF~GlobalLT("G-ikss_redeem","GLOBAL",10)~THEN REPLY @22 /*"As I should, thief." */ DO~~ EXIT
IF~GlobalLT("G-ikss_redeem","GLOBAL",10)~THEN REPLY @23 /*"I have come to finish what I started. Time to die, gith." */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-ikss_violent","GLOBAL",1)~ EXIT
IF~Global("G-ikss_redeem","GLOBAL",11)~THEN REPLY @24 /*"Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.kind
@26 /*The emaciated, scarred gith calms down but only marginally. He does not unstick himself from the grimy wall. You are not sure that he could even if he wanted to. "You just want to talk? How did you get in here?" */
END
IF~~THEN REPLY @28 /*"I talked to Mare; she gave me the key. I heard that you stole something but I think I need to hear your side of the story." */ DO~~ + g-bbD029.kind2
IF~~THEN REPLY @29 /*"Brill from the Rivergate sent me... but I do not trust him one bit. I need to hear your side of the story." */ DO~IncrementGlobal("G-ikss_brillhate","GLOBAL",1)~ + g-bbD029.kind2
IF~~THEN REPLY @30 /*"Brill from the Rivergate sent me... I wish I didn't have to do this, but I need his possession back." */ DO~~ + g-bbD029.kindforce
IF~~THEN REPLY @31 /*"You have something that does not belong to you, Ikss'odes. Give it back and no harm shall befall you." */ DO~~ + g-bbD029.unkind
CHAIN IF~~THEN g-bbD029 g-bbD029.redemption
@33 /*Despite your intentions to mend your relationship, the gith does not seem to magically forgive what you have done. He scoffs, turns around and stands there in silence. */
EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.redemption2
@36 /*The gith's demeanor changes slightly, upon hearing your stubbornness. His spirit seems at least somewhat lifted despite the hopelessness of his situation. "I sense the truth in your words... Maybe in time I can find my way home again. I cannot forgive what you've done but I shan't allow hate to inhabit my heart. Please leave me now." */
EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.kind2
@39 /*"I believe you." Ikss'odes visibly relaxes, though his stance still carries the weight of an individual deeply disturbed by something unspoken. "I will explain as best I can." */
END
IF~~THEN REPLY @41 /*"Go on." */ DO~~ + g-bbD029.story
CHAIN IF~~THEN g-bbD029 g-bbD029.story
@43 /*"My name is Ikss'odes... But... You probably know that. I hail from..." The gith swallows before uttering his next words. "Limbo originally, though I have not been th-there for a long time. I was a Zerth, part of the militia for The Floating City." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @44 /*"The Floating City. A beautiful, shimmering town of religious importance to us, the githzerai." */
==g-bbD029 @45 /*"We were on the hunt for a group of assailants who had just raided our outpost. They had slain a lot of our monks and stole some priceless artifacts. It was a group of death slaadi, under orders from Lord Ssendam, and they were fleeing deep into the lower realms of Limbo." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @46 /*"Lord Ssendam." Dak'kon instinctively shivers upon hearing the name. "Slaadi lord of insanity, the manifested madness itself and a truly despicable villain." */
==g-bbD029 @47 /*"The pursuit took us through Swarga, a vedic realm even less predictable than the common space of Limbo. We were hit by a violent firestorm as if our presence angered the god Agni. Many of my squadron perished in the flames. I myself was engulfed in a fiery vortex and instead of finding oblivion like my friends, I had been transported to a whole other plane. Plane of Fire." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @48 /*Ignus seems emboldened by the sound of that. *"Fire... YESSS. Blessssed being!"* */
==g-bbD029 @49 /*"My skin was burning and my soul was in agony but, through sheer perseverance, I soldiered on, looking for a way out. All I needed was a moment of peace to allow myself to form my karach blade into a gate back home. After a long and exhausting trek alongside the Sea of Scorching Waves, I found a single tongue of flame that was black in color. As it formed an inviting arch before me, I stepped in, assuming I was bound to be saved." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @50 /*"Something tells me that it didn't work out." */
==g-bbD029 @51 /*"I... don't know where I ended up... an endless ruined city, ever ablazed, ever shining with a blinding white light, the buildings twisted and... evil. I found no repose, just more torment. I stumbled upon a deep chasm, and threw myself into it, hopeless." */
==g-bbD029 @52 /*"But that... was still not the end. My memory holds no more images after that, just feelings. Feeling of my person getting smaller, weaker. My soul eaten away, transformed. An ever-present mocking laughter. That lasted... for a long time." Ikss'odes' story stops as he freezes, his eyes fixated upon an indefinite point in space. */
END
IF~~THEN REPLY @54 /*"So, what happened next? How did you get here?" */ DO~~ + g-bbD029.continue
IF~~THEN REPLY @55 /*"I don't see how this has anything to do with the theft." */ DO~~ + g-bbD029.intermission2
CHAIN IF~~THEN g-bbD029 g-bbD029.intermission2
@57 /*The gith's calmer demeanor becomes somewhat perturbed anew. "This is all important, I am *getting* to it," he says impatiently. */
END
IF~~THEN REPLY @59 /*"Alright, I hope so." */ DO~~ + g-bbD029.continue
CHAIN IF~~THEN g-bbD029 g-bbD029.continue
@61 /*"My perception stopped at one point, and I only regained any sort of lucidity here, in Sigil. The Gatehouse Asylum..." Ikss'odes looks up into the upper portion of the wall to the left of him as if seeing the Madhouse District through the building's dilapidated walls. */
=@62 /*"I was told that a couple of eladrin brought me. They picked me up in some deep, forgotten layer of the Abyss, while hunting for some vile demon. I was also told that Tymora must have bestowed her blessings upon me, given the chance of such an encounter." He sighs and continues. "The Bleakers fixed me up as best as they could, but they couldn't do it all the way..." */
=@63 /*Ikss'odes slowly walks over to a nearby chest stood against the bed. The hinges creak as he opens it. He then takes out a vial of silvery material from the chest. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @64 /*"Unformed karach." Dak'kon instantly recognizes the contents of the vial. */
==g-bbD029 @65 /*"Chaos matter. It used to be my blade and a gate to my home in Limbo. Whatever happened to me unbound me from it and I cannot shape it anymore. It was the only thing of value I possessed in this strange city. I did not wish to relinquish it for money, so I looked for work. Under the assumption that this city is the nucleus of neutrality I made a mistake. I trusted an enemy..." */
END
IF~~THEN REPLY @67 /*"A slaad. Unfortunate move." */ DO~~ + g-bbD029.intermission3
IF~~THEN REPLY @68 /*"A slaad. You literally asked for this, gith." */ DO~~ + g-bbD029.intermission4
IF~~THEN REPLY @69 /*"Go on..." */ DO~~ + g-bbD029.continue2
CHAIN IF~~THEN g-bbD029 g-bbD029.intermission3
@71 /*"Yes... most unfortunate. If I could turn back time, I would have chosen a devil instead. I'd probably be better off." The githzerai pauses. "Where was I?" */
END
IF~~THEN REPLY @73 /*"You trusted an enemy..." */ DO~~ + g-bbD029.continue2
CHAIN IF~~THEN g-bbD029 g-bbD029.intermission4
@75 /*Ikss'odes seems to shrink beneath the weight of his own words. "Maybe... maybe I felt so hopeless that I sought self-destruction. I have only myself to blame." */
END
IF~~THEN REPLY @77 /*"So what happened?" */ DO~~ + g-bbD029.continue2
CHAIN IF~~THEN g-bbD029 g-bbD029.continue2
@79 /*"Brill..." The Githzerai tightens his fists hard enough for you to hear his tired skin crack from stretching beyond its normal limit. "Gave me work at the Rivergate, and even gave me a down payment to find myself this kip. But I had to leave my karach as a deposit, so I could not run off. Of course, he was to return it after a full thirty-cycle of reliable work..." */
END
IF~~THEN REPLY @81 /*"But he did not." */ DO~~ + g-bbD029.choice
CHAIN IF~~THEN g-bbD029 g-bbD029.choice
@83 /*"Alas... no. And the only thing connecting me to who I was got taken away. I had to take it back, I had to!" */
END
IF~~THEN REPLY @85 /*"Looks to me like he was trying to swindle you out of hatred to your kind. Your actions were justified." */ DO~IncrementGlobal("GOOD","GLOBAL",2)~ + g-bbD029.neutralgoodend
IF~~THEN REPLY @86 /*"Looks to me like you're making excuses. You stole from a law abiding citizen. Your actions were not justified." */ DO~IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD029.lawfulneutralend
IF~~THEN REPLY @87 /*"Looks to me like you are a victim of circumstance. However, theft was not the answer. Your actions were not justified." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD029.lawfulgoodend
IF~~THEN REPLY @88 /*"I'm not here to judge. Just give me the vial." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD029.lawfulevilend
IF~~THEN REPLY @89 /*Attack. "I'm not here to judge, only to exact punishment." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-ikss_violent","GLOBAL",1) IncrementGlobal("BD_VHAILOR_MORALE","GLOBAL",1)~ EXIT
IF~~THEN REPLY @90 /*"I'm not here to judge, but I did not like Brill since I laid my eyes on him. Keep your karach." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("G-ikss_brillhate","GLOBAL",1)~ + g-bbD029.chaoticgoodend
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @91 /*Look at Dak'kon. "Maybe you can use this karach for yourself?" */ DO~IncrementGlobal("GOOD","GLOBAL",-2) SetGlobal("G-dakkon_vial","GLOBAL",1)~ + g-bbD029.neutralevilend
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @92 /*Look at Dak'kon. "Can you help him regain control of his karach?" */ DO~IncrementGlobal("GOOD","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD029.chaoticgoodendalt
IF~~THEN REPLY @93 /*"I'm going to tell him you were found dead and the vial was gone. I'll pin it on Joseph. It's the perfect lie." */ DO~IncrementGlobal("LAW","GLOBAL",-3)~ + g-bbD029.chaoticneutralend
IF~~THEN REPLY @94 /*"This is not something I want to get involved in either way." */ DO~~ + g-bbD029.trueneutralend
CHAIN IF~~THEN g-bbD029 g-bbD029.neutralgoodend
@96 /*The gith's scarred face brightens. "So... Will you let me keep it?" */
END
IF~ ~THEN REPLY @98 /*"Yes, I will find another way to get what I want from Brill. Farewell." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",13)~ SOLVED_JOURNAL @20081 EXIT
IF~ ~THEN REPLY @99 /*"Yes, and I will have a talk with Brill about it..." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) IncrementGlobal("G-ikss_brillhate","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",13)~ SOLVED_JOURNAL @20081 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.lawfulneutralend
@101 /*The gith returns to his previous uncertain posture. "You are going to take it away, aren't you?" */
END
IF~ ~THEN REPLY @103 /*Take his vial. "Yes. I'm sorry, Ikss'odes." */ DO~SetGlobal("g-ikss-end","GLOBAL",2) GiveItem("g-bbi025",Protagonist) SetGlobal("G-brill_quest","GLOBAL",12)~ SOLVED_JOURNAL @20080 EXIT
IF~ ~THEN REPLY @104 /*Take his vial. "Yes, and be happy that is all. Theft is usually met with punishment." */ DO~SetGlobal("g-ikss-end","GLOBAL",2) GiveItem("g-bbi025",Protagonist) SetGlobal("G-brill_quest","GLOBAL",12)~ SOLVED_JOURNAL @20080 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.lawfulgoodend
@106 /*The gith returns to his previous uncertain posture. "You are going to take it away, aren't you?" */
END
IF~ ~THEN REPLY @108 /*Take his vial. "Yes. I'm sorry, Ikss'odes. Goodbye." */ DO~SetGlobal("g-ikss-end","GLOBAL",2) GiveItem("g-bbi025",Protagonist) SetGlobal("G-brill_quest","GLOBAL",12)~ SOLVED_JOURNAL @20080 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.lawfulevilend
@110 /*The gith startles and clutches his vial to his chest. "But this is not fair." */
END
IF~ ~THEN REPLY @112 /*Take his vial. "Planes aren't fair. Farewell." */ DO~SetGlobal("g-ikss-end","GLOBAL",2) GiveItem("g-bbi025",Protagonist) SetGlobal("G-brill_quest","GLOBAL",12)~ SOLVED_JOURNAL @20080 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.chaoticgoodend
@114 /*The gith opens his eyes to their limit. "Oh! Thank you stranger, may you be blessed by any power that sets their sight on you!" He pauses for a second, swallowing. "What about Brill?" */
END
IF~ ~THEN REPLY @116 /*"I will find another way to deal with him. Goodbye." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",13)~ SOLVED_JOURNAL @20081 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.chaoticneutralend
@118 /*Ikss'odes gives you a bewildered look. "But where should I go then? He will soon find out I live." */
END
IF~ ~THEN REPLY @120 /*"If he picks a fight with Black Joseph? I doubt it; he will likely fall. But hide just in case." */ DO~EscapeArea() SetGlobal("g-ikss-fail","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",14)~ SOLVED_JOURNAL @20082 EXIT
IF~PartyGoldGT(99)~THEN REPLY @121 /*"Take 100 coppers. Find a place to hide outside this district. Time is short." */ DO~EscapeArea() TakePartyGold(100) SetGlobal("g-ikss-fail","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",14)~ SOLVED_JOURNAL @20082 EXIT
IF~PartyGoldGT(499)~THEN REPLY @122 /*"Take 500 coppers. Find a place to hide outside this district. Time is short." */ DO~EscapeArea() TakePartyGold(500) SetGlobal("G-brill_quest","GLOBAL",14)~ SOLVED_JOURNAL @20082 EXIT
IF~ ~THEN REPLY @123 /*"Just never leave this room. You'll be fine." */ DO~SetGlobal("g-ikss-fail","GLOBAL",1) SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",14)~ SOLVED_JOURNAL @20082 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.trueneutralend
@125 /*Ikss'odes seems surprised by your reaction. He opens his mouth to speak, but then stops himself, as if considering the implications of your choice. Eventually, the confused gith follows through with a question. "So... you will leave, just like that? Leave me with my vial?" */
END
IF~ ~THEN REPLY @127 /*"I was *never here* in the first place. Live in peace." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",15)~ SOLVED_JOURNAL @20083 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.neutralevilend
@129 /*Ikss'odes looks at Dak'kon with an expression of absolute dread. "You wouldn't do that to a brother." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @130 /*"My path is not my own to tread on. I am sorry. Forgive me if you can." */
==g-bbD029 @131 /*"I understand..." */
END
IF~ ~THEN REPLY @133 /*"Hand it over. Now." */ DO~~ + g-bbD029.NE2
IF~ ~THEN REPLY @134 /*Take the karach vial from Ikss'odes without uttering a word. */ DO~~ + g-bbD029.NE3
CHAIN IF~~THEN g-bbD029 g-bbD029.NE2
@136 /*With absolute resignation written on his face, the burnt githzerai hands over his precious karach without even looking you in the eye. */
END
IF~ ~THEN REPLY @138 /*Accept the vial. */ DO~~ + g-bbD029.NE3
CHAIN IF~~THEN g-bbD029 g-bbD029.NE3
@140 /*Ikss'odes looks at you as you hand the karach to Dak'kon, who is now trembling with emotion. Not a common sight to behold. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @141 /*Dak'kon picks up the vial with the liquid metal and hums a little tune to himself. He carefully opens the vial and ceremoniously presents his blade. As he pours the contents of the vial over his Karach blade, a rainbow glow ignites at the guard, flows through the length of the blade and intensifies into a vibrant aura as it reaches the tip. The multicolored radiance continues, in a less pronounced capacity, through Dak'kon himself. [BLOOD06] */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @142 /*"The karach sings true. I feel stronger." [DAK103] */
==g-bbD029 @143 /*"And so it is done..." Ikss'odes' eyes flash with tears. "All hope is lost." He runs out of the room. */
END
IF~~THEN REPLY @145 /*"That was well worth it." */ DO~DestroyItem("g-bbi025") EscapeArea() SetGlobal("G-brill_quest","GLOBAL",13) PermanentStatChange("Dakkon",STR,RAISE,2) PermanentStatChange("Dakkon",WIS,RAISE,2) PermanentStatChange("Dakkon",INT,RAISE,2) PermanentStatChange("Dakkon",MAXHITPOINTS,RAISE,10) SetGlobal("G-dakkon_vial","GLOBAL",1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)~ SOLVED_JOURNAL @20081 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.chaoticgoodendalt
@147 /*Ikss'odes looks to Dak'kon with an expression full of newfound hope. Could it be? */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @148 /*"It is not within my power to fix the mind of another. Not when my own mind has not been fully healed." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @149 /*"But..." */
==g-bbD029 @150 /*After Dak'kon's first words, all hope drains from the other gith's scarred and tired face. The moment of hesitation in your companion's voice is enough for a palpable tension to settle over the room. However, upon hearing Dak'kon's inflection change, a glimmer of yearning re-emerges in the other gith's expression.  */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @151 /*"Maybe I can reshape this chaos matter into a gateway you need it to be. If you meditate with me, show me what it looks like and what it should *know*." */
END
IF~~THEN REPLY @153 /*"How about it, Ikss'odes?" */ DO~~ + g-bbD029.ALTYES
IF~~THEN REPLY @154 /*"I don't think that's worth our time, but keep your karach." */ DO~~ + g-bbD029.chaoticgoodend
IF~~THEN REPLY @155 /*"I don't think that's worth our time, but I'm going to tell Brill you were found dead and the vial was gone. I'll pin it on Joseph. It's the perfect lie." */ DO~~ + g-bbD029.chaoticneutralend
IF~~THEN REPLY @156 /*"This is not something I want to get involved with either way." */ DO~~ + g-bbD029.trueneutralend
CHAIN IF~~THEN g-bbD029 g-bbD029.ALTYES
@158 /*"Of course, if we can make that happen!" The gith visibly shakes with excitement. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @159 /*"I shall do everything in my power." */
==g-bbD029 @160 /*Dak'kon sits himself on the filthy floor of the apartment, disregarding its pitiful condition, and urges his kin to follow. As they sit in opposition to each other, Dak'kon leads the other one's hand in which he holds the vial to place it down in the middle between them. After setting it down, he starts chanting some sort of a mantra in the githzerai language. With some apparent difficulty, Ikss'odes joins in. His knowledge of the words is not as flawless as Dak'kon's but it seems that his intention is in the right place. The process lasts for a few minutes, and the chaos matter in the vial starts to change color. However, it is clear that the process is not going smoothly. */
END
IF~~THEN REPLY @162 /*Do not interrupt them. Allow Dak'kon to continue. */ DO~~ + g-bbD029.ritualcontinue
IF~OR(2) Class(Protagonist,Mage) CheckStatGT(Protagonist,18,WIS)~THEN REPLY @163 /*Discretely project your consciousness into the ritual using your magical prowess and attempt to improve the synergy between the two githzerai. */ DO~SetGlobal("g-iksschance","GLOBAL",1)~ + g-bbD029.ritualimprove
IF~~THEN REPLY @164 /*"Having some trouble there?" */ DO~~ + g-bbD029.ritualdisrupt
CHAIN IF~~THEN g-bbD029 g-bbD029.ritualcontinue
@166 /*After a while, Ikss'odes seems to regain his composure. His trembling stops and his words begin to more closely resemble what Dak'kon is chanting. The room begins to fill with a delicate light, projected from a beam of psionic energy created between the minds of the two githzerai. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @167 /*"We are connected. Show me your home. Show me your gate." */
==g-bbD029 @168 /*The colors of the psionic beam repeatedly shift hues as the karach erupts from the vial and stretches to beyond what is physically possible from such a small amount. It swirls wildly in the air, creating a stunningly complex vortex. [BLOOD06] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @169 /*"This is a sight to behold. I am so very glad to be here at this moment." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @170 /*"Attention! Chaos matter detected. Preventative measures initiated." Nordom's gears start whirring wildly as he scuttles to get himself as far as physically possible from the ritual. [MODRO1] */
==g-bbD029 @171 /*The vortex suddenly takes shape. The energy seems to flow from Ikss'odes, then filters through Dak'kon, who in turn shapes the chaos matter into a defined structure. First, it forms a loop, creating empty space within. Then, the string of karach twists and bends into a pattern. The pattern is purely geometrical and intricate, as if the shape of the gate is complicated and unique enough to function as a key to itself. As the pattern fully forms, the enclosure created by it shivers, as if an invisible wall was created within it. */
==g-bbD029 @172 /*"This is it! My home!" Ikss'odes stands and looks into the gateway with awe.  */
END
IF~Global("g-iksschance","GLOBAL",1)~THEN REPLY @174 /*"Go, Ikss'odes, but leave the karach behind. It's useless to you and Brill might still want to hunt you for it." */ DO~~ + g-bbD029.CGendKarach
IF~~THEN REPLY @175 /*"Go, Ikss'odes, you deserve to heal in the privacy of your home." */ DO~~ + g-bbD029.CGend
CHAIN IF~~THEN g-bbD029 g-bbD029.ritualdisrupt
@177 /*"Ngghhh..." His moaning is strained and somewhat distant. Ikss'odes is focusing really hard on the ritual. It might not be wise to distract him. [GITH03] */
END
IF~~THEN REPLY @179 /*Do not interrupt them. Allow Dak'kon to continue. */ DO~~ + g-bbD029.ritualcontinue
IF~OR(2) Class(Protagonist,Mage) CheckStatGT(Protagonist,18,WIS)~THEN REPLY @180 /*Discretely project your consciousness into the ritual using your magical prowess and attempt to strengthen the communication between the two githzerai. */ DO~SetGlobal("g-iksschance","GLOBAL",1)~ + g-bbD029.ritualimprove
IF~~THEN REPLY @181 /*"Hey, I'm talking to you." */ DO~~ + g-bbD029.ritualdisrupt2
CHAIN IF~~THEN g-bbD029 g-bbD029.ritualdisrupt2
@183 /*Ikss'odes looks at you, bewildered. His face seems to be asking you, "Why?" His eyes close and he falls backwards, flat on the floor. He is not moving. [GITHD02] */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @184 /*As karach settles, Dak'kon stands up and goes over to investigate his fellow githzerai. He lowers his head over his kinsman's head and holds his hand. After a few seconds, Dak'kon stands back up and looks at you. "He is gone. Hopefully he *finds* himself where he's gone to. That was unwise of you." */
END
IF~~THEN REPLY @186 /*"Oh. I did not mean to..." */ DO~SetGlobal("g-ikss-end","GLOBAL",2) SetGlobal("G-brill_quest","GLOBAL",12) GiveItem("g-bbi025",Protagonist) Kill("g-bb029")~ SOLVED_JOURNAL @20080 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.ritualimprove
@188 /*As you see the two githzerai struggle to establish a meaningful connection, you attempt to weave a subtle thread of your own magic into their shared stream of consciousness. You are surprised by how easily you can create such a psionic bond, as if you have done this kind of thing before. Your mind melds with Ikss'odes on a superficial level. Out of nowhere, you are suddenly stricken by what you think is a roaring cage of white-hot fire. You flinch for a moment, thinking the room has gone ablaze, but no...  */
=@189 /*These are surface level memories that haunt poor gith every waking hour. Fire searing his skin, both in a sea of flames and within a geometrically impossible burning city that holds a strong stench of the Abyss. Deeper still... You uncover his disdain for Brill, and the slaad's cruel remarks about his physical and mental state. Brill threatens Ikss'odes: if the gith were to flee, the slaad would hunt down his family in Limbo. */
=@190 /*And *there* they are. The precious memories of Limbo. And *there* is the gate. Its design is incredibly intricate, but maybe you can convey this to Dak'kon. */
END
IF~~THEN REPLY @192 /*Focus on the gate. */ DO~AddexperienceParty(100000)~ + g-bbD029.ritualcontinue
CHAIN IF~~THEN g-bbD029 g-bbD029.CGend
@194 /*Ikss'odes smiles at you and walks through the gate, which vibrates wildly and closes itself behind him, leaving an empty vial in front of Dak'kon.  */
END
IF~~THEN REPLY @196 /*"May you find peace, Ikss'odes. Farewell." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",13) AddexperienceParty(20000) CreateVisualEffectObject("EF01TPRT","g-bb029") ActionOverride("g-bb029",DestroySelf())~ SOLVED_JOURNAL @20081 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.CGendKarach
@198 /*Ikss'odes smiles at you. "You are right, friend, I shall leave the unformed karach behind. Take it and do with it what you will. Thank you." He walks through the gate, which vibrates wildly and closes itself behind him, leaving the vial of karach on the floor in front of Dak'kon.  */
END
IF~~THEN REPLY @200 /*"May you find peace, Ikss'odes. Farewell." */ DO~SetGlobal("g-ikss-end","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",12) GiveItem("g-bbi025",Protagonist) AddexperienceParty(32000) CreateVisualEffectObject("EF01TPRT","g-bb029") ActionOverride("g-bb029",DestroySelf())~ SOLVED_JOURNAL @20080 EXIT
CHAIN IF~~THEN g-bbD029 g-bbD029.unkind
@202 /*The emaciated, scarred gith clings even tighter to the dirty wall. "No, you do not understand. I am not the villain here, I can explain! The karach is mine!" */
END
IF~~THEN REPLY @204 /*Attack. "No. *I* am the villain here." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-ikss_violent","GLOBAL",1)~ EXIT
IF~~THEN REPLY @205 /*"I'm not here to negotiate, and you need to hand over what you took. Now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD029.lawfulevilend
IF~~THEN REPLY @206 /*"Very well. Explain." */ DO~~ + g-bbD029.story
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @207 /*Look at Dak'kon. "Karach? Maybe you can use this karach for yourself?" */ DO~IncrementGlobal("GOOD","GLOBAL",-2)~ + g-bbD029.neutralevilend
CHAIN IF~~THEN g-bbD029 g-bbD029.kindforce
@209 /*The gith's demeanor reverts the instant he hears the name 'Brill'. "I am not a thief. The karach is not his possession. I can explain!" */
END
IF~~THEN REPLY @211 /*"I'm not here to negotiate, and you need to hand over what you took. Now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD029.lawfulevilend
IF~~THEN REPLY @212 /*"Very well. Explain." */ DO~~ + g-bbD029.story
IF~~THEN REPLY @213 /*"On second thought, this is not something I want to get involved with either way." */ DO~~ + g-bbD029.trueneutralend