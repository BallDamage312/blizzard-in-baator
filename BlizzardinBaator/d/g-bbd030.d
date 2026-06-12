BEGIN g-bbD030
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD030 g-bbD030.start1
@0 /*In front of you is a winged cube with an organic face creasing over rotating lenses. It changes them over and over again as if trying to adapt to the book it holds in its hand. It does not seem to notice you. */
=@1 /*"Good day," it says monotonously. "What is your question?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @2 /*"Not another modron... Chief, it's not worth it. Please, let's get out of here!" [MRT102] */
END
IF~~THEN REPLY @4 /*"Hello." */ DO~~ + g-bbD030.start2
IF~~THEN REPLY @5 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD030 g-bbD030.start2
@7 /*"Do you have a question?" The creature gets to the point. */
END
IF~Global("G-modlib1","GLOBAL",1)~THEN REPLY @9 /*"I've got some books for your collection..." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @10 /*"Yes, I have some questions..." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @11 /*"I'm here by accident. I'll be on my way. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @12 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.questions
@14 /*The creature awaits your question. */
END
IF~~THEN REPLY @16 /*"Who are you?" */ DO~~ + g-bbD030.modron1
IF~Global("G-modlib1","GLOBAL",1)~THEN REPLY @17 /*"Tell me again, what is your task?" */ DO~~ + g-bbD030.modron2
IF~Global("G-modlib1","GLOBAL",1) Global("G-modlib_list","GLOBAL",0)~THEN REPLY @18 /*"Do you have a list of titles you're looking for?" */ DO~SetGlobal("G-modlib_list","GLOBAL",1)~ JOURNAL @6008 + g-bbD030.modronlist
IF~Global("G-modlib1","GLOBAL",1)~THEN REPLY @19 /*"I've got some books for your collection..." */ DO~~ + g-bbD030.books
IF~GlobalGT("g-book","GLOBAL",6) Global("G-modlib1","GLOBAL",1) Global("G-modlib2","GLOBAL",0)~THEN REPLY @20 /*"It seems you already have quite a collection of books. Am I now worthy of communion with this grimoire you guard so carefully?" */ DO~SetGlobal("G-modlib_revard","GLOBAL",2)~ + g-bbD030.bookreward
IF~Global("AR0605_Visited","GLOBAL",1)~THEN REPLY @21 /*"Do you know anything about modrons in Brothel for Slaking Intellectual Lusts?" */ DO~~ + g-bbD030.modron3
IF~Global("AR13EN_Visited","GLOBAL",1)~THEN REPLY @22 /*"Do you know anything about the Modron Maze?" */ DO~~ + g-bbD030.modron4
IF~~THEN REPLY @23 /*"I have to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.modron1
@25 /*"I'm a modron. My function is: librarian." */
END
IF~Global("G-modlib1","GLOBAL",0)~THEN REPLY @27 /*"A librarian? Do you collect books?" */ DO~SetGlobal("G-modlib1","GLOBAL",1)~ + g-bbD030.modron2
IF~Global("G-modlib1","GLOBAL",1)~THEN REPLY @28 /*"Tell me again why it's your job." */ DO~SetGlobal("G-modlib1","GLOBAL",1)~ + g-bbD030.modron2
IF~~THEN REPLY @29 /*"I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @30 /*"I have to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.modron2
@32 /*"This modron's order is to collect books. The expected question: why? The answer: this part of Sigil is filled with illiterates. However, it has been decided that it is not their fault," the modron explains. "The primary cause of illiteracy among Sigilians is the lack of easy access to books. Unlike the Clerk's Ward, many residents of the poorer parts of Sigil have never seen a book. Reasons: high price, lack of copies. Proposed solution: organizing a library. Definition: an institution that collects and provides books. This modron is a librarian. And a library." */
=@33 /*You notice that it is loaded with containers, thanks to which it stores books on itself. Or maybe within itself. "If you have books, this modron would be happy to take them. If you help me build a library, I will show you this incredibly informative tome called the Planewalker's Grimoire. An additional task of this modron is to verify the bibliography and sources, but this is not possible without a few more books that are missing." */
END
IF~~THEN REPLY @35 /*"I've got some books for your collection..." */ DO~SetGlobal("G-modlib1","GLOBAL",1)~ JOURNAL @6007 + g-bbD030.books
IF~~THEN REPLY @36 /*"I have other questions." */ DO~SetGlobal("G-modlib1","GLOBAL",1)~ JOURNAL @6007 + g-bbD030.questions
IF~~THEN REPLY @37 /*"I have to go. Goodbye." */ DO~SetGlobal("G-modlib1","GLOBAL",1)~ JOURNAL @6007 EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.modron3
@39 /*"We are modron. We are one. The task of the modrons located in location called 'The Brothel for Slaking Intellectual Lusts' is different from this modron's. Due to their position - quadron - we are equal in terms of hierarchy, but since they do not fall under the same pentadron as this modron, their task is beyond the knowledge of this modron." */
END
IF~~THEN REPLY @41 /*"Aright, I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @42 /*"I have to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.modron4
@44 /*"The Rubikon Testing Grounds were an experiment conducted by the modrons in the chaotic plane of Limbo. The goal was to understand what draws adventurers to dungeons. This is a common phenomenon." */
END
IF~~THEN REPLY @46 /*"I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @47 /*"I have to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.books
@49 /*The modron is preparing its lenses. "What book would this modron's interlocutor like to share?" */
END
IF~PartyHasItem("CHEATS")~THEN REPLY @51 /*"The Tome o' Cheats. It turns out I don't need it and I want to get rid of it." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("CHEATS",TRUE) GiveItemCreate("MASLOW",Protagonist,0,0,0) GiveItemCreate("MAGITM",Protagonist,0,0,0)~ + g-bbD030.bookgive1
IF~PartyHasItem("CODEXI")~THEN REPLY @52 /*"Codex of the Inconceivable. It's better to leave it in responsible hands." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(50000) DestroyPartyItem("CODEXI",TRUE)~ + g-bbD030.bookgive2
IF~PartyHasItem("LOGBOOK")~THEN REPLY @53 /*"The Receiving Room Logbook. The last page is missing but I guess it's a small loss." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("LOGBOOK",TRUE) GiveItemCreate("BONECHRM",Protagonist,0,0,0) GiveItemCreate("BLOODFLY",Protagonist,0,0,0) GiveItemCreate("CFLYCHRM",Protagonist,0,0,0)  GiveItemCreate("DRATCHRM",Protagonist,0,0,0) GiveItemCreate("HEARCHRM",Protagonist,0,0,0)~ + g-bbD030.bookgive3
IF~PartyHasItem("PESTIL")~THEN REPLY @54 /*"The Grimoire of Pestilential Thought. I don't think I want to have anything more to do with this." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(20000) DestroyPartyItem("PESTIL",TRUE) IncrementGlobal("GOOD","GLOBAL",3)~ + g-bbD030.bookgive4
IF~PartyHasItem("STRDIARY")~THEN REPLY @55 /*"The diary of Strahan Runeshadow, the mage that had been harassing the Mausoleum." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("STRDIARY",TRUE) GiveItemCreate("WWARD.ITM",Protagonist,0,0,0)~ + g-bbD030.bookgive5
IF~PartyHasItem("TOMEBA")~THEN REPLY @56 /*"The beautifully illustrated Tome of Bone and Ash written by the Dustmen." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("TOMEBA",TRUE) GiveItemCreate("EMBCHRM2",Protagonist,0,0,0) GiveItemCreate("SPWI103",Protagonist,0,0,0) GiveItemCreate("SPWI205",Protagonist,0,0,0)~ + g-bbD030.bookgive6
IF~PartyHasItem("FINBOOK")~THEN REPLY @57 /*"Finam's book." */ DO~~ + g-bbD030.bookfinam
IF~PartyHasItem("FINNOTE")~THEN REPLY @58 /*"Fin Andlye's notes." */ DO~~ + g-bbD030.bookfinam
IF~PartyHasItem("SKJOURN")~THEN REPLY @59 /*"This bone-framed journal. It's... mine." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("SKJOURN",TRUE) GiveItemCreate("BJOURN",Protagonist,0,0,0) GiveItemCreate("CHALK",Protagonist,0,0,0) GiveItemCreate("INKWELL",Protagonist,0,0,0) GiveItemCreate("CPENCIL",Protagonist,0,0,0)~ + g-bbD030.bookgive8
IF~PartyHasItem("g-bbi015")~THEN REPLY @60 /*"The Plane Truth." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi015",TRUE)~ + g-bbD030.bbbok1
IF~PartyHasItem("g-bbi016")~THEN REPLY @61 /*"Fire and Dust." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi016",TRUE)~ + g-bbD030.bbbok2
IF~PartyHasItem("g-bbi017")~THEN REPLY @62 /*"The Seafarer's Arch or Final Port-of-Call." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi017",TRUE)~ + g-bbD030.bbbok3
IF~PartyHasItem("g-bbi018")~THEN REPLY @63 /*"The Ditch - Of Sigil and the Sea." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi018",TRUE)~ + g-bbD030.bbbok4
IF~PartyHasItem("g-bbi019")~THEN REPLY @64 /*"The Day of Grace." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi019",TRUE)~ + g-bbD030.bbbok5
IF~PartyHasItem("g-bbi020")~THEN REPLY @65 /*"The Analects of Sigil." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi020",TRUE)~ + g-bbD030.bbbok6
IF~PartyHasItem("g-bbi021")~THEN REPLY @66 /*"The Seven Wonders of the Multiverse." */ DO~IncrementGlobal("g-book","GLOBAL",1) AddexperienceParty(10000) DestroyPartyItem("g-bbi021",TRUE)~ + g-bbD030.bbbok7
IF~~THEN REPLY @67 /*"I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @68 /*"I have to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive0
@70 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
END
IF~~THEN REPLY @72 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @73 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @74 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive1
@76 /*"Thank you. Your gift will help reduce illiteracy in Sigil." It looks at the book. "You must be rewarded for this particular copy in some special way. You are depriving yourself of the ability to easily shape reality. So please accept this strange thing in return." */
END
IF~~THEN REPLY @78 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @79 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @80 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive2
@82 /*Suddenly, you realize that this is the best way to use the Codex of the Inconceivable. The experience contained in it could have come only to you, but you decided to share it with others. Thanks to this, it came back to you multiplied. */
=@83 /*"Thank you. Your gift will help reduce illiteracy in Sigil." It looks at the book. "This is an extremely interesting tome. It will be examined by experts." */
END
IF~~THEN REPLY @85 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @86 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @87 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive3
@89 /*"Thank you. This book will be useful to the scribes of the Fraternity of Order in cataloging the numbers describing Sigil." From one of its drawers the modron takes a handful of trinkets. "Please accept this set of charms that will aid you on your journey." */
END
IF~PartyHasItem("LOGPAGE")~THEN REPLY @91 /*"Right, there's also the missing page." */ DO~AddexperienceParty(5000) DestroyPartyItem("LOGPAGE",TRUE) ~ + g-bbD030.bookgive3a
IF~~THEN REPLY @92 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @93 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @94 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive4
@96 /*"Thank you. Your gift will help reduce illiteracy in Sigil." It looks at the grimoire. "It also seems that by getting rid of this book, you are rejecting the evil with which it has been poisoning you. There are few books as dangerous as this one. It will be properly secured and carefully examined by experts." */
END
IF~~THEN REPLY @98 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @99 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @100 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive5
@102 /*"Thank you. Your gift will help reduce illiteracy in Sigil and will also help law enforcement investigate the activities of a dangerous necromancer. In honor of your services, you will be given this protective whistle, which will aid you in your fight against such mages." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @103 /*"It's a good decision. Not only will it help understand the more dangerous users of the Art, but it can also be a valuable historical source. Look at the meticulousness of the records. They are very regular. You can see that he applied himself to them." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @104 /*"It also seems that it will contribute to the study of magic. He mentions that he has obtained and deciphered the Ap'Tarj grimoire. By understanding these rituals, perhaps it will be possible to combat liches more effectively." */
END
IF~~THEN REPLY @106 /*"Thank you. I've got another book to donate." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @107 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @108 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive6
@110 /*"Thank you. Your gift will help reduce illiteracy in Sigil. You may keep these loose pages. I have an adequate payment." It gives you two scrolls and a Dustman's amulet. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @111 /*"I remember this book from the Mortuary. Make sure you don't need it again before you give it back. Okay, chief?. I remember there was something about protective runes on the armors of giant skeletons?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @112 /*"Or do as you please, chief. If you still need it, I think they sell it at the Dusties' tavern in the Hive." */
END
IF~~THEN REPLY @114 /*"I've got another book to donate." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @115 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @116 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive7
@118 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
END
IF~~THEN REPLY @120 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @121 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @122 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive8
@124 /*"Thank you. This is a very special and personal gift. Please accept this blank journal so that you may write it down." In addition to the journal, you also get a variety of supplies that you do not remember seeing before: a charcoal pencil, ink, and chalk. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @125 /*"Oh great, a *journal*. Wasn't that what you were looking for literally everywhere, chief?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @126 /*"I think I understand the decision of giving away the written one... It's a whole new chapter, eh?" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @127 /*"I respect your decision. Publishing a book takes a lot of courage. It is interesting that it was written by one of your earlier versions, but... It is still you, right?" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @128 /*"Nevertheless, you are quite literally offering yourself to an audience you may never meet. It is a rewarding experience, and I am glad to experience it beside you in time." */
END
IF~!InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @130 /*"I've got another book to donate." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @131 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @132 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookreward
@134 /*The modron gives you an extraordinary book. */
=@135 /*"Please handle this volume with care. This is an incredibly valuable piece of work - and you helped to complete it. Congratulations." */
END
IF~~THEN REPLY @137 /*"Thank you. I have other questions." */ DO~GiveItemCreate("g-bbi014",Protagonist,0,0,0) SetGlobal("G-modlib2","GLOBAL",1) SetGlobal("G-modlibquest","GLOBAL",2)~ JOURNAL @6008 + g-bbD030.questions
IF~~THEN REPLY @138 /*"Thank you. Goodbye." */ DO~GiveItemCreate("g-bbi014",Protagonist,0,0,0) SetGlobal("G-modlib2","GLOBAL",1) SetGlobal("G-modlibquest","GLOBAL",2)~ JOURNAL @6008 EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookfinam
@140 /*You feel a tingling sensation in the back of your mind. It becomes clear to you that parting with this book could have critical implications for your most important task - reclaiming your memories and identity. With that in mind, you decide not to give up this particular item. */
END
IF~~THEN REPLY @142 /*"I think I need to keep this one after all. But I have something else." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @143 /*"I think I need to keep this one after all. I have other questions, though." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @144 /*"I think I need to keep this one after all. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok1
@146 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @147 /*"Did you notice how in the third part of the book Ambran abandons his god, name and kingdom to stay in the Outer Planes? It's an important lesson. The longer we stay somewhere, the more we change. *Planes* change you." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @148 /*"Through observation, sensation and experience, the truth of the multiverse shall be revealed." [FFG104] */
END
IF~~THEN REPLY @150 /*"I've got another book to give you." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ + g-bbD030.books
IF~~THEN REPLY @151 /*"Thank you. I have other questions." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ + g-bbD030.questions
IF~~THEN REPLY @152 /*"Thank you. Goodbye." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok2
@154 /*"Thank you. Your gift will help reduce illiteracy in Sigil. 'Fire and Dust'..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @155 /**"The flames await."* [IGN094] */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @156 /**"Ignus wishes to burrnn."* [IGN093] */
END
IF~~THEN REPLY @158 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @159 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @160 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok3
@162 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @163 /*"Hold up a moment, chief. This book says a portal to Arborea was right under our noses the whole time, and we're still talking to a modron instead of drinking wine with Dionysus amidst a procession of bare bacchae?" [MRT487] */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @164 /*"I think we need to reconsider our priorities, chief." */
END
IF~~THEN REPLY @166 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @167 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @168 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok4
@170 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @171 /*"Aye, who would have thought that Sigil had access to the sea?" She laughs. "I pity berks who'd try to bathe in the Ditch. But walkin' through the streets I think every other sod has this habit, eh?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @172 /*She sighs. "Since yeh don't need a guide to the Ditch, ye're probably acclimatized, ain't yeh?"[ANA565BC] */
END
IF~~THEN REPLY @174 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @175 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @176 /*"Thank you. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok5
@178 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @179 /*"I think Pharod might have read me this very book when I was a wee lass. That is, until he sent me searchin' the ditches in the Hive for deaders. And he did that bloody quickly." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @180 /* "Ol' stutter crutch be tallyin' his copper 'bout now." She smiles sadly. "Would be." [ANA009] */
END
IF~~THEN REPLY @182 /*"I've got another book to give you." */ DO~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) IncrementGlobal("G-annrom","GLOBAL",1)~ + g-bbD030.books
IF~~THEN REPLY @183 /*"Don't worry, Annah. Sorry but I have other questions for the modron." */ DO~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) IncrementGlobal("G-annrom","GLOBAL",1)~ + g-bbD030.questions
IF~~THEN REPLY @184 /*"Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok6
@186 /*"Thank you. Your gift will help reduce illiteracy in Sigil." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @187 /**Jerak the Mercykiller was not wrong. The punishment was imposed. The guilty have been punished.* You see justice burning in his eyes. */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @188 /**JUSTICE purges evil. Once all have been CLEANSED, the multiverse achieves PERFECTION.* [VHA083] */
END
IF~~THEN REPLY @190 /*"I've got another book to give you." */ DO~IncrementGlobal("BD_VHAIL_MORALE","GLOBAL",1)~ + g-bbD030.books
IF~~THEN REPLY @191 /*"Thank you. I have other questions." */ DO~IncrementGlobal("BD_VHAIL_MORALE","GLOBAL",1)~ + g-bbD030.questions
IF~~THEN REPLY @192 /*"Thank you. Goodbye." */ DO~IncrementGlobal("BD_VHAIL_MORALE","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bbbok7
@194 /*"Thank you. Your gift will help reduce illiteracy in Sigil." The modron takes your worn copy of 'The Seven Wonders of the Multiverse'. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @195 /*"My dream as a Sensate is to see all the Wonders of the Multiverse in my lifetime. The Bridge That Spans Worlds is impressive, but looking up into the vault of the Modron Cathedral offers experiences unknown to most of the living. The hardest to reach would probably be those in the Prime Material Plane. Perhaps we will get to see them someday... Once we've sorted out your horrid affliction, of course." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @196 /*"It is good to be journeying again. The brothel was a learning experience, but I think it was time I moved on." [FFG011] */
END
IF~~THEN REPLY @198 /*"I've got another book to give you." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ + g-bbD030.books
IF~~THEN REPLY @199 /*"Thank you. I have other questions." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ + g-bbD030.questions
IF~~THEN REPLY @200 /*"Thank you. Goodbye." */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",1) IncrementGlobal("G-ffgrom","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.modronlist
@202 /*Below is a list of books sought by the modron librarian:

- The Plane Truth
- Fire and Dust
- The Seafarer's Arch or Final Port-of-Call
- The Ditch - Of Sigil and the Sea
- The Day of Grace
- The Analects of Sigil
- The Seven Wonders of the Multiverse
- The Mortuary Receiving Room Logbook
- Tome of Bone and Ash
- Codex of the Inconceivable
- The Grimoire of Pestilential Thought (warning: dangerous)

The list is open, and the librarian would surely would be happy to accept items not on the list. He may have trouble showing enthusiasm, though. A reward will be awarded upon bringing in at least seven books. */
END
IF~~THEN REPLY @204 /*"I've got some books for your collection..." */ DO~SetGlobal("G-modlibquest","GLOBAL",1)~ + g-bbD030.books
IF~~THEN REPLY @205 /*"I have other questions." */ DO~SetGlobal("G-modlibquest","GLOBAL",1)~ + g-bbD030.questions
IF~~THEN REPLY @206 /*"I'll be looking for them. Goodbye." */ DO~SetGlobal("G-modlibquest","GLOBAL",1)~ EXIT
IF~~THEN REPLY @207 /*"I'm not sure if I want to look for them. I have to think this through. Goodbye." */ DO~SetGlobal("G-modlibquest","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD030 g-bbD030.bookgive3a
@209 /*"Thank you for your meticulousness." */
END
IF~~THEN REPLY @211 /*"I've got another book to give you." */ DO~~ + g-bbD030.books
IF~~THEN REPLY @212 /*"Thank you. I have other questions." */ DO~~ + g-bbD030.questions
IF~~THEN REPLY @213 /*"Thank you. Goodbye." */ DO~~ EXIT