BEGIN g-bbD019
CHAIN IF~NumTimesTalkedTo(0) !Global("G-ratalarm","GLOBAL",1)~THEN g-bbD019 g-bbD019.start1
@0 /*Before you stands a half-human, half-rat hybrid with greedy red eyes and a coat of the same blood-red hue. His posture suggests he is ready either to attack or to flee at the first sign of danger. He is far from his best condition. A portion of his tail is missing, and the remainder has turned charcoal black. */
=@1 /*"What are you doin' here, biped?" he asks, waving his faulty tail. "Did Orville let you in?" [g-01901] */
END
IF~GlobalLT("G-BBmain","GLOBAL",17) Global("RatWarren","GLOBAL",0)~THEN REPLY @3 /*"That he did. Who are you?" */ DO~SetGlobal("G-knowtail","GLOBAL",1)~ + g-bbD019.who
IF~GlobalLT("G-BBmain","GLOBAL",17) GlobalGT("RatWarren","GLOBAL",0)~THEN REPLY @4 /*"That he did. Who are you?" */ DO~~ + g-bbD019.ratkiller
IF~GlobalLT("G-BBmain","GLOBAL",17) Global("RatWarren","GLOBAL",0)~THEN REPLY @5 /*"That he did. Care to tell me what happened to your tail?" */ DO~~ + g-bbD019.frostbite
IF~GlobalLT("G-BBmain","GLOBAL",17) Global("RatWarren","GLOBAL",0)~THEN REPLY @6 /*"That he did. There are some big scary fiends looking for you out there." */ DO~~ + g-bbD019.yagnos
IF~GlobalLT("G-BBmain","GLOBAL",17) Global("RatWarren","GLOBAL",0)~THEN REPLY @7 /*"That he did. Do you have Wotyrxil's flute?" */ DO~~ + g-bbD019.flute
IF~GlobalLT("G-BBmain","GLOBAL",17) Global("RatWarren","GLOBAL",0)~THEN REPLY @8 /*"That he did. I hear all your friends are dead." */ DO~~ + g-bbD019.friends
IF~GlobalLT("G-BBmain","GLOBAL",17) GlobalGT("RatWarren","GLOBAL",0)~THEN REPLY @9 /*"That he did. Care to tell me what happened to your tail?" */ DO~~ + g-bbD019.ratkiller
IF~GlobalLT("G-BBmain","GLOBAL",17) GlobalGT("RatWarren","GLOBAL",0)~THEN REPLY @10 /*"That he did. There are some big scary fiends looking for you out there." */ DO~~ + g-bbD019.ratkiller
IF~GlobalLT("G-BBmain","GLOBAL",17) GlobalGT("RatWarren","GLOBAL",0)~THEN REPLY @11 /*"That he did. Do you have the marraenoloth's flute?" */ DO~~ + g-bbD019.ratkiller
IF~GlobalLT("G-BBmain","GLOBAL",17) GlobalGT("RatWarren","GLOBAL",0)~THEN REPLY @12 /*"That he did. I hear all your friends are dead." */ DO~~ + g-bbD019.ratkiller
CHAIN IF~~THEN g-bbD019 g-bbD019.start1alt
@14 /*"You soddin' barmy! Pike off! To the mazes with ye!" */
END
IF~~THEN REPLY @16 /*"I'll nick you good." Attack. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~Global("G-ratalarm","GLOBAL",1)~THEN g-bbD019 g-bbD019.start1alt2
@18 /*"Die, biped!" */
END
IF~~THEN REPLY @20 /*"I'll nick you good." Attack. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Global("G-ratalarm","GLOBAL",1)~THEN g-bbD019 g-bbD019.start2
@22 /*Fragile-Tail narrows his eyes, as though searching for some sign that you have changed. "Lemme guess, you got a few questions, biped?" [g-01907] */
END
IF~~THEN REPLY @24 /*"I got a few questions." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @25 /*"I've changed my mind. I'll kill you and find my answers on your dead body." */ DO~~ + g-bbD019.start1alt
IF~~THEN REPLY @26 /*"I'm just passing by." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.questions
@28 /*"Ask away then." */
END
IF~Global("G-rahomon-G","GLOBAL",1) Global("G-rahomon-Freso","GLOBAL",0) Global("G-rahomon-Wreso","GLOBAL",0)~THEN REPLY @30 /*"I learned that your fellows arrived on a boat along with Wotyrxil that night. What is all this really about?" */ DO~SetGlobal("G-rahomon-Freso","GLOBAL",1)~ + g-bbD019.rashomon
IF~Global("G-rahomon-G","GLOBAL",1) Global("G-rahomon-Freso","GLOBAL",0) Global("G-rahomon-Wreso","GLOBAL",1)~THEN REPLY @31 /*"I know the truth about your treachery and Callimarus." */ DO~SetGlobal("G-rahomon-Freso","GLOBAL",1)~ + g-bbD019.rashomonX
IF~Global("G-knowtail","GLOBAL",0)~THEN REPLY @32 /*"Who are you?" */ DO~SetGlobal("G-knowtail","GLOBAL",1)~ + g-bbD019.who
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @33 /*"Care to tell me what happened to your tail?" */ DO~~ + g-bbD019.frostbite
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @34 /*"There are some big scary fiends looking for you out there." */ DO~~ + g-bbD019.yagnos
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @35 /*"Do you have Wotyrxil's flute?" */ DO~~ + g-bbD019.flute
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @36 /*"I hear all your friends are dead." */ DO~~ + g-bbD019.friends
IF~GlobalGT("CR_Vic","GLOBAL",0) !GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @37 /*"Do you know Many-as-One?" */ DO~~ + g-bbD019.manyasone3
IF~Global("Know_Mantuok","GLOBAL",1) !Global("G-tailoffer","GLOBAL",2) !GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @38 /*"Do you know Mantuok?" */ DO~SetGlobal("G-tailcurses","GLOBAL",1)~ JOURNAL @6013 + g-bbD019.mantuok
IF~Global("G-tailcurses","GLOBAL",1) !Global("G-tailcurses1","GLOBAL",1) InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) !GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @39 /*"I've noticed you're well acquainted with both the cant and its insults. Would you care to teach Morte a phrase or two?" */ DO~~ + g-bbD019.curses
IF~PartyHasItem("Pestil") Global("G-tailoffer","GLOBAL",1) !Global("G-tailoffer","GLOBAL",2)~THEN REPLY @40 /*"I have the Grimoire of Pestilential Thought. Let's haggle." */ DO~~ + g-bbD019.pestil1
IF~NumInPartyGT(1) !GlobalLT("G-BBmain","GLOBAL",17) Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @41 /*"What do you think of my precious little party of misfits?" */ DO~~ + g-bbD019.companions
IF~Global("G-knowfence","GLOBAL",1) !InParty("Vhail") !CheckStatGT(Protagonist,15,WIS)~THEN REPLY @42 /*"I parked my ears, and from what I heard, you'll buy from just about anyone." */ DO~StartStore("g-bb#002", Protagonist)~ EXIT
IF~!InParty("Vhail") CheckStatGT(Protagonist,15,WIS)~THEN REPLY @43 /*"You have quite a few things on you. Are any of them for sale, perhaps?" */ DO~StartStore("g-bb#002", Protagonist) ~ EXIT
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) Global("G-knowfence","GLOBAL",1) !Class(Protagonist,Thief)~THEN REPLY @44 /*"I parked my ears, and from what I heard, you'll buy from just about anyone." */ DO~~ + g-bbD019.fencewary
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) Class(Protagonist,Thief)~THEN REPLY @45 /*"I've got a little something to trade." */ DO~~ + g-bbD019.fencewary
IF~~THEN REPLY @46 /*"Never mind. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.who
@48 /*"I used to be called Fat-Tail... but now they call me Fragile-Tail." He looks at his damaged appendage.  "You'll never guess why..." [g-01902] */
END
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @50 /*"How did it happen?" */ DO~~ + g-bbD019.frostbite
IF~CheckStatLT(Protagonist,11,INT) GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @51 /*"Erm... No... Tell me." */ DO~~ + g-bbD019.frostbite
IF~CheckStatGT(Protagonist,10,INT) Global("G-tailjoke","GLOBAL",0) GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @52 /*Joke: "Erm... No... Tell me." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-tailjoke","GLOBAL",1)~ + g-bbD019.frostbite
IF~!GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @53 /*"I've got other questions." */ DO~~ + g-bbD019.questions
IF~!GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @54 /*"You know what, never mind. I'll leave." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.manyasone3
@56 /*"Many-as-One is the voice of those who hide in the dark corners of buildings. They're always listenin'. They're always watchin'. And from the Warrens of Thought, they control everythin'." [g-01909] */
END
IF~Dead("Manya")~THEN REPLY @58 /*"Oh yeah, Many-as-One. Now it's more like Many-are-Gone. I killed them. At least a big part of them." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD019.start1alt
IF~Global("Know_Mantuok","GLOBAL",1) !Global("G-tailoffer","GLOBAL",2)~THEN REPLY @59 /*"Do you know Mantuok?" */ DO~SetGlobal("G-tailcurses","GLOBAL",1)~ JOURNAL @6013 + g-bbD019.mantuok
IF~~THEN REPLY @60 /*"Let's get back to my questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @61 /*"Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.mantuok
@63 /*"A double-dealer workin' for Lothar, whose skull collection he'll soon join at this rate.  The clueless idiot doesn't know that you should only trust Many-as-One. But he was always into dazzle, so no wonder he started followin' an important spellslinger. I bet he's already stolen somethin' valuable from him and won't let it go that easily. If only I could shake it and grab that myself..." */
END
IF~Dead("Mantuok")~THEN REPLY @65 /*"Well, that's precisely what happened to him. Mantuok's dead." */ DO~~ + g-bbD019.mantuok2
IF~PartyHasItem("Pestil")~THEN REPLY @66 /*"He had this book with him. Are you interested?" */ DO~SetGlobal("G-tailoffer","GLOBAL",1)~ + g-bbD019.pestil1
IF~GlobalGT("CR_Vic","GLOBAL",0)~THEN REPLY @67 /*"Do you know Many-as-One?" */ DO~~ + g-bbD019.manyasone3
IF~~THEN REPLY @68 /*"Let's get back to my questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @69 /*"Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.mantuok2
@71 /*Fragile-Tail brightens. "Do you happen to have the book he used to carry? There are many who would be interested in it..." */
END
IF~PartyHasItem("Pestil")~THEN REPLY @73 /*"Perhaps I do." */ DO~SetGlobal("G-tailoffer","GLOBAL",1)~ + g-bbD019.pestil1
IF~PartyHasItem("Pestil") Global("G-tailgrimlie","GLOBAL",0)~THEN REPLY @74 /*Lie: "No, I don't. Is it valuable?" */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-tailgrimlie","GLOBAL",1) SetGlobal("G-tailoffer","GLOBAL",1)~ + g-bbD019.pestil1
IF~!PartyHasItem("Pestil")~THEN REPLY @75 /*"No, I don't. Is it valuable?" */ DO~SetGlobal("G-tailoffer","GLOBAL",1)~ + g-bbD019.pestil5
IF~~THEN REPLY @76 /*"I don't want to talk about this right now. Gotta go." */ DO~SetGlobal("G-tailoffer","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil1
@78 /*"I will buy it from you for its original value. Three thousand copper coins." */
END
IF~CheckStatLT(Protagonist,16,WIS)~THEN REPLY @80 /*"Sounds fair. It's yours." */ DO~GiveGoldForce(3000)~ + g-bbD019.pestil2
IF~CheckStatGT(Protagonist,15,WIS)~THEN REPLY @81 /*"This book is worth more. Are you trying to cheat me?" */ DO~~ + g-bbD019.pestil3
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @82 /*"Come on, I'm sure you could throw in a little more." */ DO~~ + g-bbD019.pestil3
IF~CheckStatGT(Protagonist,16,STR) Global("G-tailthreat","GLOBAL",1)~THEN REPLY @83 /*"Offer more, or your name will be Finished-Tail starting now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.pestil3
IF~CheckStatLT(Protagonist,17,STR) Global("G-tailthreat","GLOBAL",1)~THEN REPLY @84 /*"Offer more, or your name will be Finished-Tail starting now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.start1alt
IF~CheckStatGT(Protagonist,18,DEX) Class(Protagonist,Thief)~THEN REPLY @86 /*Agree, but steal more jink from him while he is busy with the grimoire. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailtheft","GLOBAL",1) GiveGoldForce(5100)~ + g-bbD019.pestil4
IF~CheckStatLT(Protagonist,19,DEX) Class(Protagonist,Thief)~THEN REPLY @87 /*Agree, but steal more jink from him while he is busy with the grimoire. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailtheft","GLOBAL",1)~ + g-bbD019.start1alt
IF~~THEN REPLY @88 /*"We'll get back to this, but now I have to think this over. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil2
@90 /*"You won't regret it. It's jink well earned." [g-01906] */
END
IF~~THEN REPLY @92 /*"What do you want to do with the book now?" */ DO~SetGlobal("G-tailoffer","GLOBAL",2) AddexperienceParty(15000) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 + g-bbD019.pestil6
IF~GlobalLT("GOOD","GLOBAL",1)~THEN REPLY @93 /*You feel a sudden urge to attack the wererat and reclaim the book. "I've changed my mind. I'll get it back from your dead body." */ DO~IncrementGlobal("GOOD","GLOBAL",-3) AddexperienceParty(15000) SetGlobal("G-tailoffer","GLOBAL",2) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 + g-bbD019.start1alt
IF~~THEN REPLY @94 /*"Bye." */ DO~AddexperienceParty(15000) SetGlobal("G-tailoffer","GLOBAL",2) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil3
@96 /*"Alright! Four! Four thousand!" */
END
IF~CheckStatLT(Protagonist,18,WIS)~THEN REPLY @98 /*"Sounds fair. I'll take it." */ DO~GiveGoldForce(4000)~ + g-bbD019.pestil2
IF~CheckStatGT(Protagonist,17,WIS)~THEN REPLY @99 /*"This book is worth 5000." */ DO~~ + g-bbD019.pestil7
IF~CheckStatGT(Protagonist,17,STR) Global("G-tailthreat","GLOBAL",1)~THEN REPLY @100 /*"Offer more, or I'll personally sign your name in the dead-book." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.pestil7
IF~CheckStatLT(Protagonist,18,STR) Global("G-tailthreat","GLOBAL",1)~THEN REPLY @101 /*"Offer more, or I'll personally sign your name in the dead-book." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.start1alt
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @102 /*"Mathematically, something still doesn't add up..." */ DO~~ + g-bbD019.pestil7
IF~CheckStatGT(Protagonist,18,DEX) Class(Protagonist,Thief)~THEN REPLY @103 /*Agree, but steal more jink from him while he is busy with the grimoire. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailtheft","GLOBAL",1) GiveGoldForce(5600)~ + g-bbD019.pestil4
IF~CheckStatLT(Protagonist,19,DEX) Class(Protagonist,Thief)~THEN REPLY @104 /*Agree, but steal more jink from him while he is busy with the grimoire. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailtheft","GLOBAL",1)~ + g-bbD019.start1alt
IF~~THEN REPLY @105 /*"We'll get back to this, but now I have to think this over. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil4
@107 /*The theft was successful. And so, the cony-catcher, Fragile-Tail, becomes the cony. How does it feel? "You won't regret it. It's jink well earned." [g-01906] */
END
IF~~THEN REPLY @109 /*"What do you want to do with the book now?" */ DO~SetGlobal("G-tailoffer","GLOBAL",2) AddexperienceParty(15000) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 + g-bbD019.pestil6
IF~GlobalLT("GOOD","GLOBAL",1)~THEN REPLY @110 /*You feel a sudden urge to attack the wererat and reclaim the book. "I've changed my mind. I'll get it back from your dead body." */ DO~IncrementGlobal("GOOD","GLOBAL",-3) AddexperienceParty(15000) SetGlobal("G-tailoffer","GLOBAL",2) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 + g-bbD019.start1alt
IF~~THEN REPLY @111 /*"Bye." */ DO~AddexperienceParty(15000) SetGlobal("G-tailoffer","GLOBAL",2) TakePartyItemNum("Pestil",1)~ JOURNAL @6014 EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil5
@113 /*"If you bring the book to me, I'll give you three thousand coppers." He flashes a thick pouch. "That's more than most of these poor sods in the slums have seen in a year, if not in their entire lives." */
END
IF~~THEN REPLY @115 /*"Let's get back to my questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @116 /*"Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil6
@118 /*"Maybe I should read it myself. Since Mantuok's job is available, perhaps I should take an interest in it. The greybeard probably would not even notice if one wererat replaced another." */
END
IF~~THEN REPLY @120 /*"Let's get back to my questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @121 /*"Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.pestil7
@123 /*The wererat sighs and makes his final offer. You feel like you will not be able to get any more out of him. "Five. Thousand. Not a copper piece more." */
END
IF~~THEN REPLY @125 /*"Alright then." */ DO~AddexperienceParty(15000) SetGlobal("G-tailoffer","GLOBAL",2) GiveGoldForce(5000)~ + g-bbD019.pestil2
IF~~THEN REPLY @126 /*"I'll pass. Let's get back to my questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @127 /*"We'll get back to this, but now I have to think this over. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.curses
@129 /*"Go soak your bespawled bone-brain-box. I don't even know how to insult you, you blek-barrikin' bleedin' bodyless berk. You thought you'd get treated favorably cause yer missing arms and legs?" What at first seemed like a completely serious series of insults eventually turns into something of a lesson. "Sit here, you beautiful son of a bitch and park your ears. Pike me, you don't even have a sodding arse to sit on? What an addle-coved rube, what do you even expect to find in the City of Doors? The only door you should be thrown through is one of Lothar's, so you can serve as his doorstop while he's pikin' skulls with rotten teeth or whatever that soddin' codger likes to do after dark." Morte is listening carefully and does not even blink. "That good-for-nothing idea-pot of yours surely is all fingers and thumbs after all, I'll lann you that." The rat's tirade could surely last longer, but he must have decided it was time to conclude. "No more wigwaggin'. Gotta get back to work, eh?"  [MRT387] */
END
IF~~THEN REPLY @131 /*"New curses. Nice. Anyway, let's get back to my questions..." */ DO~IncrementGlobal("Morte_Taunt","GLOBAL",1) AddexperienceParty(5000) SetGlobal("G-tailcurses1","GLOBAL",1)~ JOURNAL @6015 + g-bbD019.questions
IF~~THEN REPLY @132 /*Stand there in silence and shock until he leaves. */ DO~IncrementGlobal("Morte_Taunt","GLOBAL",1) AddexperienceParty(5000) SetGlobal("G-tailcurses1","GLOBAL",1)~ JOURNAL @6015 EXIT
IF~~THEN REPLY @133 /*"Bye." */ DO~IncrementGlobal("Morte_Taunt","GLOBAL",1) AddexperienceParty(5000) SetGlobal("G-tailcurses1","GLOBAL",1)~ JOURNAL @6015 EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.frostbite
@135 /*The wererat clearly notices how much you care about the information. "I'll tell you, but it will cost 500 coppers." */
END
IF~PartyGoldGT(499)~THEN REPLY @137 /*"Sounds fair. I agree." */ DO~TakePartyGold(500)~ + g-bbD019.storyline
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @138 /*"I'll pay half of that." */ DO~~ + g-bbD019.buildings4
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @139 /*"That much? For so little information? I don't need it that much." */ DO~~ + g-bbD019.buildings4
IF~CheckStatGT(Protagonist,17,STR) Global("G-tailthreat","GLOBAL",0)~THEN REPLY @140 /*"Tell me, or you'll be known as Finished-Tail starting now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.buildings4
IF~CheckStatLT(Protagonist,18,STR) Global("G-tailthreat","GLOBAL",0)~THEN REPLY @141 /*"Tell me, or you'll be known as Finished-Tail starting now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.start1alt
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @142 /*Bluff: "This is not worth my time and money. I should leave." */ DO~SetGlobal("G-tailbluff","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD019.buildings4
CHAIN IF~~THEN g-bbD019 g-bbD019.buildings4
@145 /*"250! 250 copper coins! I'm startin' to lann the story right now!" */
END
IF~PartyGoldGT(249)~THEN REPLY @147 /*"Sounds fair. I agree." */ DO~TakePartyGold(250)~ + g-bbD019.storyline
IF~CheckStatGT(Protagonist,19,CHR) Global("G-knowtail","GLOBAL",1)~THEN REPLY @148 /*"You can trust me, Fat-Tail. I only have your best interests at heart." */ DO~AddexperienceParty(25000) SetGlobal("G-tailcharm","GLOBAL",2)~ + g-bbD019.storyline
IF~CheckStatGT(Protagonist,17,STR) Global("G-tailthreat","GLOBAL",0)~THEN REPLY @149 /*"I won't pay. But you'll tell me anyway, you sodding rat." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",2) AddexperienceParty(10000)~ + g-bbD019.storyline
IF~CheckStatLT(Protagonist,18,STR) Global("G-tailthreat","GLOBAL",0)~THEN REPLY @150 /*"I won't pay. But you'll tell me anyway, you sodding rat." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-tailthreat","GLOBAL",1)~ + g-bbD019.start1alt
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @151 /*Bluff: "This is not worth my time and money. I should leave." */ DO~SetGlobal("G-tailbluff","GLOBAL",2) AddexperienceParty(10000)~ + g-bbD019.storyline
CHAIN IF~~THEN g-bbD019 g-bbD019.companions
@154 /*"What do you mean?" */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @156 /*"What do you think of Morte?" */ DO~~ + g-bbD019.tailmort
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @157 /*"What do you think of Dak'kon?" */ DO~~ + g-bbD019.taildak
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @158 /*"What do you think of Annah?" */ DO~SetGlobal("G-knowfence","GLOBAL",1)~ + g-bbD019.tailann
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @159 /*"What do you think of Fall-from-Grace?" */ DO~~ + g-bbD019.tailgrac
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @160 /*"What do you think of Ignus?" */ DO~~ + g-bbD019.tailign
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @161 /*"What do you think of Vhailor?" */ DO~~ + g-bbD019.tailvha
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @162 /*"What do you think of Nordom?" */ DO~~ + g-bbD019.tailnor
IF~~THEN REPLY @163 /*"What do you think of me?" */ DO~~ + g-bbD019.tailnam
IF~~THEN REPLY @164 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @165 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailmort
@167 /*"He should check the Lower Ward. If he doesn't feel like explorin' the Ditch, he should find somethin' there that'll keep him entertained for a long time." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @168 /*"This journey is turning out better than I thought. Uh, you know, not that I had any doubts." [MRT007] */
END
IF~~THEN REPLY @170 /*"I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @171 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @172 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.taildak
@174 /*"A gith? Fine. Meat like any other meat, only an egg-bearin' one, like them slaadi." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @175 /*"You are not *known* to this one." [DAK047A] */
END
IF~~THEN REPLY @177 /*"I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @178 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @179 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailann
@181 /*Fragile-Tail stares at Annah. Their tails give them a similar posture. "Meat, have you found any deaders recently?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @182 /*It seems Annah knows the wererat. She does not show an ounce of sympathy though. "No deaders today 'cept walking ones, looks like. And how's the fencin' business going, eh?" [ANA007] */
==g-bbd019 @183 /*"Bar it! Bar it! I've seen some Mercykillers in the joint through the keyhole yesterday. Don't hip me!" [g-kneb] */
END
IF~Class(Protagonist,Thief) !InParty("Vhail")~THEN REPLY @185 /*"Actually, I've got a little something to trade." */ DO~StartStore("g-bb#002", Protagonist)~ EXIT
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) Global("G-knowfence","GLOBAL",1) !Class(Protagonist,Thief)~THEN REPLY @186 /*"Actually, I've got a little something to trade." */ DO~~ + g-bbD019.fencewary
IF~~THEN REPLY @187 /*"Interesting. I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @188 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @189 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailgrac
@191 /*"Hangin' out with fiends, eh? Do you wanna die? What's more, with some high-up lady? Don't expect too much credit in the Hive. Or maybe she can share some jink with us. Like it would make any difference to her." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @192 /*"Pardon me?" Fall-from-Grace spreads her wings. "I'll pretend I didn't hear that." [FFG333] */
END
IF~~THEN REPLY @194 /*"I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @195 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @196 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailign
@198 /*"Murderer. I've heard he burnt many of my brothers in the Alley of Dangerous Angles. You're hangin' out with a murderer." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @199 /**"What do you wish of Ignus?"* The spellslinger clearly doesn't understand. [IGN091] */
END
IF~~THEN REPLY @201 /*"I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @202 /*"What about adding fuel to the fire? He did very well. A bit of pest control never hurt anyone." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.ignuscrisis
IF~~THEN REPLY @203 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @204 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailvha
@206 /*The wererat freezes and prepares to flee. "It's a M-M-Mercykiller...!" */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @207 /**Justice awaits.* [VHA056] */
END
IF~~THEN REPLY @209 /*"That's right, Fragile-Tail. Today is the day you pay for all these thefts." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalLT("GOOD","GLOBAL",-14) Global("G-knowfence","GLOBAL",1)~THEN REPLY @210 /*Bluff: "That's what I want. No one will trade stolen goods in *my* area without *my* approval. From larvae smugglers to gleaming pips like you. Do you understand?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis2
IF~GlobalGT("GOOD","GLOBAL",14) Global("G-knowfence","GLOBAL",1)~THEN REPLY @211 /*"That's what I want. Please forgive me, but this is necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalGT("LAW","GLOBAL",14) Global("G-knowfence","GLOBAL",1)~THEN REPLY @212 /*"That's what I want. Hard law, but law." */ DO~IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalLT("LAW","GLOBAL",-14)~THEN REPLY @213 /*"That's what I want. Just my whim. Completely random." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.vhailcrisis
IF~~THEN REPLY @214 /*"Wait! He's with me. He won't hurt you. I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @215 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @216 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailnor
@218 /*"A box in the Hive? It stands out, doesn't it?" */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @219 /*"Negative. In Sigil, representatives of most known races can be found." [NOR314] */
END
IF~~THEN REPLY @221 /*"Great. I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @222 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @223 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.tailnam
@225 /*"Let's see. A livin' deader wanderin' back and forth, askin' about his diary and Pharod. Scars on his face, a damn book on his back. It was hard not to hear about you, berk." */
END
IF~~THEN REPLY @227 /*"I want to ask you about someone else." */ DO~~ + g-bbD019.companions
IF~~THEN REPLY @228 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @229 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.ignuscrisis
@231 /*"You soddin' barmy! Pike off! To the mazes with ye!" */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @232 /* *"Burrrnn!"* Ignus gets ready to attack. [IGN144A] */
==g-bbd019 @233 /*Fragile-Tail brandishes his dagger at Ignus. */
END
IF~~THEN REPLY @235 /*"I'll nick you good." Attack. */ DO~Enemy() Attack("Ignus") ForceAttack("Ignus",Myself) ForceAttack(Protagonist,Myself)~ EXIT
IF~~THEN REPLY @236 /*"Sort this out between yourselves." */ DO~Enemy() Attack("Ignus") ForceAttack("Ignus",Myself)~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.vhailcrisis
@238 /*"You soddin' barmy! Pike off! To the mazes with ye!" */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @239 /**You have broken your word! You are a liar! A traitor to truth! An enemy to all honest men!* [VHA023] */
==g-bbd019 @240 /*Fragile-Tail brandishes his dagger at Vhailor. */
END
IF~!InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @242 /*"I'll help you, Vhailor! We'll catch this lousy criminal!" */ DO~Enemy() ForceAttack("Vhail",Myself) ForceAttack(Protagonist,Myself)  IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("BD_VHAILOR_MORALE","GLOBAL",1)~ EXIT
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @243 /*"I'll help you, Vhailor! We'll catch this lousy criminal!" */ DO~IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("BD_VHAILOR_MORALE","GLOBAL",1)~ + g-bbD019.mortereact
IF~!InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @244 /*Observe. */ DO~Enemy() Attack("Vhail") ForceAttack("Vhail",Myself)~ EXIT
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @245 /*Observe. */ DO~~ + g-bbD019.mortereact
CHAIN IF~~THEN g-bbD019 g-bbD019.vhailcrisis2
@247 /*"You soddin' barmy! Pike off! To the mazes with ye!" */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @248 /*Vhailor looks from the wererat to you and back again. *You have broken your word! You are a liar! A traitor to truth! An enemy to all honest men!* [VHA023] */
END
IF~~THEN REPLY @250 /*Defend yourself. */ DO~ActionOverride("Vhail",ChangeAIScript("g-bbS002",DEFAULT)) ActionOverride("Vhail",LeaveParty()) Enemy() ActionOverride("g-bb019",Enemy()) ForceAttack("Vhail","g-bb019") ForceAttack("g-bb019","Vhail") ~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.mortereact
@252 /*The tension between your companions continues to build. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @253 /*"I'm not saying Vhailor's barmy, but his scales just don't balance." [MRT168] */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @254 /**You do not engender trust in me, skull.* [VHA256B] */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @255 /*"If things get any worse, I might as well go dip my pen in the Lady of Pain." [MRT553A] */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @256 /*Annah does not seem surprised by the situation. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @257 /*"Damned Mercykiller." Annah whispers as Vhailor sets off in pursuit of the criminal. [ANA330A] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @258 /*Fall-from-Grace looks back at you, then at Vhailor. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @259 /*"Hmph. Simple minds, simple pleasures." [FFG120] */
==g-bbd019 @260 /*Fragile-Tail brandishes his dagger. */
END
IF~!InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) !InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @262 /*Defend yourself. */ DO~Enemy() Attack("Vhail") ForceAttack("Vhail",Myself)~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.ratkiller
@264 /*"I've heard about you, cutter. Many-as-One told me about you... You've sent many of my comrades to the dead-book. Is this true?" */
END
IF~~THEN REPLY @266 /*Truth: "Yes. I'm sorry. It was necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.tailgood
IF~~THEN REPLY @267 /*Lie: "Yes. I'm sorry. It was necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.tailgood
IF~~THEN REPLY @268 /*Truth: "Yes. It was fun." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.start1alt
IF~~THEN REPLY @269 /*Lie: "Yes. It was fun." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.start1alt
IF~~THEN REPLY @270 /*Lie: "No. I did no such thing." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.taillie
IF~~THEN REPLY @271 /*"Wait. Before I answer... Who's Many-as-One?" */ DO~~ + g-bbD019.manyasone1
IF~CheckStatGT(Protagonist,12,WIS)~THEN REPLY @272 /*"Many-as-One... The collective consciousness of cranium rats?" */ DO~~ + g-bbD019.manyasone1
IF~GlobalGT("CR_Vic","GLOBAL",0)~THEN REPLY @273 /*"I talked to Many-as-One. I'm sure they'd advise you to listen to me." */ DO~~ + g-bbD019.manyasone2
IF~Dead("Manya")~THEN REPLY @274 /*"Ah yes, I did that to Many-as-One as well. They're more like Many-are-Gone now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD019.start1alt
CHAIN IF~~THEN g-bbD019 g-bbD019.tailgood
@276 /*"Well, at least you're sorry..." He falls silent, thinking it over. "I'm not sure I can trust you... yet." */
END
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @278 /*"I'm here on business. Care to tell me what happened to your tail?" */ DO~~ + g-bbD019.frostbite
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @279 /*"I'm here on business. There are some big scary fiends looking for you out there." */ DO~~ + g-bbD019.yagnos
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @280 /*"I'm here on business. Do you have the marraenoloth's flute?" */ DO~~ + g-bbD019.flute
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @281 /*"I'm here on business. I hear all your friends are dead." */ DO~~ + g-bbD019.friends
IF~~THEN REPLY @282 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @283 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.taillie
@285 /*"I'm not so sure. Many-as-One doesn't lie to us. You've *killed* before. It seems I have to watch out for you, berk." */
END
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @287 /*"I'm here on business. Care to tell me what happened to your tail?" */ DO~~ + g-bbD019.frostbite
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @288 /*"I'm here on business. There are some big, scary fiends looking for you out there, terrorizing the whole Ditch." */ DO~~ + g-bbD019.yagnos
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @289 /*"I'm here on business. Do you have the marraenoloth's flute?" */ DO~~ + g-bbD019.flute
IF~GlobalLT("G-BBmain","GLOBAL",17)~THEN REPLY @290 /*"I'm here on business. I hear all your friends are dead." */ DO~~ + g-bbD019.friends
IF~~THEN REPLY @291 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @292 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.manyasone1
@294 /*"Many-as-One is the voice of those who hide in the dark corners of buildings. They always listen. They're always watching. And from the Warrens of Thought, they control everything." [g-01909] */
END
IF~~THEN REPLY @296 /*Continue. */ DO~~ + g-bbD019.backto
CHAIN IF~~THEN g-bbD019 g-bbD019.manyasone2
@298 /*"So you know you're being observed. Don't lie then. Tell me the truth." */
END
IF~~THEN REPLY @300 /*Continue. */ DO~~ + g-bbD019.backto
CHAIN IF~~THEN g-bbD019 g-bbD019.backto
@302 /*"Tell me the truth. Have you been killin' my brothers?" */
END
IF~~THEN REPLY @304 /*Truth: "Yes. I'm sorry. It was necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.tailgood
IF~~THEN REPLY @305 /*Lie: "Yes. I'm sorry. It was necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.tailgood
IF~~THEN REPLY @306 /*Truth: "Yes. It was fun." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.start1alt
IF~~THEN REPLY @307 /*Lie: "Yes. It was fun." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.start1alt
IF~~THEN REPLY @308 /*Lie: "No. I did no such thing." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD019.taillie
CHAIN IF~~THEN g-bbD019 g-bbD019.fencewary
@310 /*The wererat panics and whispers nervously. "Not in front of a Mercykiller! See that leatherhead over there? If he sees I don't have a trading license, and that I sell tax-free goods whose origin is questionable, what do you think he'll do to me?" */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @311 /**Know the eye of the MERCYKILLERS watch you.*  [VHA102] */
END
IF~~THEN REPLY @313 /*"That's what I want. I'll take this as your admission of guilt. Today is the day you pay for all these thefts." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalLT("GOOD","GLOBAL",-14)~THEN REPLY @314 /*Bluff: "That's what I want. No one will trade stolen goods in *my* area without *my* approval. From larvae smugglers to gleaming pips like you. Do you understand?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis2
IF~GlobalGT("GOOD","GLOBAL",14)~THEN REPLY @315 /*"That's what I want. I'll take this as your admission of guilt. Please forgive me, but this is necessary." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalGT("LAW","GLOBAL",14)~THEN REPLY @316 /*"That's what I want.  I'll take this as your admission of guilt. Hard law, but law." */ DO~IncrementGlobal("LAW","GLOBAL",2)~ + g-bbD019.vhailcrisis
IF~GlobalLT("LAW","GLOBAL",-14)~THEN REPLY @317 /*"That's what I want. I'll take this as your admission of guilt. Just my whim. Completely random." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.vhailcrisis
IF~~THEN REPLY @318 /*"Wait! He's with me. He won't hurt you. But if we can't trade, well, never mind then." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @319 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @320 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.friends
@322 /*The wererat grows visibly agitated at the mention of his friends. "You don't know that! They're just not here!" */
END
IF~~THEN REPLY @324 /*"So where are they? What happened?" */ DO~~ + g-bbD019.frostbite
CHAIN IF~~THEN g-bbD019 g-bbD019.flute
@327 /*"I do not." Fragile-Tail laughs, then stops abruptly. "Actually, I don't even know what you're talkin' about." */
END
IF~~THEN REPLY @329 /*"I know you do. Where is it? What happened?" */ DO~~ + g-bbD019.frostbite
CHAIN IF~~THEN g-bbD019 g-bbD019.yagnos
@332 /*"What?! No. Impossible. Why would they be lookin' for me? I didn't do anythin'." [g-01903] */
END
IF~!InParty("Vhail")~THEN REPLY @334 /*"I know you stole from Wotyrxil, but I am only interested in your tail. What happened?" */ DO~~ + g-bbD019.frostbite
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @335 /*"I know you stole from Wotyrxil, but I am only interested in your tail. What happened?" */ DO~~ + g-bbD019.vhailsteal
IF~!CheckStatGT(Protagonist,15,STR) !CheckStatGT(Protagonist,15,CHR) !InParty("Vhail")~THEN REPLY @336 /*"I know you stole from Wotyrxil, and I will tell the yugoloths where you are unless you answer my questions." */ DO~~ + g-bbD019.skiphaggleF
IF~OR(2) CheckStatGT(Protagonist,15,STR) CheckStatGT(Protagonist,15,CHR) !InParty("Vhail")~THEN REPLY @337 /*"I know you stole from Wotyrxil, and I will tell the yugoloths where you are unless you answer my questions." */ DO~~ + g-bbD019.skiphaggle
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @338 /*"I know you stole from Wotyrxil, and I will tell the yugoloths where you are unless you answer my questions." */ DO~~ + g-bbD019.vhailsteal
CHAIN IF~~THEN g-bbD019 g-bbD019.skiphaggleF
@341 /*"You wouldn't dare. The locals would shred you to pieces." */
END
IF~~THEN REPLY @343 /*"You are right. I am only interested in your tail. What happened?" */ DO~~ + g-bbD019.frostbite
CHAIN IF~~THEN g-bbD019 g-bbD019.skiphaggle
@346 /*Fragile-Tail considers his situation for a moment. "Fine. I'll tell you." [g-01908] */
END
IF~~THEN REPLY @348 /*"Let's hear it." */ DO~~ + g-bbD019.storyline
CHAIN IF~~THEN g-bbD019 g-bbD019.vhailsteal
~~ ==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @350 /**Justice awaits.* [VHA056] */
==g-bbD019 @351 /*"Wait is this a--" */
END
IF~~THEN REPLY @353 /*Watch as Vhailor strikes at the wererat. */ DO~Enemy() Attack("Vhail") ForceAttack("Vhail",Myself)~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.storyline
@355 /*The wererat sighs deeply. */
==g-bbd019 IF~Global("G-tailbluff","GLOBAL",2)~THEN @356 /*"Fine. I guess it's better if the truth comes out, anyway." */
==g-bbd019 IF~Global("G-tailthreat","GLOBAL",2)~THEN @357 /*"Fine! It's not worth dying for! I'll tell you everythin'." */
==g-bbd019 IF~Global("G-tailcharm","GLOBAL",2)~THEN @358 /*"Well, if you put it that way... there is no harm in you knowin'..." */
==g-bbd019 @359 /*"I will start from the beginnin'. This was a couple o' cycles ago. Me and four of me mates: Coot, Ratilda, Whiskers, and Wormcharmer had been escortin' a derro fugitive to take a little skiff ride to the Lower Ward. And as we were closin' in on our 'port' under Zaddfum Trestle, we were assaulted by a drunk Wotyrxil." */
END
IF~Global("g-ftstoryQ1","GLOBAL",0)~THEN REPLY @361 /*"Wait, HE assaulted you?" */ DO~SetGlobal("g-ftstoryQ1","GLOBAL",1)~ + g-bbD019.slq1
IF~Global("g-ftstoryQ2","GLOBAL",0)~THEN REPLY @362 /*"A derro?" */ DO~SetGlobal("g-ftstoryQ2","GLOBAL",1)~ + g-bbD019.slq2
IF~Global("g-ftstoryQ3","GLOBAL",0)~THEN REPLY @363 /*"You smuggle people?" */ DO~SetGlobal("g-ftstoryQ3","GLOBAL",1)~ + g-bbD019.slq3
IF~~THEN REPLY @364 /*Wait for Fragile-Tail to continue. */ DO~~ + g-bbD019.sl2
CHAIN IF~~THEN g-bbD019 g-bbD019.slq1
@366 /*"Aye. We were just mindin' our business but apparently he had 'issues' with our boat." */
END
IF~~THEN REPLY @368 /*"So what happened?" */ DO~~ + g-bbD019.sl2
IF~Global("g-ftstoryQ2","GLOBAL",0)~THEN REPLY @369 /*"You mentioned a derro?" */ DO~SetGlobal("g-ftstoryQ2","GLOBAL",1)~ + g-bbD019.slq2
IF~Global("g-ftstoryQ3","GLOBAL",0)~THEN REPLY @370 /*"Boat in which... you smuggle people?" */ DO~SetGlobal("g-ftstoryQ3","GLOBAL",1)~ + g-bbD019.slq3
IF~~THEN REPLY @371 /*Wait for Fragile-Tail to continue. */ DO~~ + g-bbD019.sl2
CHAIN IF~~THEN g-bbD019 g-bbD019.slq2
@373 /*"Small, angry, not a lot of them around." */
END
IF~Global("g-ftstoryQ1","GLOBAL",0)~THEN REPLY @375 /*"So, Wotyrxil assaulted you? Not the other way around?" */ DO~SetGlobal("g-ftstoryQ1","GLOBAL",1)~ + g-bbD019.slq1
IF~~THEN REPLY @376 /*"So what happened?" */ DO~~ + g-bbD019.sl2
IF~Global("g-ftstoryQ3","GLOBAL",0)~THEN REPLY @377 /*"You smuggle a lot of people?" */ DO~SetGlobal("g-ftstoryQ3","GLOBAL",1)~ + g-bbD019.slq3
IF~~THEN REPLY @378 /*Wait for Fragile-Tail to continue. */ DO~~ + g-bbD019.sl2
CHAIN IF~~THEN g-bbD019 g-bbD019.slq3
@380 /*His rat snout curves slightly in what resembles a cheeky smile. "We help move people around if they need it. I think it's a noble profession." */
END
IF~Global("g-ftstoryQ1","GLOBAL",0)~THEN REPLY @382 /*"So, that yugoloth assaulted you? Not the other way around?" */ DO~SetGlobal("g-ftstoryQ1","GLOBAL",1)~ + g-bbD019.slq1
IF~Global("g-ftstoryQ2","GLOBAL",0)~THEN REPLY @383 /*"You mentioned a derro?" */ DO~SetGlobal("g-ftstoryQ2","GLOBAL",1)~ + g-bbD019.slq2
IF~~THEN REPLY @384 /*"So what happened?" */ DO~~ + g-bbD019.sl2
IF~~THEN REPLY @385 /*Wait for Fragile-Tail to continue. */ DO~~ + g-bbD019.sl2
CHAIN IF~~THEN g-bbD019 g-bbD019.sl2
@387 /*"We tried to de-escalate. But the pikin' fiend was completely peery." Fragile-Tail waves his thin hands in an exasperated fashion. "He started chantin' some kind of spell, so we started retreatin'. Poor derro did not act in time and got blasted to the Hells. We decided not to share his fate, so we bailed underwater and swam away." */
END
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @389 /*"So how did he lose his flute?" */ DO~SetGlobal("G-rahomon-F","GLOBAL",1) ~ + g-bbD019.sl2a
IF~!CheckStatGT(Protagonist,13,INT)~THEN REPLY @390 /*"What happened then?" */ DO~~ + g-bbD019.sl2ab
CHAIN IF~~THEN g-bbD019 g-bbD019.sl2a
@392 /*The wererat seems confused. "I don't know anythin' about any flute... Anyway, in about an hour, the coast was swarmin' with the large 'loths - the ones with one hand suspiciously larger than the other one. They were very aggressive, so we decided to camp out at some flooded kips 'till the dust settled." He saddens and pauses for a moment. */
=@393 /*"All five of us swam to the old flooded clock-tower. We heard the distant sound of another tower, announcin' anti-peak. As we were scramblin' into the tower..." */
=@394 /*"A blue light appeared. A ray of unbelievable cold poured out of it. I'm a fast cutter, so I turned around and dove under water. But my backside was blasted... When I swam up, I could barely feel my butt or my tail, and all my friends were gone. I have no idea who took them, but I wasn't gonna stay to find out. I risked crawlin' up the bank and sneakin' over... well... here. And I have been here since, tryin' to get warm."  [g-01904] */
END
IF~~THEN REPLY @396 /*"The old clock tower at midnight..." */ DO~SetGlobal("g-BBmain","GLOBAL",17) AddexperienceParty(10000) SetGlobal("G-awareportal","GLOBAL",1)~ + g-bbD019.sl3
CHAIN IF~~THEN g-bbD019 g-bbD019.sl2ab
@398 /*"In about an hour, the coast was swarmin' with the large 'loths - the ones with one hand suspiciously larger than the other one. They were very aggressive, so we decided to camp out at some flooded kips 'till the dust settled." He saddens and pauses for a moment. */
=@399 /*"All five of us swam to the old flooded clock-tower. We heard the distant sound of another tower, announcin' anti-peak. As we were scramblin' into the tower..." */
=@400 /*"A blue light appeared. A ray of unbelievable cold poured out of it. I'm a fast cutter, so I turned around and dove under water. But my backside was blasted... When I swam up, I could barely feel my butt or my tail, and all my friends were gone. I have no idea who took them, but I wasn't gonna stay to find out. I risked crawlin' up the bank and sneakin' over... well... here. And I have been here since, tryin' to get warm."  [g-01904] */
END
IF~~THEN REPLY @402 /*"The old clock tower at midnight..." */ DO~SetGlobal("g-BBmain","GLOBAL",17) AddexperienceParty(50000) SetGlobal("G-awareportal","GLOBAL",1)~ + g-bbD019.sl3
CHAIN IF~~THEN g-bbD019 g-bbD019.sl3
@404 /*"I wouldn't go there if I were you. It was some dark magic. Or maybe a white dragon." */
END
IF~~THEN REPLY @406 /*"It's actually just a portal. Something must have triggered it. It led your friends to Cania, the eighth layer of Baator." */ DO~~ JOURNAL @20023 + g-bbD019.explain
IF~GlobalGT("g-keyquest","GLOBAL",2)~THEN REPLY @407 /*"It's actually just a portal. You must have had a frost giant bone on you. It lead your friends to Cania, the eighth layer of Baator." */ DO~~ + g-bbD019.explain2
IF~~THEN REPLY @408 /*"I'll keep that in mind. I have other questions." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @409 /*"I'll keep that in mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.explain
@411 /*"A... soddin' portal? Then my comrades aren't dead-booked after all?" The rat's beady eyes glimmer with a bit of hope. */
END
IF~~THEN REPLY @413 /*Lie: "Perhaps not. Maybe I can find them." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("GGfindtailsfriends","GLOBAL",1)~ JOURNAL @10008 + g-bbD019.falsehope
IF~~THEN REPLY @414 /*Truth: "They most certainly froze to death almost instantly on the other side." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD019.brutal
CHAIN IF~~THEN g-bbD019 g-bbD019.explain2
@416 /*"A... soddin' portal? Ratilda stole a bone earring off a fat half-giant stuck in a boghouse some time ago. Then my comrades aren't dead-booked after all?" The rat's beady eyes glimmer with a bit of hope. */
END
IF~~THEN REPLY @418 /*Lie: "Perhaps not. Maybe I can find them." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("GGfindtailsfriends","GLOBAL",1) SetGlobal("G-ratildaearring","GLOBAL",1)~ JOURNAL @10008 + g-bbD019.falsehope
IF~~THEN REPLY @419 /*Truth: "They most certainly froze to death almost instantly on the other side." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-ratildaearring","GLOBAL",1)~ + g-bbD019.brutal
CHAIN IF~~THEN g-bbD019 g-bbD019.brutal
@421 /*"Oh..." Fragile-Tail seems to shrink in on himself as a wave of sadness washes over him. */
END
IF~~THEN REPLY @423 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @424 /*"I have to go now. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.falsehope
@426 /*"Oh. Good." Fragile-Tail seems to find some comfort in your promise. */
END
IF~~THEN REPLY @428 /*"I've got more questions..." */ DO~~ + g-bbD019.questions
IF~~THEN REPLY @429 /*"I have to go now. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.rashomon
@431 /*Fragile-Tail sighs and visibly shrinks, as if weighed down by shame. "We... did not... It's not like that..." */
END
IF~~THEN REPLY @433 /*"So, how is it like? Tell me." */ DO~~ + g-bbD019.rashomon2
CHAIN IF~~THEN g-bbD019 g-bbD019.rashomon2
@435 /*The wererat, even separated from the nearest living soul by a whole staircase and a door, lowers his voice to a raspy whisper. "We did not arrive with Wotyrxil, all right?! We would never make dealin's with that bastard. It was another marraenoloth, one by the name of Callimarus. But none of the other wererats can *know* this, right? Our god's relationship with the yugoloths of Khalas is strained at best, but specifically with marraenoloths it is *disastrous*." */
=@436 /*"Squerrik's realm lies on the banks of River Styx in Gehenna, and as the god of traps and trickery, he often causes disruption among Charon's people, to the point of almost waging war." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @437 /*"Charon is the chief of the marraenoloths, chief." */
==g-bbd019 @438 /*"The conflict goes so far that any wererat and any marraenoloth just hate each other by nature around the planes. But... this is Sigil, things are supposed to be different here! Callimarus and us helped each other out with quiet business dealings..." */
==g-bbd019 @439 /*"We stumbled into Wotyrxil on the banks and he confronted Callimarus. Wotyrxil is the more powerful one, so he obliterated our friend and we ran. And no, I do *not* know anythin' about a pikin' flute. My life is in *ruin* because of that berk!" */
END
IF~~THEN REPLY @441 /*"I'm sorry for... yet another loss, I guess." */ DO~AddexperienceParty(80000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD019.rashomon3
IF~~THEN REPLY @442 /*"Good. That is what you get for betraying your kind." */ DO~AddexperienceParty(80000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD019.rashomon3
CHAIN IF~~THEN g-bbD019 g-bbD019.rashomon3
@444 /*"You know the truth, now leave me be. There is no consolation for me." */
END
IF~~THEN REPLY @446 /*"Goodbye, Fragile-Tail." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD019 g-bbD019.rashomonX
@448 /*The wererat, even separated from the nearest living soul by a whole staircase and a door, lowers his voice to a raspy whisper. "We did not arrive with Wotyrxil, all right?! We would never make dealin's with that bastard. It was another marraenoloth, one by the name of Callimarus. But none of the other wererats can *know* this, right? Our god's relationship with the yugoloths of Khalas is strained at best, but specifically with marraenoloths it is *disastrous*." */
=@449 /*"Squerrik's realm lies on the banks of River Styx in Gehenna, and as the god of traps and trickery, he often causes disruption among Charon's people, to the point of almost waging war." */
==g-bbd019 @450 /*"The conflict goes so far that any wererat and any marraenoloth just hate each other by nature around the planes. But... this is Sigil, things are supposed to be different here! Callimarus and us helped each other out with quiet business dealings..." */
==g-bbd019 @451 /*"We stumbled into Wotyrxil on the banks and he confronted Callimarus. Wotyrxil is the more powerful one, so he obliterated our friend and we ran. And no, I do *not* know anythin' about a pikin' flute. My life is in *ruin* because of that berk!" */
END
IF~~THEN REPLY @453 /*"I'm sorry for... yet another loss, I guess." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD019.rashomon3
IF~~THEN REPLY @454 /*"Good. That is what you get for betraying your kind." */ DO~AddexperienceParty(30000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD019.rashomon3