BEGIN g-bbD240
CHAIN IF~Global("g-ayryn","GLOBAL",0)~THEN g-bbD240 g-bbD240.start1
@0 /*On the upper level of the library, a small, slender, blue-skinned woman stands near a bookshelf full of dusty old tomes, unphased by the lack of guardrails on the platform. Engrossed in a book, she pays no attention to her surroundings. */
END
IF~~THEN REPLY @2 /*"Greetings." */ DO~SetGlobal("g-ayryn","GLOBAL",1)~ + g-bbD240.hello
IF~~THEN REPLY @3 /*Leave the woman alone. */ DO~~ EXIT
CHAIN IF~Global("g-ayryn","GLOBAL",1)~THEN g-bbD240 g-bbD240.start2
@5 /*The woman is still here, studying the ancient tome intently. */
END
IF~~THEN REPLY @7 /*"Hello again.I have some questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @8 /*Leave the woman alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.hello
@10 /*The woman raises her finger to silence you and nods to herself as she finishes reading a passage. She then turns to you. "Greetings, strange man. Do you need something?" */
END
IF~~THEN REPLY @12 /*"I have some questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @13 /*Leave the woman alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.q
@15 /*"I am a bit busy, as you can see. I am here on business, so make it quick." */
END
IF~Global("g-ayrynwho","GLOBAL",0)~THEN REPLY @17 /*"Who are you?" */ DO~SetGlobal("g-ayrynwho","GLOBAL",1)~ + g-bbD240.who
IF~Global("g-ayrynwho","GLOBAL",1)~THEN REPLY @18 /*"Who are you again?" */ DO~~ + g-bbD240.rewho
IF~Global("g-ayrynblue","GLOBAL",0)~THEN REPLY @19 /*"Why are you... blue?" */ DO~SetGlobal("g-ayrynblue","GLOBAL",1)~ + g-bbD240.blue
IF~Global("g-ayrynbook","GLOBAL",0)~THEN REPLY @20 /*"What are you reading?" */ DO~SetGlobal("g-ayrynbook","GLOBAL",1)~ + g-bbD240.book2
IF~Global("g-ayrynbook","GLOBAL",1)~THEN REPLY @21 /*"Are you done with your book?" */ DO~~ + g-bbD240.booka
IF~Global("g-knowtymorasluck","GLOBAL",1)~THEN REPLY @22 /*"I have some more questions about this 'Tyche' business." */ DO~~ + g-bbD240.luckalt
IF~Global("g-knowtymora","GLOBAL",1) Global("g-knowbeshaba","GLOBAL",1) PartyHasItem("g-bbi099") Global("g-coinoffate","GLOBAL",0)~THEN REPLY @23 /*Show her the Greater Coin of Fate. "Does this coin have anything to do with your research?" */ DO~SetGlobal("g-coinoffate","GLOBAL",1)~ + g-bbD240.coin
IF~PartyHasItem("g-bbi099") GlobalGT("g-coinoffate","GLOBAL",0) ~THEN REPLY @24 /*"I've decided to sell you the Coin of Fate. What price were we talking about?" */ DO~~ + g-bbD240.coinsell
IF~PartyHasItem("g-bbi099") GlobalGT("g-coinoffate","GLOBAL",0) ~THEN REPLY @25 /*"I've decided to give you the Coin of Fate. It should be in your hands." */ DO~IncrementGlobal("GOOD","GLOBAL",3) AddexperienceParty(100000) DestroyPartyItem("g-bbi099",1)~ + g-bbD240.coingive
IF~Global("g-knowtymorasluck","GLOBAL",1) Global("g-knowtymora","GLOBAL",1) Global("g-knowbeshaba","GLOBAL",1) Global("g-knowtyche","GLOBAL",1) Global("g-ayrynquest","GLOBAL",0) Global("g-ayrynwho","GLOBAL",1)~THEN REPLY @26 /*"I'll be heading to Mephistar, where a great deal of arcane lore is hidden away. Maybe I can find something about Tyche's split for you?" */ DO~AddexperienceParty(20000)~ + g-bbD240.quest
IF~~THEN REPLY @27 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.book
@29 /*The cover has seen some wear and tear: one of the corners is missing, and part of the edge is singed. However, you can still make out the title clearly. "History of the Fateful Coin." */
END
IF~~THEN REPLY @31 /*"What is it about?" */ DO~~ + g-bbD240.book2
IF~~THEN REPLY @32 /*"I have some other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @33 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.book2
@35 /*"It's the 'History of the Fateful Coin.' It's something I've wanted to get my hands on for a while. Not many of these seem to make it out of the Prime Material Plane. This book is about the destruction of the goddess Tyche." */
END
IF~~THEN REPLY @37 /*"So, how was she destroyed?" */ DO~~ + g-bbD240.book3
IF~~THEN REPLY @38 /*"I have some other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @39 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.book3
@41 /*The woman gets a little flustered. "I... I am *not* going to just summarize the whole book for you. It's a pretty complicated tale. And I need to finish it. Lady Erin is eager to see what I can do with it." */
END
IF~~THEN REPLY @43 /*"What do you mean?" */ DO~SetGlobal("g-knowtymorasluck","GLOBAL",1)~ + g-bbD240.luck
IF~~THEN REPLY @44 /*"I have some other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @45 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.luck
@47 /*The woman sighs, slightly annoyed, as you keep obstructing her reading. "About a year ago, Lady Erin and her inner circle witnessed a strange occurrence through my scrying eyes. A foolish god from their pantheon tried to reform Tyche. Apparently, she had been his paramour eons ago. The plan failed, much to their strange discontent, but it sparked interest in how *exactly* Tyche split into two." */
END
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @49 /*"Who is lady Erin?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @50 /*"Who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~~THEN REPLY @51 /*"So how *did* Tyche split into two?" */ DO~~ + g-bbD240.selune
IF~~THEN REPLY @52 /*"Why was the Sensates' discontent strange?" */ DO~~ + g-bbD240.sensate
IF~~THEN REPLY @53 /*"Are you a some powerful scryer, then?" */ DO~~ + g-bbD240.scryer
IF~~THEN REPLY @54 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @55 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.luckalt
@57 /*The woman sighs, slightly annoyed, as you keep obstructing her reading. "What about it?" */
END
IF~~THEN REPLY @59 /*"Can you remind me what happened a year ago?" */ DO~~ + g-bbD240.luckrecap
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @60 /*"Who is lady Erin?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @61 /*"Who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~~THEN REPLY @62 /*"So how *did* Tyche split into two?" */ DO~~ + g-bbD240.selune
IF~~THEN REPLY @63 /*"Why was the Sensates' discontent strange?" */ DO~~ + g-bbD240.sensate
IF~~THEN REPLY @64 /*"Are you a some powerful scryer, then?" */ DO~~ + g-bbD240.scryer
IF~~THEN REPLY @65 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @66 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.luckrecap
@68 /*"About a year ago, Lady Erin and her inner circle witnessed a strange occurrence through my scrying eyes. A foolish god from their pantheon tried to reform Tyche. Apparently, she had been his paramour eons ago. The plan failed, much to their strange discontent, but it sparked interest in how *exactly* Tyche split into two." */
END
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @70 /*"Who is Lady Erin?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @71 /*"Who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~~THEN REPLY @72 /*"So how *did* Tyche split into two?" */ DO~~ + g-bbD240.selune
IF~~THEN REPLY @73 /*"Why was the Sensates' discontent strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @74 /*"Are you a some powerful scryer, then?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @75 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @76 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.erin
@78 /*"Are you joking? Erin Darkflame Montgomery is one of the most recognizable people here in Sigil. She is the Factol and a great reformer of the Society of Sensation, as well as a brilliant diplomat who works for the benefit of all citizens." */
END
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @80 /*"Right, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~~THEN REPLY @81 /*"So how *did* Tyche split into two?" */ DO~~ + g-bbD240.selune
IF~~THEN REPLY @82 /*"Why was the Sensates' discontent about the failure of Tyche reforming strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @83 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @84 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @85 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.tyche
@87 /*"Tyche was an ancient Olympian goddess of fortune and misfortune. She was widely worshipped, and her faith spread across many spheres of the Prime Material Plane." */
END
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @89 /*"And who is Lady Erin?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @90 /*"So how *did* she split into two?" */ DO~~ + g-bbD240.selune
IF~~THEN REPLY @91 /*"Why was the Sensates' discontent about the failure of her reforming strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @92 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @93 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @94 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.selune
@96 /*She sighs and runs a hand through her hair. "It's not very clear. The sources tell conflicting stories. It's most likely that Tyche was afflicted with something malicious, and that the hostess of the Gates of the Moon, the goddess Selûne, mercy-killed her. But instead of vanishing, she split into the pure Tymora and the wicked Beshaba. Two new goddesses of fortune and misfortune, respectively." */
END
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @98 /*"Who is Selûne?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @99 /*"Who is Tymora?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @100 /*"Who is Beshaba?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @101 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @102 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @103 /*"So why was the Sensates' discontent about undoing that split strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @104 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @105 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @106 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.selune2
@108 /*"She's an ancient Power, too. Some say that she is also the result of a split from another entity, but that may just be rumors spread by other powers to diminish her. She is one of the *good* ones. To us planars, she is best known as the hostess of the Gates of the Moon in Ysgard, where the Infinite Staircase has its roots." */
END
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @110 /*"And who is Tymora?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @111 /*"And who is Beshaba?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @112 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @113 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @114 /*"So why was the Sensates' discontent about undoing that split strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @115 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @116 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @117 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.tymora
@119 /*"Tymora is a close ally of the Sensates. She is a goddess of good luck who resides in Brightwater, a divine city inhabited by a community of several excellent goddesses, in Arborea. There is also a Sensate stronghold nearby." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @120 /*"I've never had the chance to visit Brightwater myself, but I've heard that it's a very beautiful place." */
END
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @122 /*"And who is Selûne?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @123 /*"And who is Beshaba?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @124 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @125 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @126 /*"So why was the Sensates' discontent about undoing that split strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @127 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @128 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @129 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.beshaba
@131 /*"Beshaba is the other side of the coin from Tymora. She is a corrupted, malicious goddess of bad luck. She resides in the Abyss. She's a strange one..." The woman pauses, as if she has stumbled upon a fascinating tidbit of information that she is excited to share, for a change. She smiles and continues. "On some worlds, there's this wild custom to pray to her before every wedding, inviting her to attend. Since she is malicious, she never shows up when invited. Therefore, the prayer ensures that the newlyweds will suffer no misfortune. However, she still grows in power from all these prayers. It is a strangely efficient worship system..." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @132 /*"So, she's forcing her worshippers to pray to her to do *nothing at all*. She sounds brilliant." */
END
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @134 /*"And who is Selûne?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @135 /*"And who is Tymora?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @136 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @137 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @138 /*"So why was the Sensates' discontent about undoing that split strange?" */ DO~~ + g-bbD240.sensate
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @139 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @140 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @141 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.sensate
@143 /*"Ah." This question seems to trouble her slightly. "The Sensates were really excited to witness the rebirth of a goddess. It would have been a worthy experience. However, the fusion was interrupted and Tymora and Beshaba remained separate, so we were disappointed..." After a prolonged pause, she adds: "But also relieved, you know? Losing an ally would be bad enough, but fusing two goddesses against their will just didn't seem right." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @144 /*"I remember this. I wasn't there to witness the plot unravel, but I heard it was quite exciting nonetheless." */
END
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @146 /*"So, who is Selûne?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @147 /*"So, who is Tymora?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @148 /*"So, who is Beshaba?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @149 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @150 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~Global("g-ayrynscry","GLOBAL",0)~THEN REPLY @151 /*"So you spied on gods? Are you a powerful scryer?" */ DO~SetGlobal("g-ayrynscry","GLOBAL",1)~ + g-bbD240.scryer
IF~~THEN REPLY @152 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @153 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.scryer
@155 /*She lets out a short and exasperated laugh. "Yes. Yes I am. And no, I do *not* provide scrying services. Not even on a free day, and today is *not* one. I'm here for research." */
END
IF~~THEN REPLY @157 /*"But I'm looking for someone who's lost in the Hells. It would be of great service to me." */ DO~~ + g-bbD240.scry2
IF~Global("g-coingivenaway","GLOBAL",1)~THEN REPLY @158 /*"You owe me a favor for giving you the Coin of Fate, remember?" */ DO~~ + g-bbD240.scryhelp
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @159 /*"So, who is Selûne?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @160 /*"So, who is Tymora?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @161 /*"So, who is Beshaba?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @162 /*"Ah, so who was Tyche?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @163 /*"You mentioned Lady Erin before. Who is that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @164 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @165 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.scry2
@167 /*"Sorry. Even if I wanted to help, I would need the necessary infrastructure and time. Maybe you could find me in a week or so and *book* an appointment then. If so, perhaps I could scry for you in... a month or so?" */
END
IF~Global("g-knowselune","GLOBAL",0)~THEN REPLY @169 /*"Then forget it. You mentioned Selûne. Who's that?" */ DO~SetGlobal("g-knowselune","GLOBAL",1)~ + g-bbD240.selune2
IF~Global("g-knowtymora","GLOBAL",0)~THEN REPLY @170 /*"Then forget it. You mentioned Tymora. Who's that?" */ DO~SetGlobal("g-knowtymora","GLOBAL",1)~ + g-bbD240.tymora
IF~Global("g-knowbeshaba","GLOBAL",0)~THEN REPLY @171 /*"Then forget it. You mentioned Beshaba. Who's that?" */ DO~SetGlobal("g-knowbeshaba","GLOBAL",1)~ + g-bbD240.beshaba
IF~Global("g-knowtyche","GLOBAL",0)~THEN REPLY @172 /*"Then forget it. You mentioned Tyche. Who's that?" */ DO~SetGlobal("g-knowtyche","GLOBAL",1)~ + g-bbD240.tyche
IF~Global("g-knowdarkflame","GLOBAL",0)~THEN REPLY @173 /*"Then forget it. You mentioned Lady Erin before. Who's that?" */ DO~SetGlobal("g-knowdarkflame","GLOBAL",1)~ + g-bbD240.erin
IF~~THEN REPLY @174 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @175 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.who
@177 /*"My name is Ayryn Farlight, and I am a Sensate scrying expert. I am here to research this book, so if you have no urgent business, I would appreciate it if you would allow me to continue." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @178 /*"Greetings, sister." */
==g-bbd240 IF ~!InParty("Grace")~ THEN @179 /*"I..." she stutters. "I really don't mean to be rude, but I don't want to spend any more time than necessary in in this neighborhood." */
==g-bbd240 IF ~InParty("Grace")~ THEN @180 /*"Lady Grace! I did not see you there. Greetings to you too. I am so sorry, I really don't mean to be rude, but I don't want to spend any more time than necessary in in this neighborhood." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @181 /*"It's not the most pleasant place in the city, but it does offer some unique experiences, especially in the olfactory department of sensations." */
==g-bbd240 IF ~InParty("Grace")~ THEN @182 /*The woman laughs. "Quite right." */
END
IF~~THEN REPLY @184 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @185 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.rewho
@187 /*She lets out a deep sigh, and her blue skin darkens. "Remember when I told you I did not have time to talk? I definitely do not have the time to *reintroduce* myself. My name is Ayryn Farlight, and I am a Sensate scrying expert. Please, remember it this time." */
END
IF~~THEN REPLY @189 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @190 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.blue
@192 /*"Have you really traveled through this city and never met a genasi once? I'm an air genasi, we have blue skin. It's rather common." She sounds genuinely surprised by this question. */
END
IF~Global("g-knowgenasi","GLOBAL",0)~THEN REPLY @194 /*"What's a genasi?" */ DO~SetGlobal("g-knowgenasi","GLOBAL",1)~ + g-bbD240.blue2
IF~~THEN REPLY @195 /*"I have actually never met one, but I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @196 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.blue2
@198 /*"Ah, you are a clueless. You do not look like one, sorry. Genasi are people with partial ancestry from the Inner Planes. My grandmother, for example, came from the Elemental Plane of Air. It's similar to why tieflings have their horns or tails. We have blue skin and a perfect complexion." */
END
IF~~THEN REPLY @200 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @201 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.booka
@203 /*"If I were ... I would not *be* here anymore. I wouldn't be holding it in front of my eyes, looking at its contents, would I? And you would not be interrupting my trying to get to the bottom of this myth." */
END
IF~Global("g-knowtymorasluck","GLOBAL",0)~THEN REPLY @205 /*"What is this book about, anyway?" */ DO~~ + g-bbD240.book2
IF~Global("g-knowtymorasluck","GLOBAL",1)~THEN REPLY @206 /*"Actually, I have a few more questions about this 'Tyche' business." */ DO~~ + g-bbD240.luckalt
IF~~THEN REPLY @207 /*"I see. I have a few more questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @208 /*"I see. I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.quest
@210 /*"A visit to the libraries of Mephistar? That would be impressive, if true. I can't believe you'd ever make it back alive, but if you do and you've learned anything useful for us, the Society would definitely pay you handsomely. I will surely have finished this book by then, so just look for me at the Festhall." */
END
IF~~THEN REPLY @212 /*"Actually, I have a few more questions about this 'Tyche' business first." */ DO~SetGlobal("g-ayrynquest","GLOBAL",1)~ SOLVED_JOURNAL @20267 + g-bbD240.luckalt
IF~~THEN REPLY @213 /*"I will do what I can. I have a few more questions." */ DO~SetGlobal("g-ayrynquest","GLOBAL",1)~ SOLVED_JOURNAL @20267 + g-bbD240.q
IF~~THEN REPLY @214 /*"I will do what I can. I have to go." */ DO~SetGlobal("g-ayrynquest","GLOBAL",1)~ SOLVED_JOURNAL @20267 EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.coin
@216 /*Her bright eyes widen, and a broad smile spreads across her face. "Yes... and no. It is a symbol of Tymora as well as Beshaba, one of their precious artifacts. Coins like this are scattered throughout the planes, but it's always a pleasure to see one again." */
=@217 /*"We have one of them in the Society's collection, it doesn't contain any new information, but..." Ayryn holds her breath and looks deep into your eyes. "Would you be willing to sell it to me? It would be wonderful to have one of them, as it would be an *excellent* ingredient for powerful spells." */
END
IF~~THEN REPLY @219 /*"Wait a minute. If it's a powerful artifact, what can it be used for?" */ DO~SetGlobal("g-coinoffate","GLOBAL",2)~ + g-bbD240.coin2
IF~~THEN REPLY @220 /*"Sell it? How much are we talking about?" */ DO~~ + g-bbD240.coinsell
IF~~THEN REPLY @221 /*"If it's that useful to you, please take it for free." */ DO~IncrementGlobal("GOOD","GLOBAL",3) AddexperienceParty(100000) DestroyPartyItem("g-bbi099",1) SetGlobal("g-coingivenaway","GLOBAL",1)~ + g-bbD240.coingive
IF~~THEN REPLY @222 /*"I'd rather keep it then. But I have other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @223 /*"I'd rather keep it then. I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.coin2
@225 /*Ayryn flips through the pages of the book she is holding, looking for the right passage. "Ah, yes, chapter four," she says, stopping her finger on a page and beginning to read. */
=@226 /*"Coins of Fate, an inheritance of Tyche, are the embodied whispers of fortune and misfortune alike - and of that rare defiance by which one dares to seize destiny in their own hands. In vain does one seek in them any mundane or conventional use; yet in hours steeped in dread, in those trembling instants when the balance of something dear hangs by a thread, when a single choice must be made - one that shall weigh upon the fates of many - a toss of such a coin levels the field of existence itself. That which was all but impossible rises to stand equal with what once seemed certain beyond doubt. And does every outcome of such a casting please the heart? Assuredly not. Whether welcome or unwelcome, one truth remains unshaken: the result shall be utterly, *inexorably* unforeseeable." */
=@227 /*Ayryn looks up from the pages of her book. "It's a risky artifact. In battle, it might do more harm than good. It will serve me better in my research. Would you sell it to me?" */
END
IF~~THEN REPLY @229 /*"Sell it? How much are we talking about?" */ DO~~ + g-bbD240.coinsell
IF~~THEN REPLY @230 /*"If it's that useful to you, please take it for free." */ DO~IncrementGlobal("GOOD","GLOBAL",3) AddexperienceParty(100000) DestroyPartyItem("g-bbi099",1) SetGlobal("g-coingivenaway","GLOBAL",1)~ + g-bbD240.coingive
IF~~THEN REPLY @231 /*"I'd rather keep it then. But I have other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @232 /*"I'd rather keep it then. I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.coinsell
@234 /*"I do not have much money on me, since this is a peery neighborhood, but I can fetch something from my home vault that you can sell anywhere for a good price. A precious stone from the Upper Planes - an Empyrean Diamond. It's not cheap, and I have not used it as a spell focus in ages." */
END
IF~~THEN REPLY @236 /*"Sounds good. Let's trade." */ DO~DestroyPartyItem("g-bbi099",1)~ + g-bbD240.cointrade
IF~~THEN REPLY @237 /*"If it's that useful to you, please take it for free." */ DO~IncrementGlobal("GOOD","GLOBAL",3) AddexperienceParty(100000) DestroyPartyItem("g-bbi099",1) SetGlobal("g-coingivenaway","GLOBAL",1)~ + g-bbD240.coingive
IF~~THEN REPLY @238 /*"I'd rather keep it then. But I have other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @239 /*"I'd rather keep it then. I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.cointrade
@241 /*Ayryn takes the coin from you with a broad smile, twirling it between her fingers as if she cannot believe it is hers. Suddenly, like a street magician, she makes a deft hand movement and the coin vanishes, presumably into the aforementioned vault. Purple vapors swirl around her hand for a moment, and in the blink of an eye, a second similar gesture produces a large gem in her hand, shimmering with the colors of the rainbow. */
=@242 /*Her blue hand reaches toward yours, and the gem changes hands. It is light, lighter than you expected, but its lightness does not diminish the impression the stone makes. */
END
IF~~THEN REPLY @244 /*"Thanks. I have other questions." */ DO~GiveItemCreate("g-bbi129",Protagonist,1,1,0)~ + g-bbD240.q
IF~~THEN REPLY @245 /*"Thanks. I have to go now." */ DO~GiveItemCreate("g-bbi129",Protagonist,1,1,0)~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.coingive
@247 /*"Really!?" The genasi's mouth drops open in amazement. For a moment, not a sound escapes her lips as she takes in the news. "Thank you! That is truly a precious gift... I owe you one, stranger." */
END
IF~Global("g-ayrynscry","GLOBAL",1)~THEN REPLY @249 /*"Then maybe you can help me locate someone I am looking for in Mephistar?" */ DO~~ + g-bbD240.scryhelp
IF~~THEN REPLY @250 /*"I'll keep that in mind. But now, I have other questions." */ DO~GiveItemCreate("g-bbi129",Protagonist,1,1,0)~ + g-bbD240.q
IF~~THEN REPLY @251 /*"I'll keep that in mind. I have to go now." */ DO~GiveItemCreate("g-bbi129",Protagonist,1,1,0)~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.scryhelp
@253 /*Ayryn sighs. "Sure. That's the least I can do... What can you tell me about them?" */
END
IF~Global("g-BBerinKNOW","GLOBAL",1)~THEN REPLY @255 /*"She is an erinyes, Levistus's consort, last seen in Mephistar in Cania. She wears red armor." */ DO~~ + g-bbD240.meh
IF~!Global("g-BBerinKNOW","GLOBAL",1)~THEN REPLY @256 /*"She is pretty, last seen in Mephistar in Cania. She wears red armor." */ DO~~ + g-bbD240.nope
CHAIN IF~~THEN g-bbD240 g-bbD240.nope
@258 /*The woman gives you a stern look. "Is... this a joke? You don't know anything else? You have none of her belongings? I'd really like to help you, but this just isn't enough..." */
END
IF~~THEN REPLY @260 /*"Well... thanks for trying. I have some other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @261 /*"Well... thanks for trying. I have to go now." */ DO~~ EXIT
IF~GlobalLT("Good","GLOBAL",5)~THEN REPLY @262 /*"You're useless. I'm leaving." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbD240 g-bbD240.meh
@264 /*Ayryn sighs, as if that were not enough information, but a piece of blue steel materializes in her hand and she closes her eyes. Her body remains motionless for a dozen or so seconds, but you get the impression that her mind has drifted far away. */
=@265 /*After a long moment, the woman's eyes open, and for a split second, the library feels a little cooler. "There are many erinyes in Mephistar. Some of them wear red... But I do not sense any connection to Levistus in any of them, though that does not necessarily mean anything. Maybe her feelings for him are greatly exaggerated. I know..." The woman grows sad. "I know that was not much information, but you did not give me much either. I am sorry I could not do more." */
END
IF~~THEN REPLY @267 /*"Well... thanks for trying. I have some other questions." */ DO~~ + g-bbD240.q
IF~~THEN REPLY @268 /*"Well... thanks for trying. I have to go now." */ DO~~ EXIT
IF~GlobalLT("Good","GLOBAL",5)~THEN REPLY @269 /*"You're useless. I'm leaving." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT