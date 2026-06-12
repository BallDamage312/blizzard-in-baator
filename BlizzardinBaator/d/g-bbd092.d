BEGIN g-bbD092
CHAIN IF~NumTimesTalkedTo(0) NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start
@0 /*A young man, about sixteen years of age, stands in the line. He is dressed in mostly clean, but worn-out clothes. He looks quite miserable, with snot running down from his nose and tears covering his cheeks. In front of his chest, he is clutching a bloodied hand, which partly explains his state. When you approach, he sniffs and looks at you with large, sad eyes, like a hurt puppy. */
END
IF~~THEN REPLY @2 /*"Greetings. Who are you?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",1)~ + g-bbD092.A1
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @3 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD092.ikks
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-DamianPRG","GLOBAL",0) NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start1
@6 /*The young man is still clutching his bloodied arm against his chest, waiting for his turn with the angel. */
END
IF~~THEN REPLY @8 /*"Who are you again?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",1)~ + g-bbD092.A1
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @9 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD092.ikks
IF~~THEN REPLY @10 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-DamianPRG","GLOBAL",1) NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start2
@12 /*Damian is still clutching his bloodied arm against his chest, waiting for his turn with the angel. */
END
IF~~THEN REPLY @14 /*"What happened to you, Damian?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",2)~ + g-bbD092.C1
IF~~THEN REPLY @15 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-DamianPRG","GLOBAL",2) NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start3
@17 /*The Damian who fell down the stairs is still clutching his bloodied arm against his chest, waiting for his turn with the angel. */
END
IF~~THEN REPLY @19 /*"Remind me... what happened to you, Damian?" */ DO~~ + g-bbD092.C1
IF~~THEN REPLY @20 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-DamianPRG","GLOBAL",3) NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start4
@22 /*The boy looks up to you with teary eyes. He looks like a little pile of misery. "Do you have the bandage?" */
END
IF~PartyHasItem("BANDAGE")~THEN REPLY @24 /*"I do. Relax, I'll be quick." */ DO~DestroyPartyItem("BANDAGE",1)~ + g-bbD092.I1a
IF~!PartyHasItem("BANDAGE")~THEN REPLY @25 /*"Not yet, I'll be right back." */ DO~~ EXIT
IF~~THEN REPLY @26 /*"I don't have time for this. Farewell." */ DO~~ EXIT
CHAIN IF~!NearbyDialog("g-bbd087")~THEN g-bbD092 g-bbD092.start5
@28 /*"Where did the angel go? I think I was a bit out of it. What did you do?" */
EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.A1
@31 /*His voice trembles enough to make him barely understandable. "I-I-I am... D-Damian. I work as a m-messenger." */
END
IF~~THEN REPLY @33 /*"Why are you here, D-Damian?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD092.C1
IF~~THEN REPLY @34 /*"Why are you here, Damian?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",2)~ + g-bbD092.C1
IF~~THEN REPLY @35 /*"What happened to you, Damian?" */ DO~SetGlobal("G-DamianPRG","GLOBAL",2)~ + g-bbD092.C1
IF~~THEN REPLY @36 /*"Nice to meet you. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.C1
@38 /*"I fell down some stairs." The boy raises his arm slightly, grimacing with pain. You see a little white bone fragment sticking out through the torn skin. An open fracture. */
END
IF~CheckStatGT(Protagonist,14,INT)~THEN REPLY @40 /*"I know a bit about medicine. I think I'll be able to help you." */ DO~SetGlobal("G-damianhelp","GLOBAL",1)~ + g-bbD092.help
IF~CheckStatGT(Protagonist,14,DEX)~THEN REPLY @41 /*"I am very good with my hands. I think I'll be able to help you." */ DO~SetGlobal("G-damianhelp","GLOBAL",2)~ + g-bbD092.help
IF~CheckStatGT(Protagonist,14,STR)~THEN REPLY @42 /*"I am quite a strongman. I think I'll be able to help you." */ DO~SetGlobal("G-damianhelp","GLOBAL",3)~ + g-bbD092.help
IF~PartyHasItem("BANDAGE")~THEN REPLY @43 /*"It is but a scratch. A nice, clean bandage should do the trick." */ DO~DestroyPartyItem("BANDAGE",1)~ + g-bbD092.I1
IF~!PartyHasItem("BANDAGE")~THEN REPLY @44 /*"It is but a scratch. A nice, clean bandage should do the trick." */ DO~~ + g-bbD092.L1
IF~~THEN REPLY @45 /*"Do you want me to break the other arm of yours? If not, you better pike off from this line." */ DO~SetGlobal("G-alviroban","GLOBAL",1) EscapeArea()~ + g-bbD092.JX1
IF~~THEN REPLY @46 /*"Ouch. Looks bad. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.I1
@48 /*"B-bandage?" Damian looks at you with a dose of skepticism, but apparently he respects your authority as an adult enough to allow you closer. */
END
IF~~THEN REPLY @50 /*"Relax, I'll be quick." */ DO~~ + g-bbD092.I1a
CHAIN IF~~THEN g-bbD092 g-bbD092.I1a
@52 /*You take out the bandage and start wrapping it around the boy's arm tightly. Tightly enough for the bone to come back into its place. The boy, paralyzed with pain, does not even scream. He merely tenses up, looking as if he is about to faint. Eventually he breathes out. "Th-Thank you... I feel a lot better." */
END
IF~~THEN REPLY @54 /*"I'm glad. Now go home and change the bandage if it soaks with blood." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) EscapeArea() AddexperienceParty(5000)~ EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.L1
@56 /*"B-bandage?" Damian looks at you with a dose of skepticism, but apparently he respects your authority as an adult enough to allow you closer. */
END
IF~~THEN REPLY @58 /*"However, I don't have any... Wait here, I'll go get some. I'll be right back." */ DO~SetGlobal("G-DamianPRG","GLOBAL",3)~ EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.JX1
@60 /*The boy's skin turns paper-like pale. It seems he exceeded his limit for bravery for the cycle. He turns around on his heel and runs off, crying to high heavens. */
==g-bbd087 @61 /*You feel a disapproving stare of the angel on the back of your neck. */
EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.help
@64 /*The boy does not seem convinced, but the pain must be severe enough that he decides to take the risk. He allows you closer so you can inspect the arm, which he takes very well. */
==g-bbd092 IF~Global("G-damianhelp","GLOBAL",1)~THEN @65 /*You come to a conclusion that this looks a lot worse than it is in reality. The boy will heal up nicely if you only set the bone. */
==g-bbd092 IF~Global("G-damianhelp","GLOBAL",2)~THEN @66 /*It seems that if you just quickly and smoothly put the bone back where it belongs, everything will be fine. */
==g-bbd092 IF~Global("G-damianhelp","GLOBAL",3)~THEN @67 /*It seems that if you just use your muscles to shove the bone back where it belongs, everything will be fine. */
END
IF~~THEN REPLY @69 /*"All right. It will hurt for a moment, but it will be a lot better afterwards. Get ready. One... two..." */ DO~~ + g-bbD092.help2
CHAIN IF~~THEN g-bbD092 g-bbD092.help2
@71 /*You never reach three. With a deft movement, you rotate the bone and put it back into place. The boy, paralyzed with pain, does not even scream. He merely tenses up, looking as if he is about to faint. Eventually he breathes out. "Th-Thank you... I feel a lot better." [SKELW10] */
END
IF~Global("G-damianhelp","GLOBAL",1)~THEN REPLY @73 /*"I'm glad. Now go home, wash the wound with clean water and soap, and rest a lot." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) EscapeArea() AddexperienceParty(5000)~ EXIT
IF~Global("G-damianhelp","GLOBAL",2)~THEN REPLY @74 /*"I'm glad. Now go home and do not move this arm for a while." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) EscapeArea() AddexperienceParty(5000)~ EXIT
IF~Global("G-damianhelp","GLOBAL",3)~THEN REPLY @75 /*"I'm glad. Now go home and start lifting because you're very weak. Strong men don't break bones." */ DO~IncrementGlobal("G-patienthelp","GLOBAL",1) IncrementGlobal("G-alviroprequest","GLOBAL",1) EscapeArea() AddexperienceParty(5000)~ EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.ikks
@77 /*The boy points to a nearby building with his chin. "Yeah, he lives in here. B-but I've been trying to deliver a letter to him for the p-past few cycles... and it seems he's not home. If you have some urgent business with him, m-maybe try asking Mare? I mean, his girlfriend." */
END
IF~~THEN REPLY @79 /*"Alright, where can I find her?" */ DO~~ + g-bbD092.ikks2
CHAIN IF~~THEN g-bbD092 g-bbD092.ikks2
@82 /*"She's a c-courtesan. She usually works by the Vertical Sea." Suddenly, the boy's face flushes red. "I-I mean, that's what I heard." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @84 /*"Where is the Vertical Sea?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD092.ikks3
IF~~THEN REPLY @85 /*"Thank you. I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD092 g-bbD092.ikks3
@87 /*"It's back there, beyond the statue of A-Athena..." */
END
IF~~THEN REPLY @89 /*"Thank you. I need to go. Farewell." */ DO~~ EXIT