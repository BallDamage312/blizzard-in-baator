BEGIN g-bbD102
CHAIN IF~NumTimesTalkedTo(0) Global("G-golemreturned","GLOBAL",0) !Global("G-madwizardtrap","GLOBAL",1) ~THEN g-bbD102 g-bbD102.start1
@0 /*In the shallow water before you stands a massive statue carved to resemble a ghoul. It looks extremely sturdy, the sort that ordinary weapons would be unlikely to harm. It gives the impression that it is watching you with its stone eyes. After a while, you notice that the statue is not entirely motionless. From time to time, it gently turns its head toward you, as if ready to react should you attempt to make contact. It does not utter a single word, however. */
=@1 /*It must be the missing golem you are looking for. */
END
IF~Global("G-stonerquest","GLOBAL",1)~THEN REPLY @3 /*Try chipping off a piece of its body. */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 + g-bbD102.stonerquest1
IF~~THEN REPLY @4 /*Try to interact with it. */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 + g-bbD102.interaction
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @5 /*"Grace, do you know anything about golems?" */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 + g-bbD102.golgrace
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @6 /*"Dak'kon, do you know anything about golems?" */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 + g-bbD102.goldakkon
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @7 /*"Ignus, do you know anything about golems?" */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 + g-bbD102.golign
IF~~THEN REPLY @8 /*Leave. */ DO~SetGlobal("g-slimequestline","GLOBAL",7)~ SOLVED_JOURNAL @20301 EXIT
CHAIN IF~!Global("G-madwizardtrap","GLOBAL",1) ~THEN g-bbD102 g-bbD102.start2
@10 /*The golem stands still, watching you calmly. It barely moves at all. */
END
IF~Global("G-stonerquest","GLOBAL",3) Global("G-golemreturned","GLOBAL",0) !Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @12 /*Try to free it. Let it come back home. */ DO~~ + g-bbD102.freedom
IF~Global("G-stonerquest","GLOBAL",1)~THEN REPLY @13 /*Try chipping off a piece of its body. */ DO~~ + g-bbD102.stonerquest1
IF~!Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @14 /*Try to interact with it. */ DO~~ + g-bbD102.interaction
IF~Global("G-golemcontrol","GLOBAL",1) Global("G-golemreturned","GLOBAL",0)~THEN REPLY @15 /*"Go back to the Bones of the Night." */ DO~~ + g-bbD102.freedom2
IF~Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @16 /*"Die." */ DO~Kill(Myself) AddexperienceParty(15000)~ EXIT
IF~Global("G-golemcontrol","GLOBAL",1) Global("G-golemreturned","GLOBAL",0) Global("G-madwizardtrap","GLOBAL",0) !Dead("g-bb246")~THEN REPLY @17 /*"Wait here for the mad mage, pretending to obey him. When he gets close, rip off his head." */ DO~SetGlobal("G-madwizardtrap","GLOBAL",1)~ + g-bbD102.murder
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @18 /*"Grace, do you know anything about golems?" */ DO~~ + g-bbD102.golgrace
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @19 /*"Dak'kon, do you know anything about golems?" */ DO~~ + g-bbD102.goldakkon
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @20 /*"Ignus, do you know anything about golems?" */ DO~~ + g-bbD102.golign
IF~~THEN REPLY @21 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~Global("G-madwizardtrap","GLOBAL",1) ~THEN g-bbD102 g-bbD102.start3
@23 /*The golem stands with clenched fists, waiting for the mage to return. */
END
IF~Global("G-golemcontrol","GLOBAL",1) Global("G-golemreturned","GLOBAL",0)~THEN REPLY @25 /*"Go back to the Bones of the Night." */ DO~SetGlobal("G-madwizardtrap","GLOBAL",0)~ + g-bbD102.freedom2
IF~Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @26 /*"Die." */ DO~SetGlobal("G-madwizardtrap","GLOBAL",0) Kill(Myself) AddexperienceParty(15000)~ EXIT
IF~~THEN REPLY @27 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.interaction
@29 /*The golem does not react. */
END
IF~Global("G-stonerquest","GLOBAL",1)~THEN REPLY @31 /*Try chipping off a piece of its body. */ DO~~ + g-bbD102.stonerquest1
IF~~THEN REPLY @32 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.golgrace
@34 /*The stone head turns slightly, as if with interest, towards the succubus. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @35 /*"Golems are matter that has been 'brought to life'. Of course, this 'life' does not fit the simplest definitions of life. Perhaps a more appropriate term would be... animation, or setting something in motion. They are constructs whose movements were determined by a wizard who breathed magic, or even someone's spirit into such a puppet." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @36 /*"They can vary greatly in size. I know of a tale about Awtawmatawn, a 30-foot stone golem possessed by a cornugon named Rotbite. Awtawmatawn was much larger than average golems and was used to terrorize a town in the Prime Material Plane. As you can imagine, such a huge golem controlled by a devil can do incredible damage, especially in a crowded place." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @37 /*"It was eventually stopped by a group of adventurers, but this story shows us just how destructive golems can be. Mages usually use them as bodyguards. It's practically a cliché," the woman laughs. "Their appearance deters most thieves, and despite their slowness, if someone decides to make a reckless move, a single blow from their heavy hand usually puts an end to such an escapade. This one here, undead in its outlook, fits Lord of Bones' style, don't you think?" */
END
IF~~THEN REPLY @39 /*"I see... You're right." */ DO~~ + g-bbD102.start2
IF~~THEN REPLY @40 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.goldakkon
@42 /*The stone head turns slightly, as if with interest, towards the githzerai. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @43 /*"When a mage *knows* the nature of matter well enough to give it the form of a living being and is able to set it in motion, he can create such beings," Dak'kon explains. "They are created from various materials: clay, stone, minerals, magma... and even corpses or just bones," he adds with complete seriousness. "Some mages, in their quest for knowledge, stray off the path of morality. I'm not saying that creating a golem is *wrong* in itself, but is it right to bring to life something that was never meant to live?" */
END
IF~~THEN REPLY @45 /*"I see... I guess there's no good answer to that." */ DO~~ + g-bbD102.start2
IF~~THEN REPLY @46 /*"I wouldn't mind. There's nothing wrong with giving life to your servants." */ DO~~ + g-bbD102.start2
IF~~THEN REPLY @47 /*"I guess there's some truth to that, forcing life onto things is not entirely appropriate." */ DO~~ + g-bbD102.start2
IF~~THEN REPLY @48 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.golign
@50 /*The face of the construct does not have the capacity to emote, but his head turns slightly, as if with anxiety, towards Ignus. */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @51 /**"Burning a golem like this isssss... extraordinary. To create them, you alwayssss need FIRE, too. If I had... more time, I would create a golem... that could sssspread flames and FIRE..."* */
END
IF~~THEN REPLY @53 /*"I see... Indeed, we don't have time for that." */ DO~~ + g-bbD102.start2
IF~~THEN REPLY @54 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.stonerquest1
@56 /*How do you want to chip away a piece of the golem? Its appearance makes it clear to you that you need to be very careful so it does not automatically see you as a threat that needs to be eliminated. */
END
IF~CheckStatGT(Protagonist,17,STR)~THEN REPLY @58 /*Just do it firmly, using all your strength on a small part of his body. */ DO~~ + g-bbD102.stonerquest2
IF~CheckStatLT(Protagonist,18,STR)~THEN REPLY @59 /*Try to use all your strength for this. */ DO~~ + g-bbD102.stonerquestfail
IF~CheckStatGT(Protagonist,17,DEX)~THEN REPLY @60 /*Skillfully untwist what can be untwisted. */ DO~~ + g-bbD102.stonerquest2
IF~CheckStatLT(Protagonist,18,DEX)~THEN REPLY @61 /*Simply untwist something. Surely something can be untwisted... */ DO~~ + g-bbD102.stonerquestfail
IF~Class(Protagonist,Mage)~THEN REPLY @62 /*Use your will. Imagine a small fragment detaching itself from the golem. */ DO~~ + g-bbD102.stonerquest2
IF~PartyHasItem("fhammer")~THEN REPLY @63 /*Use the forge hammer. */ DO~~ + g-bbD102.stonerquest2
IF~PartyHasItem("tawl")~THEN REPLY @64 /*Use Thildon's awl. */ DO~~ + g-bbD102.stonerquest2
IF~PartyHasItem("tongs")~THEN REPLY @65 /*Use tongs. */ DO~~ + g-bbD102.stonerquest2
IF~~THEN REPLY @66 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.stonerquestfail
@68 /*You see the golem turn its head sharply towards you and reach out its hands for your skull. */
END
IF~~THEN REPLY @70 /*"Oh, gods damn it." */ DO~SetGlobal("G-stonerquest","GLOBAL",2) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.stonerquest2
@72 /*Your approach turns out to be the right one. You manage to sever a piece of the creature without any trouble, and it does not even flinch. It looks like it has no intention of attacking you. */
END
IF~~THEN REPLY @74 /*Leave with a piece of the golem. */ DO~SetGlobal("G-stonerquest","GLOBAL",3) SetGlobal("g-slimequestline","GLOBAL",8) AddexperienceParty(15000) GiveItemCreate("g-bbi032",Protagonist,0,0,0) ~ SOLVED_JOURNAL @20302 EXIT
IF~~THEN REPLY @75 /*Try to free the golem. Let it come back home. */ DO~SetGlobal("G-stonerquest","GLOBAL",3) SetGlobal("g-slimequestline","GLOBAL",8) AddexperienceParty(15000) GiveItemCreate("g-bbi032",Protagonist,0,0,0) ~ SOLVED_JOURNAL @20302 + g-bbD102.freedom
CHAIN IF~~THEN g-bbD102 g-bbD102.freedom
@77 /*The golem does not seem to be physically bound. It just does not move. */
END
IF~~THEN REPLY @79 /*"Hey, stiffer. Your master awaits you." */ DO~~ + g-bbD102.freedom0
IF~Class(Protagonist,Mage) CheckStatGT(Protagonist,20,INT)~THEN REPLY @80 /*Try to give it an order to return home, using the Art. */ DO~~ + g-bbD102.freedom1
IF~Global("G-knowreditus","GLOBAL",1)~THEN REPLY @81 /*"Reditus." */ DO~~ + g-bbD102.freedom2
IF~~THEN REPLY @82 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.freedom0
@84 /*The golem does not react. */
END
IF~~THEN REPLY @86 /*"Hey, stiffer. Your master awaits you." */ DO~~ + g-bbD102.freedom0
IF~Class(Protagonist,Mage) CheckStatGT(Protagonist,20,INT)~THEN REPLY @87 /*Try to give it an order to return home, using the Art. */ DO~~ + g-bbD102.freedom1
IF~Global("G-knowreditus","GLOBAL",1)~THEN REPLY @88 /*"Reditus." */ DO~~ + g-bbD102.freedom2
IF~~THEN REPLY @89 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.freedom1
@91 /*You study the runes carved into the golem's body and conclude that a spell has been cast on it to alter the scope and selection of the words that control it. You can dispel this spell and rewrite it to suit your own purposes. */
END
IF~~THEN REPLY @93 /*Disrupt the spell's flow and replace its commands with your own. */ DO~SetGlobal("G-golemcontrol","GLOBAL",1)~ + g-bbD102.freedom1a
IF~~THEN REPLY @94 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.freedom1a
@96 /*With deft movements of your hands, you manipulate the energy surrounding the golem. It trembles slightly in response to your intervention. Finally, with a soft sound like air being released from lungs, the golem shifts its stance slightly. It now resembles... you. */
END
IF~Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @98 /*"Go back to the Bones of the Night." */ DO~~ + g-bbD102.freedom2
IF~Global("G-golemcontrol","GLOBAL",1)~THEN REPLY @99 /*"Die." */ DO~Kill(Myself) AddexperienceParty(15000)~ EXIT
IF~Global("G-golemcontrol","GLOBAL",1) Global("G-madwizardtrap","GLOBAL",0) !Dead("g-bb246")~THEN REPLY @100 /*"Wait here for the mad mage, pretending to obey him. When he gets close, rip off his head." */ DO~SetGlobal("G-madwizardtrap","GLOBAL",1) AddexperienceParty(15000)~ + g-bbD102.murder
IF~~THEN REPLY @101 /*Leave the golem alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.freedom2
@103 /*The construct immediately begins to move its heavy feet and heads toward the exit. */
END
IF~~THEN REPLY @105 /*Leave. */ DO~EscapeArea() SetGlobal("G-golemreturned","GLOBAL",1) AddexperienceParty(15000)~ EXIT
CHAIN IF~~THEN g-bbD102 g-bbD102.murder
@107 /*The creature tightens its fists and freezes. */
END
IF~~THEN REPLY @109 /*Leave. */ DO~~ EXIT