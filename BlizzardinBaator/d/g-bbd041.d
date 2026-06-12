BEGIN g-bbD041
CHAIN IF~Global("G-adamquest","GLOBAL",2)~THEN g-bbD041 g-bbD041.overridestart
@0 /*A suspicious-looking tiefling is circling around the statue. Noticing that you are looking at him, the man smiles broadly and moves towards you. */
=@1 /*"Haven't we already talked? So many people, so many conversions. Do you follow the only true faith in the multiverse?" The tiefling gestures towards the statue towering above you. "Titan slayers, the Olympian gods!" */
END
IF~~THEN REPLY @3 /*Bluff: "No, but I'm interested. Tell me why it's the only true faith." */ DO~~ + g-bbD041.olympus
IF~~THEN REPLY @4 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~~THEN REPLY @5 /*"I'm not interested, but I have some questions." */ DO~~ + g-bbD041.q
IF~PartyGoldLT(20) ~THEN REPLY @6 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @7 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @8 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~True()~THEN g-bbD041 g-bbD041.start
@10 /*A well-dressed tiefling circles around the statue. Noticing that you are looking at him, the man smiles broadly and moves towards you. */
=@11 /*"Haven't we already talked? So many people, so many conversions. Do you follow the only true faith in the multiverse?" The tiefling gestures towards the statue towering above you. "Titan slayers, the Olympian gods!" */
END
IF~~THEN REPLY @13 /*Bluff: "No, but I'm interested. Tell me why it's the only true faith." */ DO~~ + g-bbD041.olympus
IF~~THEN REPLY @14 /*"I'm not interested, but I have some questions." */ DO~~ + g-bbD041.q
IF~PartyGoldLT(20) ~THEN REPLY @15 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @16 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @17 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.robbery
@19 /*As you turn to leave, you feel the man's hand reaching for your purse. The tiefling does not know yet that you have noticed. */
END
IF~Global("g-athenathiefwatch","GLOBAL",0)~THEN REPLY @22 /*Let him steal some coins and observe his technique. */ DO~TakePartyGold(20) AddexperienceParty(5000) SetGlobal("g-athenathiefwatch","GLOBAL",1)~ + g-bbD041.learnthief
IF~Global("g-athenathiefwatch","GLOBAL",1)~THEN REPLY @23 /*Let him steal some coins and observe his technique. */ DO~TakePartyGold(20)~ + g-bbD041.learnthief2
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @24 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @25 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.learnthief
@27 /*It seems that the tiefling is using some sort of illusion to disguise his hand movement as a prayer, no doubt directed at the Olympian gods. A moment later, your purse is lighter. If you had not been paying attention beforehand, you probably would not have noticed the whole thing. */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @30 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @31 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
IF~~THEN REPLY @32 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.learnthief2
@34 /*Once more, he uses an illusion to disguise his hand movement as a prayer gesture. After a moment, your purse is lighter. */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @37 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @38 /*Grab his hand. "Thief!" */ DO~Enemy() SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
IF~~THEN REPLY @39 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.q
@41 /*"If these questions are about the Olympian deities... ask away!" */
END
IF~~THEN REPLY @44 /*"All right... Tell me about the Olympian deities." */ DO~SetGlobal("G-knowolympian","GLOBAL",1)~ + g-bbD041.olympus
IF~~THEN REPLY @45 /*"What is this monument we are standing under?" */ DO~~ + g-bbD041.athena
IF~~THEN REPLY @46 /*"So you are a priest?" */ DO~~ + g-bbD041.cleric
IF~Global("G-adamquest","GLOBAL",2)~THEN REPLY @47 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~PartyGoldLT(20) ~THEN REPLY @48 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @49 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @50 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.olympus
@52 /*The tiefling clears his throat and begins to speak, somewhat mechanically. */
=@53 /*"The tale of the great Olympian gods begins at the dawn of the planes, when the chaotic side of the multiverse was ruled by the great titans! The tale of titanomachy!" */
=@54 /*"The titanomachy was an absolutely *devastating* hundred year war between the titans and the Olympians, sparked when Zeus overthrew Uranus and declared himself ruler of *all* gods. The titans, led by Prometheus and Atlas, resisted Zeus's uprising, drawing support from the primordials of chaos. The war took place across Arborea and some material planes where it caused the formation of mountains and oceans due to the gods' colossal, magnificent battles." He takes a deep breath and continues. */
=@55 /*"Zeus, wielding a lightning-imbued hammer forged by the cyclopes, eventually defeated the titans by unleashing the power of the sun itself, burning their stronghold. Most titans were banished to Mount Othrys in Carceri. After his victory, Zeus crowned himself king and erased all memory of the titans from mortal history to ensure no one could challenge his legacy. This is why the Olympian pantheon is the greatest ever and we should all follow it," he concludes, apparently very happy with himself. */
END
IF~~THEN REPLY @57 /*"That was very informative. Which god specifically should I follow?" */ DO~~ + g-bbD041.athena
IF~CheckStatGT(Protagonist,20,INT)~THEN REPLY @58 /*A sudden burst of encyclopedic knowledge surfaces to your mouth. "Actually... the war only lasted ten years, the titans were led by Cronus, who decimated Uranus eons before, Prometheus sided *with* the Olympians and Zeus was definitely not using a hammer. Finally, if they erased all memory of it from mortals, how do you know about it?" */ DO~SetGlobal("G-knowolympian","GLOBAL",2)~ + g-bbD041.wrong
IF~CheckStatGT(Protagonist,20,WIS)~THEN REPLY @59 /*A memory tries to make itself known. Embrace it. */ DO~FadeToColor([20.0],0) ~ + g-bbD041.mmory
IF~~THEN REPLY @60 /*"So you are a priest?" */ DO~~ + g-bbD041.cleric
IF~Global("G-adamquest","GLOBAL",2)~THEN REPLY @61 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~PartyGoldLT(20) ~THEN REPLY @62 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @63 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @64 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.athena
@66 /*The tiefling turns towards the huge monument towering above him. "Athena. The best choice when it comes to deities. Goddess of wisdom, art, and noble warfare. She's beautiful, intelligent, modest and determined. Nothing left to do but fall to your knees and worship." */
END
IF~~THEN REPLY @68 /*"Are you a priest, then?" */ DO~~ + g-bbD041.cleric
IF~Global("G-adamquest","GLOBAL",2)~THEN REPLY @69 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~PartyGoldLT(20) ~THEN REPLY @70 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @71 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @72 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.cleric
@74 /*The man smiles modestly. "No. Only a faithful follower and promoter." */
END
IF~~THEN REPLY @76 /*"Isn't imposing your religion on others against the will of the Lady of Pain?" */ DO~~ + g-bbD041.lady
IF~Global("G-adamquest","GLOBAL",2)~THEN REPLY @77 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~PartyGoldLT(20) ~THEN REPLY @78 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @79 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @80 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.lady
@82 /*The smile disappears from the man's face. "Oh... I don't know. I haven't heard anything. Is it?" */
END
IF~~THEN REPLY @84 /*"In Sigil, as far as I know, you can worship whoever you want... except for Aoskar, but converting others seems to be a bit of a taboo subject." */ DO~~ + g-bbD041.tradegate
IF~Global("G-adamquest","GLOBAL",2)~THEN REPLY @85 /*"Have you been bothering the local blacksmith?" */ DO~~ + g-bbD041.adam
IF~PartyGoldLT(20) ~THEN REPLY @86 /*"I don't have time for this. See you around." */ DO~~ EXIT
IF~PartyGoldGT(19) !CheckStatGT(Protagonist,15,DEX)~THEN REPLY @87 /*"I don't have time for this. See you around." */ DO~TakePartyGold(20)~ EXIT
IF~PartyGoldGT(19) CheckStatGT(Protagonist,15,DEX)~THEN REPLY @88 /*"I don't have time for this. See you around." */ DO~~ + g-bbD041.robbery
CHAIN IF~~THEN g-bbD041 g-bbD041.tradegate
@90 /*"Piking big city. I knew I should have stayed at Tradegate. Long live Olympus. Farewell." */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @92 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @93 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.wrong
@95 /*"Piking big, *educated* city. I knew I should have stayed at Tradegate. Long live Olympus. Farewell." */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @97 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @98 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.adam
@100 /*The tiefling gives you a nervous smile. "Who? Oh, that... half-orc from under the broken clock? What am I doing to him?" */
END
IF~~THEN REPLY @102 /*"Peeling him?" */ DO~~ + g-bbD041.bull
IF~Class(Protagonist,Thief)~THEN REPLY @103 /*"Listen, cutter. It's clear that you're cony-catching here. Adam is my friend, and he's not a cony. Do we understand each other?" */ DO~~ + g-bbD041.comrade
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @104 /*"Vhailor, behold a thief. Thief, meet justice." */ DO~~ + g-bbD041.vhailor
CHAIN IF~~THEN g-bbD041 g-bbD041.bull
@106 /*"Do you have any proof of that, or are you just blindly trusting his greenish bone-box?" */
END
IF~~THEN REPLY @108 /*"I don't have any proof, but I'll get you, soon." */ DO~~ EXIT
IF~Class(Protagonist,Thief)~THEN REPLY @109 /*"Listen, cutter. It's clear that you're cony-catching here. Adam is my friend, and he's not a cony. Do we understand each other?" */ DO~~ + g-bbD041.comrade
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @110 /*"Vhailor, behold a thief. Thief, meet justice." */ DO~~ + g-bbD041.vhailor
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @111 /*Attack him. */ DO~Enemy() SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @112 /*Attack him. */ DO~Enemy() SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.comrade
@114 /*You see understanding in the tiefling's eyes. "One recognizes another. I didn't want to trespass on someone else's territory. I should have stayed at Tradegate. Long live Olympus. Farewell." */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @116 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @117 /*Watch as the tiefling scrambles away. */ DO~EscapeArea() AddexperienceParty(10000) SetGlobal("G-athena_scammer_gone","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.vhailor
~~ ==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @119 /**JUSTICE purges evil. Once all have been CLEANSED, the multiverse achieves PERFECTION.* [VHA083] */
==g-bbd041 @120 /*"Oh no..." */
END
IF~GlobalGT("G-adamquest","GLOBAL",0)~THEN REPLY @122 /*Observe justice. */ DO~Enemy() SetGlobal("G-adamquest","GLOBAL",4) SetGlobal("G-athena_scammer_gone","GLOBAL",1) ActionOverride("VHAIL",Attack("g-bb041"))~ SOLVED_JOURNAL @20066 EXIT
IF~Global("G-adamquest","GLOBAL",0)~THEN REPLY @123 /*Observe justice. */ DO~Enemy() SetGlobal("G-athena_scammer_gone","GLOBAL",1) ActionOverride("VHAIL",Attack("g-bb041"))~ EXIT
CHAIN IF~~THEN g-bbD041 g-bbD041.mmory
@125 /*The Ditch around you disappears and is replaced by a bizarre machine. Something resembling an armored metal boat, rocked by restless waves. Darkness surrounds you, brutally pierced by flakes of black snow. The sloshing liquid beneath your vessel occasionally finds its way onto your skin... and it is not water. Every now and then, a violent wave comes out of the darkness spreading out in front of the ship's bow, ready to turn everything upside down, but the heavy boat, carved by Hephaestus himself, bravely pushes forward. Next to you, at the helm, stands a tall, muscular woman dressed in a long robe. She radiates an aura of courage and confidence but also alluring innocence. "The Temple of Oceanus is not far away, hero. Are you sure your plan will work?" [SPTR_01] */
END
IF~~THEN REPLY @127 /*"What plan?" */ DO~~ + g-bbD041.mmory2
CHAIN IF~~THEN g-bbD041 g-bbD041.mmory2
@129 /*The woman seems oblivious to your uncertainty and launches into a poetic tale about the deepest-dwelling great titan, hiding in a sunken temple at the bottom of the Tarterus. She tells of the great titan of the sea, who once served Cronus during the ancient conflict between the gods and the titans... called... TITANOMACHY. */
END
IF~~THEN REPLY @131 /*Pull yourself together. */ DO~AddexperienceParty(30000) FadeFromColor([20.0],0) SetGlobal("G-knowolympian","GLOBAL",2)~ + g-bbD041.mmory3
CHAIN IF~~THEN g-bbD041 g-bbD041.mmory3
@133 /*"Hey, cutter. Are you still here? You're staring at my goddess, but it's as if you disappeared. What do you have to say?" */
END
IF~~THEN REPLY @135 /*"Cronus." */ DO~~ + g-bbD041.mmory4
CHAIN IF~~THEN g-bbD041 g-bbD041.mmory4
@137 /*"Hmm?" The man raises his eyebrows slightly dismissively, but deep down you can sense that he knows he has been caught. */
END
IF~~THEN REPLY @139 /*"Cronus led the titans, not Uranus. You are not a follower of Athena or any of the Olympian gods. You are a charlatan." */ DO~~ + g-bbD041.wrong