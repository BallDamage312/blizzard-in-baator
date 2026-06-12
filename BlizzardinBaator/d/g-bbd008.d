BEGIN g-bbD008
CHAIN IF~NumTimesTalkedToGT(0) Global("G-brill_debt","GLOBAL",1) !CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") ~THEN g-bbD008 g-bbD008.debtstart
@0 /*Brill sees you approaching and immediately reaches out his hand in expectation. */
=@1 /*"Your debt is nooooooaw 2000 copper pieces." */
END
IF~ PartyGoldGT(1999)~THEN REPLY @3 /*"Here, take it." */ DO~TakePartyGold(2000) IncrementGlobal("G-brill_approve","GLOBAL",200) SetGlobal("G-brill_debt","GLOBAL",0)~ + g-bbD008.paiddebt
IF~ !PartyGoldGT(1999)~THEN REPLY @4 /*"I don't have it yet." */ DO~~ + g-bbD008.baddebt
IF~CheckStatGT(Protagonist,20,CHR)~THEN REPLY @5 /*"Listen. We both know that cup was worthless. I have serious business to attend to." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",200) SetGlobal("G-brill_debt","GLOBAL",0)~ + g-bbD008.gooddebt
IF~~THEN REPLY @6 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") ~THEN g-bbD008 g-bbD008.glabrezu
@8 /*"Pike oooaf, demon. Go to the Oooarsman, where you're welcome. */
EXIT
CHAIN IF~NumTimesTalkedTo(0) Global("G-brill_attention","GLOBAL",0)~THEN g-bbD008 g-bbD008.start
@14 /*Behind the counter of the Rivergate tavern stands a tall, broad, toad-like humanoid. His skin is a wet, deep swamp green, covered with many colorful warts. He is busy wiping a bronze beer mug with a greasy rag. He doesn't seem to be paying you any attention. There is a dirty wooden plaque on the bar. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @15 /*"I urge you not to interact with this one... The slaadi do not *know* themselves and only bring destruction to the multiverse." */
END
IF~~THEN REPLY @17 /*"Hey, can I get some service?" */ DO~~ + g-bbD008.servf
IF~~THEN REPLY @18 /*Inspect the wooden plaque on the counter. */ DO~~ + g-bbD008.plaque
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @19 /*Truth: "Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @20 /*Joke: "Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @21 /*Joke: "Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @22 /*"Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @23 /*"Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @24 /*"Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~GlobalLT("LAW","GLOBAL",-5)~THEN REPLY @25 /*You feel the essence of chaos emanating from the creature. You know it is a slaad. "Brother in chaos, nice to meet you." */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",2)~ + g-bbD008.chaos
CHAIN IF~NumTimesTalkedToGT(0) Global("G-brill_attention","GLOBAL",0)~THEN g-bbD008 g-bbD008.startgt
@27 /*Behind the counter of the Rivergate tavern, just as before, stands a tall, broad, toad-like humanoid. His skin is a wet, deep swamp green, covered with many colorful warts. He is busy wiping another beer mug. He doesn't seem to be paying you any attention. There is a dirty wooden plaque on the bar. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @28 /*"I urge you not to interact with this one... The slaadi do not *know* themselves and only bring destruction to the multiverse." */
END
IF~~THEN REPLY @30 /*"Hey, can I get some service?" */ DO~~ + g-bbD008.servf
IF~~THEN REPLY @31 /*Inspect the wooden plaque on the counter. */ DO~~ + g-bbD008.plaque
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @32 /*Truth: "Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @33 /*Joke: "Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @34 /*Joke: "Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @35 /*"Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @36 /*"Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @37 /*"Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~GlobalLT("LAW","GLOBAL",-1)~THEN REPLY @38 /*You feel the essence of chaos emanating from the creature. You know it is a slaad. "Brother in chaos, nice to meet you." */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",2)~ + g-bbD008.chaos
CHAIN IF~NumTimesTalkedToGT(0) Global("G-brill_attention","GLOBAL",1)~THEN g-bbD008 g-bbD008.start2
@40 /*Brill the slaad looks at you with his wide eyes. "Whooat d'ya want?" */
END
IF~Global("G-brill_quest","GLOBAL",1)~THEN REPLY @42 /*"Hey. I changed my mind. I want to help you with your stolen possession." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",2)~ SOLVED_JOURNAL @20070 + g-bbD008.restartquest
IF~PartyHasItem("g-bbi025")~THEN REPLY @43 /*"I have your possession. I didn't think it would be a vial of karach..." */ DO~~ + g-bbD008.questfinish
IF~Global("G-brill_quest","GLOBAL",13)~THEN REPLY @44 /*"I cannot return your karach. It is gone." */ DO~~ + g-bbD008.questfinish2
IF~Global("G-brill_quest","GLOBAL",14) CheckStatGT(Protagonist,15,CHR)~THEN REPLY @45 /*"You won't believe it, Brill." You lower your voice to a whisper. "Black Joseph took your karach." */ DO~~ + g-bbD008.questfinish3
IF~Global("G-brill_quest","GLOBAL",14) !CheckStatGT(Protagonist,15,CHR)~THEN REPLY @46 /*"You won't believe it, Brill." You lower your voice to a whisper. "Black Joseph took your karach." */ DO~~ + g-bbD008.questfinish3f
IF~Global("G-brill_quest","GLOBAL",15)~THEN REPLY @47 /*"I have decided not to retrieve your possession. Any other ideas on how I can get you to help me?" */ DO~~ + g-bbD008.questfinish4
IF~GlobalGT("G-brill_quest","GLOBAL",2) GlobalLT("G-brill_quest","GLOBAL",12)~THEN REPLY @48 /*"I am still working to find your possession." */ DO~~ + g-bbD008.meantime
IF~~THEN REPLY @49 /*Inspect the wooden plaque on the counter. */ DO~~ + g-bbD008.plaque
IF~Global("G-rivergateportal","GLOBAL",1) GlobalLT("G-brill_approve","GLOBAL",0) Global("G-brill_quest","GLOBAL",0) ~THEN REPLY @50 /*"I tried to go over there to talk to Joseph, but... I ended up in the Ditch. How come?" */ DO~~ + g-bbD008.portaltrapF
IF~Global("G-rivergateportal","GLOBAL",1) !GlobalLT("G-brill_approve","GLOBAL",0) Global("G-brill_quest","GLOBAL",0) ~THEN REPLY @51 /*"I tried to go over there to talk to Joseph, but... I ended up in the Ditch. How come?" */ DO~~ + g-bbD008.portaltrapS
IF~~THEN REPLY @52 /*"I have some questions." */ DO~~ + g-bbD008.q
IF~Global("G-grillrooms","GLOBAL",1)~THEN REPLY @54 /*"I would like to rest on your couch."  */ DO~StartStore("g-bb#007",LastTalkedToBy()) ~ EXIT
IF~~THEN REPLY @55 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.servf
@57 /*He doesn't answer. Instead, he bumps his elbow against a wooden plaque on the counter. */
END
IF~~THEN REPLY @59 /*Inspect the wooden plaque on the counter. */ DO~~ + g-bbD008.plaque
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @60 /*Truth: "Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @61 /*Joke: "Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~OR(2) CheckStatGT(Protagonist,14,INT) InParty("Dakkon")~THEN REPLY @62 /*Joke: "Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @63 /*"Hey, you're a slaad, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.slaad
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @64 /*"Hey, you're a hezrou, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.hezrou
IF~!CheckStatGT(Protagonist,14,INT) !InParty("Dakkon")~THEN REPLY @65 /*"Hey, you're a hydroloth, aren't you?" */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bullywug
IF~GlobalLT("LAW","GLOBAL",-1)~THEN REPLY @66 /*You feel the essence of chaos emanating from the creature. You know it is a slaad. "Brother in chaos, nice to meet you." */ DO~SetGlobal("G-brill_attention","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",2)~ + g-bbD008.chaos
IF~~THEN REPLY @67 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.plaque
@69 /*The plaque says: "Ask Brill for one of the following," and lists a whole variety of drinks. They each seem to cost ten copper pieces. */
END
IF~!PartyGoldGT(9)~THEN REPLY @71 /*You cannot afford any of these. Leave the counter. */ DO~~ EXIT
IF~CheckStatGT(Protagonist,14,STR) PartyGoldGT(9)~THEN REPLY @72 /*"I'll have the... Rutterkin Rum." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.rr1
IF~!CheckStatGT(Protagonist,14,STR) PartyGoldGT(9)~THEN REPLY @73 /*"I'll have the... Rutterkin Rum." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.rr2
IF~CheckStatGT(Protagonist,13,DEX) PartyGoldGT(9)~THEN REPLY @74 /*"I'll have the... Danger Gin." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.gg1
IF~!CheckStatGT(Protagonist,13,DEX) PartyGoldGT(9)~THEN REPLY @75 /*"I'll have the... Danger Gin." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.gg2
IF~CheckStatGT(Protagonist,12,INT) PartyGoldGT(9) Global("G-brill_rat","GLOBAL",0)~THEN REPLY @76 /*"I'll have the... uhh... Rat Vomit." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.sr1
IF~!CheckStatGT(Protagonist,12,INT) PartyGoldGT(9) Global("G-brill_rat","GLOBAL",0)~THEN REPLY @77 /*"I'll have the... uhh... Rat Vomit." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.sr2
IF~CheckStatGT(Protagonist,15,CON) PartyGoldGT(9)~THEN REPLY @78 /*"I'll have the... Ditch Cocktail." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.kk1
IF~!CheckStatGT(Protagonist,15,CON) PartyGoldGT(9)~THEN REPLY @79 /*"I'll have the... Ditch Cocktail." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.kk2
IF~CheckStatGT(Protagonist,15,CHR) PartyGoldGT(9) Global("G-brill_kontuaru","GLOBAL",0)~THEN REPLY @80 /*"I'll have the... Lady's Tear." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1) SetGlobal("G-brill_kontuaru","GLOBAL",1)~ + g-bbD008.lp1
IF~!CheckStatGT(Protagonist,15,CHR) PartyGoldGT(9) Global("G-brill_kontuaru","GLOBAL",0)~THEN REPLY @81 /*"I'll have the... Lady's Tear." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1) SetGlobal("G-brill_kontuaru","GLOBAL",1)~ + g-bbD008.lp2
IF~PartyGoldGT(9) Global("G-brill_kontuaru","GLOBAL",1)~THEN REPLY @82 /*"I'll have the Lady's Tear again." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.lp3
IF~CheckStatGT(Protagonist,15,WIS) PartyGoldGT(9)~THEN REPLY @83 /*"I'll have the... Pandemonium Pint." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.pp1
IF~!CheckStatGT(Protagonist,15,WIS) PartyGoldGT(9)~THEN REPLY @84 /*"I'll have the... Pandemonium Pint." */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.pp2
IF~GlobalLT("LAW","GLOBAL",0) Global("G-sour","GLOBAL",0) PartyGoldGT(9)~THEN REPLY @85 /*"I'll have the Spawning Stone Sour, of course" */ DO~TakePartyGold(10) IncrementGlobal("G-brill_approve","GLOBAL",1) SetGlobal("G-sour","GLOBAL",1) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.sss1
IF~GlobalLT("LAW","GLOBAL",0) Global("G-sour","GLOBAL",1) PartyGoldGT(9)~THEN REPLY @86 /*"I'll have the Spawning Stone Sour, of course" */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.sss1re
IF~!GlobalLT("LAW","GLOBAL",0) PartyGoldGT(9)~THEN REPLY @87 /*"I'll have the... Spawning Stone Sour?" */ DO~TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1)~ + g-bbD008.sss2
IF~PartyGoldGT(9) Global("G-brill_water","GLOBAL",0)~THEN REPLY @88 /*"I'll have some... water." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-1) TakePartyGold(10) SetGlobal("G-brill_attention","GLOBAL",1) SetGlobal("G-brill_water","GLOBAL",1)~ + g-bbD008.water
IF~Global("G-brill_attention","GLOBAL",0)~THEN REPLY @89 /*Try to get Brill's attention. */ DO~~ + g-bbD008.servf
IF~GlobalGT("G-brill_attention","GLOBAL",0)~THEN REPLY @90 /*Try to get Brill's attention. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @91 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sss1
@93 /*Brill seems impressed by your confidence. "Coooaaming right up." */
=@94 /*The drink arrives quickly. It looks like a whirlpool of colorful energies. You did not expect something so fancy in such a shady place. It smells of strong liquor with a multitude of other scents that mix together in a crazy cauldron of sensations. */
=@95 /*When you drink it, you get a feeling of elation, almost euphoria, as if a vibrating song in the midst of a storm of claws caresses your skin. The drink ends quickly, leaving you... satisfied. */
END
IF~~THEN REPLY @97 /*"Whoa..." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD008.sss1brill
CHAIN IF~~THEN g-bbD008 g-bbD008.sss1brill
@99 /*Brill seems to have been watching you drink it very carefully. "Hoooaaw did you like it, cutter?" */
END
IF~~THEN REPLY @101 /*"The chaos matter went through me and I... loved it." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.sss1brill1
IF~~THEN REPLY @102 /*"The chaos matter went through me and it was... horrible." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-2) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD008.sss1brill2
IF~~THEN REPLY @103 /*"I'm just... going to look at the plaque again." */ DO~~ + g-bbD008.plaque
IF~GlobalGT("G-brill_attention","GLOBAL",0)~THEN REPLY @104 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @105 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sss1brill1
@107 /*Brill croaks with glee. "Good answer, cutter." */
END
IF~GlobalGT("G-brill_attention","GLOBAL",0)~THEN REPLY @109 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @110 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sss1brill2
@112 /*Brill looks sad and a little angry. */
END
IF~GlobalGT("G-brill_attention","GLOBAL",0)~THEN REPLY @114 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @115 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sss1re
@117 /*Brill seems satisfied with your choice again. "Coooaming right up." */
=@118 /*The drink arrives quickly. It looks like a whirlpool of colorful energies. You did not expect something so fancy in such a shady place. It smells of strong liquor with a multitude of other scents that mix together in a crazy cauldron of sensations. */
=@119 /*When you drink it, you still feel like you're in a storm of emotions, but it's not quite the same as the first time. */
END
IF~~THEN REPLY @121 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @122 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sss2
@124 /*Brill seems impressed by your confidence. "Coooaaming right up." */
=@125 /*The drink arrives quickly. It looks like a whirlpool of colorful energies. You did not expect something so fancy in such a shady place. It smells of strong liquor with a multitude of other scents that mix together in a crazy cauldron of sensations. */
=@126 /*When you drink it, your stomach reacts violently and you fall to the ground, retching. Your mind is filled with chaotic visions of a hoof-shaped rock, but the image flickers too much to imprint any meaning on you. */
=@127 /*"Noooat your drink, huh?" Brill laughs. */
END
IF~~THEN REPLY @129 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @130 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.rr1
@132 /*Brill seems a bit surprised. "Coooaaming right up." */
=@133 /*The drink arrives quickly. It is gray and cloudy with a hint of brownish red that looks a bit like blood. It does not look very appetizing. */
=@134 /*When you drink it, you have to use all your strength to keep going. It burns your mouth and is repulsive in every sense of the word. */
=@135 /*Brill laughs. "You kept it down. Impressive. That is a tooooaahnar'ri drink." */
END
IF~~THEN REPLY @137 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @138 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.rr2
@140 /*Brill seems a bit surprised. "Coooaaming right up." */
=@141 /*The drink arrives quickly. It is gray and cloudy with a hint of brownish red that looks a bit like blood. It does not look very appetizing. */
=@142 /*When you drink it, you immediately spit it out on the bar. It leaves a burning sensation in your mouth and is repulsive in every sense of the word. */
=@143 /*Brill doesn't seem to care about the mess and laughs. "This is a tooooaahnar'ri drink. Not for the likes of you." */
END
IF~~THEN REPLY @145 /*"A heads-up would have been nice. Let's talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @146 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.gg1
@148 /*Brill seems a bit unsure. "Coooaaming right up." */
=@149 /*The drink arrives quickly. It looks tame and strangely normal compared to the other drinks you see around. You lift it to your mouth. */
=@150 /*Just as you're about to drink it, it starts some kind of reaction. You quickly pour it down your gullet and it is very strong. You have a powerful adrenaline rush for a second, as if you were getting ready to face off against a horde of demons. After a longer moment, you're calm, but there's still a thrill of danger running through your veins. */
=@151 /*Brill laughs. "You act fast, stranger. Good for you." */
END
IF~~THEN REPLY @153 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @154 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.gg2
@156 /*Brill seems a bit unsure. "Coooaaming right up." */
=@157 /*The drink arrives quickly. It looks tame and strangely normal compared to the other drinks you see around. You lift it to your mouth. */
=@158 /*Just as you're about to drink it, it starts some kind of reaction. You hesitate, and the drink explodes in a cloud of smoke. Burning alcohol splashes into your eyes. You close them and let out a quick cry. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @159 /*Annah's hands immediately reach for her punch daggers. "Ye litt'l-" */
==g-bbD008 @160 /*Brill laughs. "Yooouuaar slow, Stranger. Drink is coooalled *DANGER GIN*, what'dya expect?" */
END
IF~~THEN REPLY @162 /*Accept your humiliation and get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @163 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @164 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sr1
@166 /*Brill grins. "Coooaaming right up." */
=@167 /*The drink arrives quickly. It is so disgusting that you quickly realize it is actually rat vomit... or something very similar. */
=@168 /*You put the cup back on the counter. */
END
IF~~THEN REPLY @170 /*"I am not drinking *that*! This is not even a drink." */ DO~SetGlobal("G-brill_rat","GLOBAL",1) AddexperienceParty(20000) IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.sr1a
CHAIN IF~~THEN g-bbD008 g-bbD008.sr1a
@172 /*Brill looks you dead in the eye with an angry expression, then bursts out laughing. "Yes, mammaloid, yes. You're smooooarter than most who come in here." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @173 /*"This is quite a test of intuition..." */
==g-bbD008 @174 /*"You're ooooaall right." */
END
IF~~THEN REPLY @176 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @177 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.sr2
@179 /*Brill grins. "Coooaaming right up." */
=@180 /*The drink arrives quickly. It is surprisingly viscous and thick, and it also contains what appear to be chunks. It has a strong, bittersweet smell. */
=@181 /*You start to drink it, and in a matter of seconds, the contents of your stomach find their way violently out, onto the floor in front of you. */
END
IF~~THEN REPLY @183 /*"What..." */ DO~SetGlobal("G-brill_rat","GLOBAL",1) IncrementGlobal("G-brill_approve","GLOBAL",1) PermanentStatChange(Protagonist,CON,LOWER,1)~ + g-bbD008.sr2a
CHAIN IF~~THEN g-bbD008 g-bbD008.sr2a
@185 /*Brill looks you dead in the eye with a furious expression and then explodes into laughter. "No, mammaloid, no. *RAT VOMIT* is not a real drink. You are sooo dooooamb." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @186 /*"This is quite a test of intuition..." */
==g-bbD008 @187 /*Brill cannot control himself and just continues to laugh. */
END
IF~~THEN REPLY @189 /*Accept your humiliation and get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @190 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @191 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.kk1
@193 /*Brill gets to work. "Ooooaaalright." */
=@194 /*The drink arrives quickly. It looks relatively normal, though a bit frothy, and has a strong but human-friendly smell. */
=@195 /*You start to drink it and it is actually quite good. It's very strong, as you suspected, but it doesn't cause any additional reactions. You reckon that after a few of these you might start to get *very* drunk. */
=@196 /*Brill seems a little impressed with how you handled it. */
END
IF~~THEN REPLY @198 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @199 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.kk2
@201 /*Brill gets to work. "Ooooaaalright." */
=@202 /*The drink arrives quickly. It looks relatively normal, though a bit frothy, and has a strong but human-friendly smell. */
=@203 /*You begin to drink it, and despite your immortal-grade liquor tolerance, it affects you almost immediately. You feel as if you were pouring a mixture of all the strongest liquors known to man into yourself. You blink, set the drink down, and lose your footing, sliding to the tavern floor. */
=@204 /*"Are you sure you want to be in my tavern, berk?" Brill taunts you. */
END
IF~~THEN REPLY @206 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @207 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.lp1
@209 /*Brill gets to work. "Ooooaaalright." */
=@210 /*The drink arrives quickly. It looks perfectly clear, like ice-cold water. It has no smell. */
=@211 /*You start to drink it, and it immediately begins to overwhelm you with emotions. You collect yourself and manage to filter them out one by one. Pain. Loss. Understanding. Power. A sense of responsibility. Influence. Each one tries to tear into your essence. */
END
IF~~THEN REPLY @213 /*Focus on Pain. */ DO~PermanentStatChange(Protagonist,CON,RAISE,2)~ + g-bbD008.lp1a
IF~~THEN REPLY @214 /*Focus on Loss. */ DO~AddexperienceParty(60000)~ + g-bbD008.lp1a
IF~~THEN REPLY @215 /*Focus on Understanding. */ DO~PermanentStatChange(Protagonist,INT,RAISE,2)~ + g-bbD008.lp1a
IF~~THEN REPLY @216 /*Focus on Power. */ DO~PermanentStatChange(Protagonist,STR,RAISE,2)~ + g-bbD008.lp1a
IF~~THEN REPLY @217 /*Focus on Responsibility. */ DO~PermanentStatChange(Protagonist,WIS,RAISE,2)~ + g-bbD008.lp1a
IF~~THEN REPLY @218 /*Focus on Influence. */ DO~PermanentStatChange(Protagonist,CHR,RAISE,2)~ + g-bbD008.lp1a
CHAIN IF~~THEN g-bbD008 g-bbD008.lp2
@220 /*Brill gets to work. "Ooooaaalright." */
=@221 /*The drink arrives quickly. It looks perfectly clear, like ice-cold water. It has no smell. */
=@222 /*You start to drink it, and it immediately begins to overwhelm you with emotions. You try to collect yourself, but the flood of emotions is just too strong, and you quickly lose track of what's happening. */
=@223 /*"You aaaalright? This one has some uuuoooahnpredictable effects the first time you try it." */
END
IF~~THEN REPLY @225 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @226 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.lp3
@228 /*Brill gets to work. "Ooooaaalright." */
=@229 /*The drink arrives quickly. It looks perfectly clear, like ice-cold water. It has no smell. */
=@230 /*You start to drink it, but it no longer has the same effect. It's mostly tasteless. */
=@231 /*Brill sighs. "It neeeeover tastes the same after the first tooooime." */
END
IF~~THEN REPLY @233 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @234 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.lp1a
@236 /*You seem changed, somehow improved, by sorting through the torrent of emotions flowing from the chalice into your essence. Brill looks at you with wonder. */
=@237 /*"Yeoooooah. This has some uuuoooahnpredictable effects the first time you try it." */
END
IF~~THEN REPLY @241 /*Get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @242 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.pp1
@244 /*Brill gets to work. "Ooone Pandemonium-Pint cooooaaming up." */
=@245 /*The drink arrives quickly. It is a thick, pitch-black, yeasty brew. It looks like a strong, dark ale. */
=@246 /*You start to drink it, and it doesn't taste very good, but it doesn't seem to have any side effects. Suddenly, a cold shiver runs down your spine leaving you much more refreshed than you expected. */
=@247 /*"This is very popular with the looooahcals," Brill comments. */
END
IF~~THEN REPLY @249 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @250 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.pp2
@252 /*Brill gets to work. "Ooone Pandemonium-Pint cooooaaming up." */
=@253 /*The drink arrives quickly. It is a thick, pitch-black, yeasty brew. It looks like a strong, dark ale. */
=@254 /*You start to drink it, and it doesn't taste very good, but it doesn't seem to have any side effects. Suddenly, a cold shiver runs down your spine and makes you shake uncontrollably. You drop the mug on the floor where it shatters. */
=@255 /*"This will cost you. That was my best mug." Brill seems displeased. */
END
IF~ PartyGoldGT(19)~THEN REPLY @257 /*Pay for the broken mug. (20) */ DO~TakePartyGold(20)~ + g-bbD008.pppay
IF~~THEN REPLY @258 /*"I won't pay, it was the pint's fault!" */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-1)~ + g-bbD008.ppfault
IF~!PartyGoldGT(19)~THEN REPLY @259 /*"I don't have that much money." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-180) SetGlobal("G-brill_debt","GLOBAL",1)~ + g-bbD008.pppoor
IF~PartyGoldGT(19)~THEN REPLY @260 /*Lie: "I don't have that much money." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-180) SetGlobal("G-brill_debt","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD008.pppoor
CHAIN IF~~THEN g-bbD008 g-bbD008.pppay
@262 /*Brill takes your money and croaks contentedly. */
END
IF~~THEN REPLY @264 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @265 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.ppfault
@267 /*Brill looks at you with disappointment and shrugs. */
END
IF~~THEN REPLY @269 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @270 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.pppoor
@272 /*Brill looks at you, his eyes shining. "You are noooooaaaw in my debt." */
END
IF~~THEN REPLY @274 /*"I'll pay it back, I promise." */ DO~~ EXIT
IF~~THEN REPLY @275 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.paiddebt
@277 /*Brill is very happy with that. He takes your money and croaks contentedly. */
END
IF~~THEN REPLY @279 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @280 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.baddebt
@282 /*Brill frowns. "No money, no business. Goooooet me my money." */
END
IF~~THEN REPLY @284 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.gooddebt
@286 /*Brill seems to think about it for a moment. "Sure, basher. Whooooat's on your mind?" */
END
IF~~THEN REPLY @288 /*"Brill, we need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @289 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.slaad
@291 /*Brill smiles, revealing an uneven row of wide, triangular, but seemingly sharp teeth. "Proud to be." */
END
IF~~THEN REPLY @293 /*"We need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @294 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.hezrou
@296 /*Brill shrugs. "No, a slaad. But I get mistaken for ooooone all the time because of my ferocity." */
END
IF~~THEN REPLY @298 /*"We need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @299 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.bullywug
@301 /*Brill slams the mug he was cleaning into the bar, shattering it into a thousand pieces. "I'm a whooooat?" */
END
IF~~THEN REPLY @303 /*"Hydroloth, a kind of yugo-" */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.bully2
IF~~THEN REPLY @304 /*"Sorry, I was clearly mistaken!" Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.bully2
@306 /*Brill's arms shake with anger as he reveals an uneven row of sharp teeth. "I'll give you three seconds to leeeeaave." */
END
IF~~THEN REPLY @308 /*"But wait, aren't you-" */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @309 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.chaos
@311 /*Brill stops what he's doing and inspects you. "A man of rare refinement, I see." */
END
IF~~THEN REPLY @313 /*"Indeed. We need to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @314 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.water
@316 /*Brill scoffs. "Boooaald choice." He disappears into the back of the building. */
=@317 /*The glass comes after a long wait. The water does not look clear. In fact, it looks like Brill just went outside and drew it straight from the Ditch. */
END
IF~CheckStatGT(Protagonist,15,WIS)~THEN REPLY @319 /*"Is this water from the Ditch?" */ DO~~ + g-bbD008.water1a
IF~!CheckStatGT(Protagonist,15,WIS)~THEN REPLY @320 /*"Is this water from the Ditch?" */ DO~~ + g-bbD008.water1b
IF~~THEN REPLY @321 /*Drink it. */ DO~~ + g-bbD008.water2
CHAIN IF~~THEN g-bbD008 g-bbD008.water1a
@323 /*Brill looks directly at you. "Nooooah." He is clearly *lying*. */
END
IF~~THEN REPLY @325 /*Drink it. */ DO~IncrementGlobal("G-brill_approve","GLOBAL",2)~ + g-bbD008.water2
IF~!CheckStatGT(Protagonist,15,DEX)~THEN REPLY @326 /*Pretend to drink it. */ DO~~ + g-bbD008.water1a1f
IF~CheckStatGT(Protagonist,15,DEX)~THEN REPLY @327 /*Pretend to drink it. */ DO~~ + g-bbD008.water1a1s
IF~~THEN REPLY @328 /*Place the glass on the counter. */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.water3
IF~~THEN REPLY @329 /*Pour the water onto the floor. */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD008.water4
CHAIN IF~~THEN g-bbD008 g-bbD008.water1b
@331 /*Brill looks directly at you. "Nooooah." He seems trustworthy. */
END
IF~~THEN REPLY @333 /*Drink it. */ DO~~ + g-bbD008.water2
IF~~THEN REPLY @334 /*Place the glass on the counter. */ DO~IncrementGlobal("G-brill_approve","GLOBAL",-2)~ + g-bbD008.water3
IF~~THEN REPLY @335 /*Pour the water onto the floor. */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD008.water4
CHAIN IF~~THEN g-bbD008 g-bbD008.water2
@337 /*After taking a sip of the water, you feel it burn your throat and you immediately spit it out. Brill bursts out laughing. Everyone else in the tavern turns to see what just happened at the bar. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @338 /*"Been ther'." */
==g-bbd008 @339 /*"Loooovely." */
END
IF~~THEN REPLY @341 /*Accept your humiliation and get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @342 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @343 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.water3
@345 /*Brill leans over the counter to get really close to you. "Coward."  */
END
IF~~THEN REPLY @347 /*Pick it up and drink it. */ DO~~ + g-bbD008.water2
IF~~THEN REPLY @348 /*Accept the insult and get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @349 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @350 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.water1a1f
@352 /*You try to pretend to drink the glass and stealthily pour it down your satchel. Unfortunately, the water is much thicker than you expected and you end up spilling it all over yourself. */
=@353 /*Brill bursts out laughing. Everyone else in the tavern turns to see what just happened at the bar. */
END
IF~~THEN REPLY @355 /*Accept your humiliation and get back to Brill. */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @356 /*Attack the slaad. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @357 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.water1a1s
@359 /*You pretend to drink the glass and stealthily pour it down your satchel. Brill does not seem to suspect anything. */
=@360 /*He waits in anticipation for some reaction but nothing happens. "You are one *TOOAAUGH* son of a berk, aren't you?" */
END
IF~~THEN REPLY @362 /*"Indeed. Let us talk." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1)~ + g-bbD008.start2
CHAIN IF~~THEN g-bbD008 g-bbD008.water4
@364 /*You pour the water straight onto the floor and look Brill dead in the eye. He looks at the scene in amazement, then starts to cheer. */
=@365 /*"OOoooah, I like *THAT* stranger." He roars with laughter. */
END
IF~~THEN REPLY @367 /*"I like you too, Brill. Let us talk." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",5)~ + g-bbD008.start2
CHAIN IF~~THEN g-bbD008 g-bbD008.qf
@369 /*Brill gives you a sideways glance. "I don't trust you enough to answer your questions, berk." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @370 /*"WE are the untrustworthy ones in this seedy place, let that sink in, chief." */
END
IF~~THEN REPLY @372 /*"Let's just talk, then." */ DO~~ + g-bbD008.start2
CHAIN IF~~THEN g-bbD008 g-bbD008.q
@374 /*"What do you want to know?" */
END
IF~Global("G-rivergateportal","GLOBAL",1) !GlobalGT("G-brill_approve","GLOBAL",2) Global("G-brill_quest","GLOBAL",0) ~THEN REPLY @376 /*"I tried to go over there to talk to Joseph, but... I ended up in the Ditch. How come?" */ DO~~ + g-bbD008.portaltrapF
IF~Global("G-rivergateportal","GLOBAL",1) GlobalGT("G-brill_approve","GLOBAL",2) Global("G-brill_quest","GLOBAL",0) ~THEN REPLY @377 /*"I tried to go over there to talk to Joseph, but... I ended up in the Ditch. How come?" */ DO~~ + g-bbD008.portaltrapS
IF~~THEN REPLY @378 /*"What is this place?" */ DO~~ + g-bbD008.rgate
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @379 /*"I heard Rivergate wasn't originally built here?" */ DO~~ + g-bbD008.moved
IF~Global("G-know_joseph","GLOBAL",1) !Dead("g-bb005") ~THEN REPLY @380 /*"What can you tell me about Joseph?" */ DO~~ + g-bbD008.joseph
IF~~THEN REPLY @381 /*"Tell me about slaadi." */ DO~~ + g-bbD008.slaadi
IF~OR(2) Global("G-triplerquest","GLOBAL",2) Global("G-triplerquest","GLOBAL",3) ~THEN REPLY @382 /*"Do you know anything about the skeleton obsessed with the number three?" */ DO~~ + g-bbD008.tripler
IF~Global("G-know_adonis","GLOBAL",1)~THEN REPLY @383 /*"Tell me about that Harmonium guard." */ DO~~ + g-bbD008.adonis
IF~Global("G-know_akershus","GLOBAL",1)~THEN REPLY @384 /*"Tell me about the bard." */ DO~~ + g-bbD008.akershus
IF~Global("G-adrean_news","GLOBAL",1) Global("G-bbmain","GLOBAL",4)~THEN REPLY @385 /*"Tell me about the imp." */ DO~~ + g-bbD008.prod
IF~~THEN REPLY @386 /*"Let's just talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @387 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.tripler
@389 /*"They call him Tripler. For reasons yoooou already know. What else can I say? Everyone has their qooouirks. At least he pays well and doesn't cause any troooouble. Sits here every afternoon. " */
END
IF~~THEN REPLY @391 /*

"Surely you must know something more." */ DO~SetGlobal("G-triplerquest","GLOBAL",4) AddexperienceParty(8000)~ SOLVED_JOURNAL @20231 + g-bbD008.tripler2
IF~~THEN REPLY @392 /*"I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @393 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.tripler2
@395 /*"I don't know. Maybe ask about him in the Oaaaarsman, Zegonz Vlaric knows everything about aaanybooooudy." */
END
IF~~THEN REPLY @397 /*"Zegonz? Thanks. I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @398 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.rgate
@400 /*"Rivergoooaate tavern." */
END
IF~~THEN REPLY @402 /*"Is that... it?" */ DO~~ + g-bbD008.rgate2
IF~~THEN REPLY @403 /*"I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @404 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.rgate2
@406 /*"Yee." */
END
IF~~THEN REPLY @408 /*"Do you have any rooms?" */ DO~SetGlobal("G-grillrooms","GLOBAL",1)~ + g-bbD008.rgate3
IF~~THEN REPLY @409 /*"I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @410 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.rgate3
@412 /*"You cooooan sleep on the couch." */
END
IF~~THEN REPLY @414 /*"I would like to rest here then." */ DO~StartStore("g-bb#007",LastTalkedToBy()) ~ EXIT
IF~~THEN REPLY @415 /*"I guess I have another question." */ DO~~ + g-bbD008.q
CHAIN IF~~THEN g-bbD008 g-bbD008.moved
@417 /*"Yeaa. We opened it back on Scab Woooaay, but it seems the Lady did not like it there, so she hoooooad it moved 'ere." */
END
IF~~THEN REPLY @419 /*"She moved it... closer to a river?" */ DO~~ + g-bbD008.moved2
IF~~THEN REPLY @420 /*"Alright. I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @421 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.moved2
@423 /*"Maybe she does have a sense of humor ooooaafter all." */
END
IF~~THEN REPLY @425 /*"Maybe... I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @426 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.joseph
@428 /*"Don't knoooaw any Joseph." */
END
IF~~THEN REPLY @430 /*"But... he's standing right there." */ DO~~ + g-bbD008.joseph2
IF~~THEN REPLY @431 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @432 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.joseph2
@434 /*Brill looks around the Rivergate tavern, including at Joseph himself. "Where?" */
END
IF~~THEN REPLY @436 /*Point your finger at Joseph. "Right. There." */ DO~SetGlobal("G-know_akershus","GLOBAL",1)~ + g-bbD008.joseph3
IF~~THEN REPLY @437 /*"Alright... I guess I have another question." */ DO~SetGlobal("G-know_akershus","GLOBAL",1)~ + g-bbD008.q
IF~~THEN REPLY @438 /*Leave the counter. */ DO~SetGlobal("G-know_akershus","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.joseph3
@440 /*Brill squints and pretends to look very hard at where you're pointing. "I don't see anyoooooaane there." */
==g-bbD007 IF~NearbyDialog("g-bbD007")~THEN @441 /*You hear a voice from across the room. "I would advise you to drop it, friend." */
END
IF~~THEN REPLY @443 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @444 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.slaadi
@446 /*Brill takes a deep breath. "I have been away from my tribe too long to eeeeaaxplain. I've become... tame" */
END
IF~~THEN REPLY @448 /*"What do you mean, tame?" */ DO~~ + g-bbD008.slaadi2
IF~~THEN REPLY @449 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @450 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.slaadi2
@452 /*Brill leans in towards you. "You are not eaten, we exchoooange words. I am tame." */
END
IF~~THEN REPLY @454 /*"I see. Have you eaten many... people?" */ DO~~ + g-bbD008.slaadi3
IF~~THEN REPLY @455 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @456 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.slaadi3
@458 /*Brill shrugs. "Many is such an ooooabstract quantifier. For some, eating one person is a loooooat. For some, eating a hundred is a daily snooooack." */
END
IF~Global("g-actualcannibal","GLOBAL",1) Global("g-brillcannibal","GLOBAL",0)~THEN REPLY @460 /*"I bet you had some tasty ones, but I have another question." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",2) SetGlobal("g-brillcannibal","GLOBAL",1)~ + g-bbD008.q
IF~~THEN REPLY @461 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @462 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.adonis
@464 /*Brill scoffs. "He tried to bring order to this beaaaaaautiful spawner of disorder. He no longer tries." */
END
IF~~THEN REPLY @466 /*"I see... I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @467 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.akershus
@469 /*"He sings dirty sooooangs. People like them." */
==g-bbD007 IF~NearbyDialog("g-bbD007")~THEN @470 /*"You know I can hear you, slaad? Reducing me to a lecherous busker?" */
==g-bbD008 IF~NearbyDialog("g-bbD007")~THEN @471 /*"Clearly he is also grrrooooeat at eavesdropping." */
END
IF~~THEN REPLY @473 /*"Alright... I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @474 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.prod
@476 /*"Don't knoooaw any imp." */
END
IF~~THEN REPLY @478 /*"But... he's being held right there." */ DO~~ + g-bbD008.imp2
IF~~THEN REPLY @479 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @480 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.imp2
@482 /*Brill looks around the Rivergate tavern, including at the imp himself. "Where?" */
END
IF~~THEN REPLY @484 /*Point your finger at the imp. "Right. There." */ DO~~ + g-bbD008.imp3
IF~~THEN REPLY @485 /*"Alright... I guess I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @486 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.imp3
@488 /*"You fled the Gatehouse, yes?" */
END
IF~~THEN REPLY @490 /*"Never mind... I have another question." */ DO~~ + g-bbD008.q
IF~~THEN REPLY @491 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapF
@493 /*Brill opens his eyes wide, barely feigning surprise. "Who is Joseph?" */
END
IF~Global("G-brillchaosproof","GLOBAL",1)~THEN REPLY @495 /*Remember what Akershus said and smack yourself in the face while meowing like a cat. */ DO~IncrementGlobal("G-brill_approve","GLOBAL",5) SetGlobal("G-brillchaosproof","GLOBAL",2)~ + g-bbD008.random
IF~~THEN REPLY @496 /*"I... wanted to step up to that platform, that's it. Ended up in the Ditch." */ DO~~ + g-bbD008.portaltrapF1
IF~~THEN REPLY @497 /*"Let's just talk, then." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @498 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapF1
@500 /*"My froooend, you must have been drunk and just gone outside. Hooooanest mistake." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @501 /*"Chief. The frog clearly won't tell us. Not until you put your charm to work and win him over." */
==g-bbd007 IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~THEN @502 /*"The skull's got a point." */
==g-bbd008 IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~THEN @503 /*"Youu shut your mouth, boooard!" */
END
IF~~THEN REPLY @505 /*"No, I got teleported!" */ DO~~ + g-bbD008.portaltrapF2
IF~~THEN REPLY @506 /*"Let's just talk, then." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @507 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapF2
@509 /*Brill blinks innocently. "Don't know anything abooooout that, child of..." he spits "...order." */
END
IF~~THEN REPLY @511 /*"Let's just talk, then." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @512 /*Leave the counter. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapS
@514 /*Brill looks to the back of the room, making sure no one is looking, and whispers: "I like you, cooouutter, so I'll make you a deal." */
=@515 /*"There was this cooooahny who used to work here, Ikss'odes. He stopped coming one doooaay, and I thought he just died... you know... like a *real* lad. Buooooat I found one of my possessions missing, so he must have nicked it." */
=@516 /*"Get my possession boooack and I'll tell you about the portal." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @517 /*"We really should not be doing chores for that despicable creature." */
END
IF~~THEN REPLY @519 /*"Ikss'odes? Alright, I will find him." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",2)~ SOLVED_JOURNAL @20070 + g-bbD008.portaltrapS1
IF~~THEN REPLY @520 /*"What did he take?" */ DO~~ + g-bbD008.portaltrapS2
IF~~THEN REPLY @521 /*"I don't think so. I just want to talk, then." */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 + g-bbD008.start2
IF~~THEN REPLY @522 /*Leave the counter. */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.random
@524 /*Brill laughs with a bellowing ribbit. He does not seem surprised by your behavior, as if he constantly expects displays of absurdity from everyone. */
=@525 /*"There was this cooooahny who used to work here, Ikss'odes. He stopped coming one doooaay, and I thought he just died... you know... like a *real* lad. Buooooat I found one of my possessions missing, so he must have nicked it." */
=@526 /*"Get my possession boooack and I'll tell you about the portal." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @527 /*"We really should not be doing chores for that despicable creature." */
END
IF~~THEN REPLY @529 /*"Ikss'odes? Alright, I will find him." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",2)~ SOLVED_JOURNAL @20070 + g-bbD008.portaltrapS1
IF~~THEN REPLY @530 /*"What did he take?" */ DO~~ + g-bbD008.portaltrapS2
IF~~THEN REPLY @531 /*"I don't think so. I just want to talk, then." */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 + g-bbD008.start2
IF~~THEN REPLY @532 /*Leave the counter. */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapS2
@534 /*The slaad pauses, lost in thought, but finally speaks: "You will knoaaaw when you see it." */
END
IF~~THEN REPLY @536 /*"Ikss'odes? Alright, I will find him." */ DO~IncrementGlobal("G-brill_approve","GLOBAL",1) SetGlobal("G-brill_quest","GLOBAL",2)~ SOLVED_JOURNAL @20070 + g-bbD008.portaltrapS1
IF~~THEN REPLY @537 /*"I don't think so. I just want to talk, then." */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 + g-bbD008.start2
IF~~THEN REPLY @538 /*Leave the counter. */ DO~SetGlobal("G-brill_quest","GLOBAL",1)~ SOLVED_JOURNAL @20069 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.portaltrapS1
@540 /*"He holds his kip sooooahmehwere towards the Zaddfum Treeeestle, near the market." */
END
IF~~THEN REPLY @542 /*"I still want to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @543 /*"I will bring back your possession. Hold tight." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.meantime
@545 /*"Why are you tooooalking to me, then, berk?" */
END
IF~~THEN REPLY @547 /*"I still want to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @548 /*"I will bring back your possession. Hold tight." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish
@550 /*Brill's eyes light up with excitement. "Ah, you have it! Give it heoooooore." */
END
IF~~THEN REPLY @552 /*Produce the vial and hand it to Brill. */ DO~TakePartyItem("g-bbi025") DestroyItem("g-bbi025")~ + g-bbD008.brill_end
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @553 /*Produce the vial and hand it to Dak'kon. */ DO~~ + g-bbD008.dakkon_end2
IF~OR(2) CheckStatGT(Protagonist,16,CHR) GlobalGT("G-brill_approve","GLOBAL",4) ~THEN REPLY @554 /*"You first." */ DO~~ + g-bbD008.bargainS
IF~!CheckStatGT(Protagonist,16,CHR) !GlobalGT("G-brill_approve","GLOBAL",4) ~THEN REPLY @555 /*"You first." */ DO~~ + g-bbD008.bargainF
IF~~THEN REPLY @556 /*"You should not have it." */ DO~~ + g-bbD008.angry_end
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish2
@558 /*Brill's eyes light up in anger. "Whooooat? HOW? How is it gone?" */
END
IF~~THEN REPLY @560 /*"I allowed Ikss'odes to keep it. As is his right." */ DO~~ + g-bbD008.angry_end
IF~Global("G-dakkon_vial","GLOBAL",1)~THEN REPLY @561 /*"Dak'kon's blade has absorbed it." */ DO~~ + g-bbD008.angry_end
IF~~THEN REPLY @562 /*"It doesn't matter. You cannot have it." */ DO~~ + g-bbD008.angry_end
CHAIN IF~~THEN g-bbD008 g-bbD008.bargainS
@564 /*Brill considers his options for a moment and finally agrees. "Fine, the key to *not* go through the portal is one of these special chalices." He reaches under the counter and produces a rather simple-looking, copper-colored goblet. */
END
IF~~THEN REPLY @566 /*"Thank you." Take the goblet and give him the vial. */ DO~SetGlobal("G-brill_quest","GLOBAL",20) TakePartyItem("g-bbi025") DestroyItem("g-bbi025")  GiveItemCreate("g-bbi010",Protagonist,1,1,0) SetGlobal("G-rivergatekeyaware","GLOBAL",1)~ SOLVED_JOURNAL @20084 + g-bbD008.brill_end2
IF~~THEN REPLY @567 /*"Thank you." Take the goblet and put the vial back in your pack. */ DO~GiveItemCreate("g-bbi010",Protagonist,1,1,0) SetGlobal("G-rivergatekeyaware","GLOBAL",1)~ + g-bbD008.brill_end3
CHAIN IF~~THEN g-bbD008 g-bbD008.brill_end
@569 /*Brill takes the vial with a wide smile. "Soo prrooooahcious." He tucks it away in his belt. "Thank you, mammalian." */
=@570 /*"The key to *not* go through the portal is one of these special chalices." He reaches under the counter and produces a rather simple-looking, copper-colored goblet. */
END
IF~~THEN REPLY @572 /*"Thanks. I still have some questions." */ DO~SetGlobal("G-brill_quest","GLOBAL",20) GiveItemCreate("g-bbi010",Protagonist,1,1,0) GiveExperience(Protagonist,10000) SetGlobal("G-rivergatekeyaware","GLOBAL",1)~ SOLVED_JOURNAL @20084 + g-bbD008.q
IF~~THEN REPLY @573 /*"Thanks. I have to go now." */ DO~SetGlobal("G-brill_quest","GLOBAL",20) GiveItemCreate("g-bbi010",Protagonist,1,1,0) GiveExperience(Protagonist,10000) SetGlobal("G-rivergatekeyaware","GLOBAL",1)~ SOLVED_JOURNAL @20084 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.bargainF
@575 /*Brill considers his options for a moment and eventually says: "Noooah. You first". */
END
IF~~THEN REPLY @577 /*Produce the vial and hand it to Brill. */ DO~TakePartyItem("g-bbi025") DestroyItem("g-bbi025")~ + g-bbD008.brill_end
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @578 /*Produce the vial and hand it to Dak'kon. */ DO~~ + g-bbD008.dakkon_end2
IF~~THEN REPLY @579 /*"You should not have it." */ DO~~ + g-bbD008.angry_end
CHAIN IF~~THEN g-bbD008 g-bbD008.brill_end2
@581 /*Brill takes the vial with a wide smile. "Soo prrooooahcious." He tucks it away in his belt. "Thank you, mammalian." */
END
IF~~THEN REPLY @583 /*No problem. But I still have some questions." */ DO~SetGlobal("G-brill_quest","GLOBAL",20) GiveItemCreate("g-bbi010",Protagonist,1,1,0) GiveExperience(Protagonist,10000)~ SOLVED_JOURNAL @20084 + g-bbD008.q
IF~~THEN REPLY @584 /*"No problem, I will go now." */ DO~SetGlobal("G-brill_quest","GLOBAL",20) GiveItemCreate("g-bbi010",Protagonist,1,1,0) GiveExperience(Protagonist,10000)~ SOLVED_JOURNAL @20084 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.angry_end
@586 /*Brill's eyes light up in a whirlwind of rage. "You piked up, skinny mammal! Brill eats human toooanight!" */
END
IF~~THEN REPLY @588 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.dakkon_end2
@590 /*Brill watches in disbelief, his mouth wide open. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @591 /*Dak'kon takes the vial of liquid metal and hums a little tune to himself. He opens it carefully and ceremoniously takes out his blade. As he pours the contents of the vial over his karach blade, a rainbow glow runs through its entire length, a glow which then continues, fainter, but still visible, through Dak'kon himself. */
==DDakkon @592 /*"I feel stronger." */
==g-bbD008 @593 /*Brill's eyes light up in a whirlwind of rage. "You piked up, skinny mammal! Brill eats human toooanight!" */
END
IF~~THEN REPLY @595 /*Defend yourself. */ DO~DestroyPartyItem("g-bbi025",1) SetGlobal("G-brill_hostile","GLOBAL",1) PermanentStatChange("Dakkon",STR,RAISE,2) PermanentStatChange("Dakkon",WIS,RAISE,2) PermanentStatChange("Dakkon",MAXHITPOINTS,RAISE,10) SetGlobal("G-dakkon_vial","GLOBAL",1) Enemy() Attack(Protagonist)  ~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.brill_end3
@597 /*Brill freezes in place. "Mammal? I enjoooooay a bit of teasing, but may I pleeeeease have my karach?" */
END
IF~~THEN REPLY @599 /*Produce the vial and hand it to Brill. */ DO~TakePartyItem("g-bbi025")~ + g-bbD008.brill_end
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @600 /*Produce the vial and hand it to Dak'kon. */ DO~~ + g-bbD008.dakkon_end2
IF~~THEN REPLY @601 /*"You should not have it." */ DO~~ + g-bbD008.angry_end
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish4
@603 /*Brill's eyes light up in anger. "Useless moammmal. Maybe if you taste nooooice, I'll throw your bones over to Joseph." */
END
IF~~THEN REPLY @605 /*"Wait, that's not what I meant." */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @606 /*"So be it." */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3f
@608 /*Brill's eyes light up in anger. "You're right. I won't believe it. Loooooiar!" He raises his claws.  */
END
IF~~THEN REPLY @610 /*"Wait, that's not what I meant." */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @611 /*"So be it." */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3
@613 /*Brill looks at you confused. "Stay right here, I shooooall send someone to investigoooooate." */
END
IF~!Global("g-ikss-fail","GLOBAL",1)~THEN REPLY @615 /*"If you must." */ DO~FadeToColor([20.0],0)~ + g-bbD008.questfinish3a
IF~Global("g-ikss-fail","GLOBAL",1)~THEN REPLY @616 /*"If you must." */ DO~FadeToColor([20.0],0)~ + g-bbD008.questfinish3b
IF~~THEN REPLY @617 /*"I do not have time to wait. Give me my reward. I am in a hurry." */ DO~~ + g-bbD008.questfinish3c
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3c
@619 /*Brill smiles malevolently, revealing his sharp fangs. */
END
IF~!Global("g-ikss-fail","GLOBAL",1)~THEN REPLY @621 /*"If you must." */ DO~~ + g-bbD008.questfinish3a
IF~Global("g-ikss-fail","GLOBAL",1)~THEN REPLY @622 /*"If you must." */ DO~~ + g-bbD008.questfinish3b
IF~~THEN REPLY @623 /*Attack. */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1) ~ SOLVED_JOURNAL @20085 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3b
@625 /*Brill shakes you out of the nap you took on the barstool. */
END
IF~~THEN REPLY @627 /*"Huh? I'm awake." */ DO~CreateCreatureObjectEffect("g-bb164","EFF_P02","g-bb008") CreateCreatureObjectEffect("g-bb164","EFF_P02","g-bb008") FadeFromColor([20.0],0) ~ + g-bbD008.questfinish3b1
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3b1
@629 /*Brill has company now. And they are not happy. Seems like your ploy did not work. */
END
IF~~THEN REPLY @631 /*Defend yourself.  */ DO~Enemy() Attack(Protagonist) SetGlobal("G-brill_hostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3a
@633 /*Brill shakes you out of the nap you took on the barstool. */
END
IF~~THEN REPLY @635 /*"Huh? I'm awake." */ DO~FadeFromColor([20.0],0)~ + g-bbD008.questfinish3a1
CHAIN IF~~THEN g-bbD008 g-bbD008.questfinish3a1
@637 /*"Your story checks out. There oooooapparently are witnesses who saw Joseph's peoooooople, and the gith is nowhere to be found." Brill thinks for a moment. "You didn't bring me my karach, buoooooot you did me a favor. Take this, and if you kill Jooooouuseph while you're at it, I will not be mad." */
END
IF~~THEN REPLY @639 /*Take the goblet. "Thanks, Brill." */ DO~SetGlobal("G-brill_quest","GLOBAL",20) ActionOverride("g-bb008",GiveItem("g-bbi010",Protagonist)) GiveExperience(Protagonist,10000) SetGlobal("G-rivergatekeyaware","GLOBAL",1)~ SOLVED_JOURNAL @20084 EXIT
CHAIN IF~~THEN g-bbD008 g-bbD008.restartquest
@641 /*"You'll find the gith? Goooad. He holds his kip sooooahmehwere towards the Zaddfum Treeeestle, near the market. Return my belongings and I'll help you with the trap." */
END
IF~~THEN REPLY @643 /*"I still want to talk." */ DO~~ + g-bbD008.start2
IF~~THEN REPLY @644 /*"I will bring back your possession. Hold tight." */ DO~~ EXIT